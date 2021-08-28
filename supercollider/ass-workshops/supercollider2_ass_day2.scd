// SC connects to the MIDI functionality of your OS

MIDIClient.init;

// connect SC with the devices

// jelek fogadasahoz

MIDIIn.connectAll;

// list all available MIDI sources

MIDIClient.sources;

// sources
(
[
    MIDIEndPoint("IAC Driver", "Bus 1"), // index 0
    MIDIEndPoint("Akai LPK25 Wireless", "Akai LPK25 Wireless") // index 1
]
)

// egy specifikus eszkoz csatolasa
MIDIIn.connect(1)

MIDIdef; // inkabb ezt, hasonlit a SynthDef-re
MIDIFunc;


MIDIdef.noteOn();

MIDIdef.noteOff();

MIDIdef.cc(); // 128 ertek 0 - 127

MIDIdef.bend(); // 16384 ertek 0 - 16383


MIDIdef.noteOn(\midiontest, {"This is fantaASStik".postln;});

// szabaditsd fel a mididef-edet
MIDIdef(\midiontest).free;

// mindenkit felszabadit
MIDIdef.freeAll;

(
SynthDef(\test02, {
    arg out, amp;
}).add;
)


// MIDI note number
60.midicps;

440*(2**(1/12)).post // A#
440*(2**(2/12)).post // H
440*(2**(12/12)).post // egy oktavval feljebb


// fix sorrendu argumentumok
// velocity hangero
// note number hangmagassag
// channel

(
MIDIdef.noteOn(\mididata, {
    arg velocity, noteNumber, channel;

    [ velocity, noteNumber, channel ].postln;

});
)



(
MIDIdef.noteOn(\mididata, {
    arg vel, nn;

    [ vel, nn ].postln;

});
)

s.boot;
s.meter;

MIDIdef(\mididata).free;

{SinOsc.ar(440) * 0.05}.play;

(
MIDIdef.noteOn(\midisine01, {
    arg vel, nn;

    [vel, nn].postln;

    {SinOsc.ar(nn.midicps) * 0.05}.play;
});
)

s.plotTree;



(
MIDIdef.noteOn(\midisine02, {
    arg vel, nn;

    [vel, nn].postln;

    {
        var sig, env;

        sig = SinOsc.ar(nn.midicps) * 0.05;
        env = Env.perc();
        env = EnvGen.kr(
            envelope: env,
            doneAction: 2
        );

        sig = sig *  env;

    }.play;
});
)

(
SynthDef(\tone01, {
    arg freq = 440, amp = 0.2;
    var sig, env;

    sig = LFTri.ar(freq)!2; // sztereo jel
    env = Env.perc();
    env = EnvGen.kr(
        envelope: env,
        doneAction: 2
    );

    sig = sig * env * amp;

    Out.ar(0, sig);
}).add;
)

Synth(\tone01);

x = Synth(\tone01, [\freq, 666, \amp, 0.1]);

MIDIdef(\midisine02).free;

// ezt bele a MIDIdef.noteOn() -ba
Synth(\tone01);


//---------------------
MIDIdef.freeAll;

(
SynthDef(\tone01, {
    arg freq = 440, amp = 0.2, width = 0.5;
    var sig, env;

    sig = LFPulse.ar(
        freq: freq,
        width: width
    )!2; // sztereo jel
    env = Env.perc();
    env = EnvGen.kr(
        envelope: env,
        doneAction: 2
    );

    sig = sig * env * amp;

    Out.ar(0, sig);
}).add;
)

(
MIDIdef.noteOn(\miditone01, {
    arg vel, nn;

    [vel, nn].postln;

    Synth(\tone01, [
        \freq, nn.midicps,
        \width, 0.2,
        \amp, vel.linlin(0, 127, 0, 0.2)]);
});
)



(
SynthDef(\tone02, {
    arg freq = 440, amp = 0.2, gate = 0;
    var sig, env;

    sig = LFTri.ar(freq)!2; // sztereo jel
    env = Env.adsr();
    env = EnvGen.kr(
        envelope: env,
        gate: gate,
        doneAction: 2
    );

    sig = sig * env * amp;

    Out.ar(0, sig);
}).add;
)

x = Synth(\tone02);



(
MIDIdef.cc(\polyCC01, {
   arg value, ccnumber;

    [value, ccnumber].postln;

});
)

(
MIDIdef.cc(\polyCC02, {
    arg value, ccnumber;

    [value, ccnumber].postln;
}, ccNum: 0);
)





