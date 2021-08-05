MIDIClient.init;

MIDIIn.connectAll;

MIDIClient.sources;

MIDIIn.connect(0);

MIDIdef.noteOn(\noteOnTest, {"key down".postln});

MIDIdef(\noteOnTest).disable;

MIDIdef(\noteOnTest).enable;

MIDIdef(\noteOnTest).free;

MIDIdef.freeAll;

MIDIdef.noteOn(\noteOnTest, {"key down".postln}).permanent_(true);

MIDIdef(\noteOnTest).permanent_(false);

(
MIDIdef.noteOn(\noteOnTest, {
    arg vel, nn, chan, src;
    [vel, nn, chan, src].postln;
});
)

(
MIDIdef.noteOn(\noteOnTest, {
    arg vel, nn, chan, src;
    [vel, nn].postln;
});
)

(
MIDIdef.noteOn(\noteOnTest, {
    arg vel, nn, chan, src;
    [vel, nn].postln;
    {
        var sig, env;
        sig = SinOsc.ar(nn.midicps)!2;
        env = EnvGen.kr(Env.perc, doneAction:2);
        sig = sig * env * vel.linexp(1, 127, 0.01, 0.3);
    }.play;
});
)

(
MIDIdef.noteOn(\noteOnTest, {
    arg vel, nn, chan, src;
    [vel, nn].postln;
    {
        var sig, env;
        sig = LFTri.ar(nn.midicps)!2;
        env = EnvGen.kr(Env.perc, doneAction:2);
        sig = sig * env * vel.linexp(1, 127, 0.01, 0.3);
    }.play;
});
)

(
SynthDef.new(\tone, {
    arg freq = 440, amp = 0.3;
    var sig, env;
    sig = LFTri.ar(freq)!2;
    env = EnvGen.kr(Env.perc, doneAction:2);
    sig = sig * env * amp;
    Out.ar(0, sig);
}).add;
)

Synth.new(\tone, [\freq, 700, \amp, 0.5]);

(
MIDIdef.noteOn(\noteOnTest, {
    arg vel, nn, chan, src;
    [vel, nn].postln;
    Synth.new(\tone, [\freq, nn.midicps, \amp, vel.linexp(1, 127, 0.01, 0.3)]);
});
)

(
SynthDef.new(\tone, {
    arg freq = 440, amp = 0.3, gate = 0;
    var sig, env;
    sig = LFTri.ar(freq)!2;
    env = EnvGen.kr(Env.adsr, gate, doneAction: 2);
    sig = sig * env * amp;
    Out.ar(0, sig);
}).add;
)

x = Synth.new(\tone, [\gate, 1]);
x.set(\gate, 0);

~notes = Array.newClear(128);

(
MIDIdef.noteOn(\noteOnTest, {
    arg vel, nn, chan, src;
    [vel, nn].postln;
    ~notes[nn] = Synth.new(
        \tone,
        [
            \freq, nn.midicps,
            \amp, vel.linexp(1, 127, 0.01, 0.3),
            \gate, 1,
        ]
    );
});

MIDIdef.noteOff(\noteOffTest, {
    arg vel, nn;
    [vel, nn].postln;
    ~notes[nn].set(\gate, 0);
    ~notes[nn] = nil;
});

MIDIdef.bend(\bendTest, {
    arg val, chan, src;
    [val, chan, src].postln;
}, chan: 0);

)

~bend = 8192;

(
SynthDef.new(\tone, {
    arg freq = 440, amp = 0.3, gate = 0, bend = 0;
    var sig, env;
    sig = LFTri.ar(freq * bend.midiratio)!2;
    env = EnvGen.kr(Env.adsr, gate, doneAction: 2);
    sig = sig * env * amp;
    Out.ar(0, sig);
}).add;
)

(
MIDIdef.noteOn(\noteOnTest, {
    arg vel, nn, chan, src;
    [vel, nn].postln;
    ~notes[nn] = Synth.new(
        \tone,
        [
            \freq, nn.midicps,
            \amp, vel.linexp(1, 127, 0.01, 0.3),
            \gate, 1,
            \bend, ~bend.linlin(0, 16383, -2, 2),
        ]
    );
});

MIDIdef.noteOff(\noteOffTest, {
    arg vel, nn;
    [vel, nn].postln;
    ~notes[nn].set(\gate, 0);
    ~notes[nn] = nil;
});

MIDIdef.bend(\bendTest, {
    arg val, chan, src;
    [val, chan, src].postln;
    ~bend = val;
    ~notes.do{arg synth; synth.set(\bend, val.linlin(0, 16383, -2, 2))};
}, chan: 0);

)
