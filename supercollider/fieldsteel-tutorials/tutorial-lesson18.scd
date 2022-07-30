MIDIClient.init;

MIDIClient.destinations;

// Mother 32 on channel 1
m = MIDIOut.new(1);

m.latency = 0;
m.noteOn(0, 60, 30);
m.noteOff(1, 60);

(
Routine({
    [35, 49, 56, 63, 66, 73].do{
        arg nn;
        m.noteOn(0, nn, 25);
        0.5.wait;
    };
}).play;
)

(
Routine({
    [35, 49, 56, 63, 66, 73].reverse.do{
        arg nn;
        m.noteOff(0, nn, 25);
        0.5.wait;
    };
}).play;
)

(
r = Routine({
    {
        [35, 49, 56, 63, 66, 73].do{
            arg nn;
            m.noteOn(0, nn, 25);
            0.1.wait;
            m.noteOff(0, nn, 25);
            0.2.wait;
        };
    }.loop;
}).play;
)

r.stop;

m.allNotesOff(0);

m.noteOn(0, rrand(30, 90), 30);

(0..127).do{arg n; m.noteOff(0, n)};

CmdPeriod.add({(0..127).do{arg n; m.noteOff(0, n)}})

CmdPeriod.add({(0..127).do{arg n; m.noteOff(1, n)}})

m.noteOn(0, rrand(30, 90), 30);

m.control(0, 20, 40);

m.noteOn(0, 40, 60);

m.control(0, 20, rrand(30, 100));

(
r = Routine({
    {
        var note;
        note = rrand(28, 40);
        m.noteOn(0, note, 60);
        (30, 40..100).scramble.do{
            arg val;
            m.control(0, 20, val.postln);
            0.15.wait;
        };
        m.noteOff(0, note);
    }.loop;
}).play;
)

(
r = Routine({
    {
        [30, 40, 30, 45].do{
            arg note;
            m.noteOn(0, note, 60);
            (30, 40..100).scramble.do{
                arg val;
                m.control(0, 20, val.postln);
                0.15.wait;
            };
            m.noteOff(0, note);
        };
    }.loop;
}).play;
)

r.stop;

Server.killAll;
s.boot;

(
SynthDef.new(\basic, {
    arg freq = 440;
    var sig;
    sig = SinOsc.ar(freq)!2;
    sig = sig * XLine.kr(0.2, 0.01, 0.3, doneAction: 2);
    Out.ar(0, sig);
}).add;
)

(
p = Pbind(
    \type, \note,
    \instrument, \basic,
    \dur, 0.15,
    \midinote, Pseq([50, 55, 57, 60, 67], inf),
).play;
)

p.stop;

(
Pdef(\ableton1, Pbind(
    \type, \midi,
    \midicmd, \noteOn,
    \midiout, m,
    \chan, 0,
    \midinote, Pwrand([62, 74, 86, 98], [0.1, 0.8, 0.08, 0.02], inf),
    \amp, Pexprand(5, 100, inf) / 127,
    \sustain, 0.02,
    \dur, 1 / 16,
    \stretch, 4 * 60 / 108
)).play.quant_(4 * 60 / 108);
)

(
Pdef(\ableton2, Pbind(
    \type, \midi,
    \midicmd, \noteOn,
    \midiout, m,
    \chan, 0,
    \midinote, Pxrand([
        [38, 50, 72, 77, 81],
        [43, 55, 70, 77, 79],
        [46, 58, 69, 74, 77, 84],
    ], inf),
    \amp, Pwhite(5, 10, inf),
    \sustain, Pexprand(4, 8, inf),
    \dur, Prand([4, 6, 8], inf),
    \stretch, 4 * 60 / 108
)).play.quant_(4 * 60 / 108);
)

~ableton1.stop;

m.noteOn(0, 58, 60);
m.noteOff(0, 58);

m.noteOn(1, 58, 60);
m.noteOff(1, 58);

Pdef(\ableton1).stop;
Pdef(\ableton2).stop;
