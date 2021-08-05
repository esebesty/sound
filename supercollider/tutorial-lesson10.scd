(
SynthDef.new(\sine, {
    arg freq = 440, atk = 0.005, rel = 0.3, amp = 1, pan = 0;
    var sig, env;
    sig = SinOsc.ar(freq);
    env = EnvGen.kr(Env.new([0, 1, 0], [atk, rel], [-1, 1]), doneAction: 2);
    sig = Pan2.ar(sig, pan, amp);
    sig = sig * env;
    Out.ar(0, sig);
}).add;
)

Synth.new(\sine);

(
p = Pbind(
    \type, \note,
    \instrument, \sine
).play;
)

s.plotTree;

p.stop;

(
p = Pbind(
    \instrument, \sine,
    \dur, 0.1
).play;
)


(
p = Pbind(
    \instrument, \sine,
    \dur, Pseq([0.6, 0.15, 0.15], inf)
).play;
)

p.stop;

(
p = Pbind(
    \instrument, \sine,
    \dur, Pseq([0.6, 0.15, 0.15], inf).trace,
).play;
)

p.stop;

(
p = Pbind(
    \instrument, \sine,
    \dur, Pseq([0.6, 0.15, 0.15], inf).trace,
    \freq, Pseq([330, 247, 370, 220], inf).trace,
).play;
)

(
p = Pbind(
    \instrument, \sine,
    \dur, Pseq([0.6, 0.15, 0.15], 4).trace,
    \freq, Pseq([330, 247, 370], inf).trace,
).play;
)

(
p = Pbind(
    \instrument, \sine,
    \dur, Pseq([0.6, 0.15, 0.15], 4).trace,
    \midinote, Pseq([60, 65, 67, 74], inf).trace,
).play;
)

(
p = Pbind(
    \instrument, \sine,
    \dur, Pseq([0.6, 0.15, 0.15], inf),
    \freq, Pexprand(50, 4000, inf).trace,
).play;
)

p.stop;


(
p = Pbind(
    \instrment, \sine,
    \dur, Pwhite(0.05, 0.5, inf).trace,
    \freq, Pexprand(50, 4000, inf).trace,
).play;
)

p.stop;

(
p = Pbind(
    \instrument, \sine,
    \dur, Pwhite(0.05, 0.5, inf).trace,
    \freq, Pexprand(50, 4000, inf).trace,
    \atk, Pwhite(2.0, 3.0, inf),
    \rel, Pwhite(5.0, 10.0, inf),
    \amp, Pexprand(0.01, 0.2, inf),
    \pan, Pwhite(-0.8, 0.8, inf),
).play;
)

s.plotTree;

p.stop;

(
p = Pbind(
    \instrument, \sine,
    \dur, Pwhite(0.05, 0.5, inf),
    \freq, Pexprand(50, 4000, inf).round(55).trace,
    \atk, Pwhite(2.0, 3.0, inf),
    \rel, Pwhite(5.0, 10.0, inf),
    \amp, Pexprand(0.01, 0.2, inf),
    \pan, Pwhite(-0.8, 0.8, inf),
).play;
)

p.stop;


(
p = Pbind(
    \instrument, \sine,
    \dur, Pwhite(0.05, 0.5, inf),
    \midinote, 33,
    \harmonic, Pexprand(1, 80, inf).round.trace,
    \atk, Pwhite(2.0, 3.0, inf),
    \rel, Pwhite(5.0, 10.0, inf),
    \amp, Pexprand(0.01, 0.2, inf),
    \pan, Pwhite(-0.8, 0.8, inf),
).play;
)

p.stop;

(
p = Pbind(
    \instrument, \sine,
    \dur, Pwhite(0.05, 0.5, inf),
    \midinote, 33,
    \harmonic, Pexprand(1, 80, inf).round.trace,
    \atk, Pwhite(2.0, 3.0, inf),
    \rel, Pwhite(5.0, 10.0, inf),
    \amp, Pkey(\harmonic).reciprocal * 0.3,
    \pan, Pwhite(-0.8, 0.8, inf),
).play;
)

p.stop;

(
Pdef(
    \sinepat,
    Pbind(
        \instrument, \sine,
        \dur, Pwhite(0.05, 0.5, inf),
        \midinote, Pseq([29], inf),
        \harmonic, Pexprand(1, 20, inf).round,
        \atk, Pwhite(0.05, 0.1, inf).trace,
        \rel, Pwhite(0.1, 0.2, inf),
        \amp, Pkey(\harmonic).reciprocal * 0.3,
        \pan, Pwhite(-0.8, 0.8, inf),
    );
).play;
)

(
d = Dictionary.new;

d.add(\l ->
    PathName("/Users/esebesty/Work/repos/music/SuperCollider-Tutorials/audio/tutorial10_audio/low").entries.collect({
    arg sf;
    Buffer.read(s, sf.fullPath);
    });
);

d.add(\m ->
    PathName("/Users/esebesty/Work/repos/music/SuperCollider-Tutorials/audio/tutorial10_audio/mid").entries.collect({
    arg sf;
    Buffer.read(s, sf.fullPath);
    });
);

d.add(\h ->
    PathName("/Users/esebesty/Work/repos/music/SuperCollider-Tutorials/audio/tutorial10_audio/high").entries.collect({
    arg sf;
    Buffer.read(s, sf.fullPath);
    });
);
)

d[\l].choose.play;

d[\h].choose.play;

d[\m].choose.play;


(
SynthDef.new(\sine, {
    arg freq = 440, atk = 0.005, rel = 0.3, amp = 1, pan = 0;
    var sig, env;
    sig = SinOsc.ar(freq);
    env = EnvGen.kr(Env.new([0, 1, 0], [atk, rel], [-1, 1]), doneAction: 2);
    sig = Pan2.ar(sig, pan, amp);
    sig = sig * env;
    Out.ar(0, sig);
}).add;

SynthDef.new(\bufplay, {
    arg buf = 0, rate = 1, amp = 1;
    var sig;
    sig = PlayBuf.ar(2, buf, BufRateScale.ir(buf) * rate, doneAction: 2);
    sig = sig * amp;
    Out.ar(0, sig);
}).add;
)

Synth.new(\bufplay, [\buf, d[\m].choose.bufnum]);

(
Pdef(
    \rhythm,
    Pbind(
        \instrument, \bufplay,
        \dur, Pseq([0.12], inf),
        \buf, Prand(d[\l]++d[\m]++d[\h], inf),
        \rate, 1,
        \amp, 0.5,
    );
).play;
)

(
Pdef(
    \rhythm,
    Pbind(
        \instrument, \bufplay,
        \dur, Pseq([1/16], inf),
        \stretch, 60 / 128 * 4,
        \buf, Prand(d[\l]++d[\m]++d[\h], inf),
        \rate, 1,
        \amp, 0.5,
    );
).play;
)

(
Pdef(
    \rhythm,
    Pbind(
        \instrument, \bufplay,
        \dur, Pseq([1/16], inf),
        \stretch, 60 / 128 * 4,
        \buf, Pxrand(d[\l]++d[\m]++d[\h], inf),
        \rate, 1,
        \amp, 0.5,
    );
).play;
)

(
Pdef(
    \rhythm,
    Pbind(
        \instrument, \bufplay,
        \dur, Pseq([1/16], inf),
        \stretch, 60 / 128 * 4,
        \buf, Pwrand([d[\h][0], d[\m][0], d[\l][0]], [0.8, 0.15, 0.05], inf),
        \rate, 1,
        \amp, 0.5,
    );
).play;
)

(
Pdef(
    \rhythm,
    Pbind(
        \instrument, \bufplay,
        \dur, Pseq([1 / 16], inf),
        \stretch, 60 / 128 * 4,
        \buf, Pwrand([d[\h][0], d[\m][0], d[\l][0]], [8, 2, 1].normalizeSum.postln, inf),
        \rate, 1,
        \amp, 0.5,
    );
).play;
)

(
Pdef(
    \rhythm,
    Pbind(
        \instrument, \bufplay,
        \dur, Pseq([1 / 16], inf),
        \stretch, 60 / 128 * 4,
        \buf, Prand(d[\h]++d[\m]++d[\l], inf),
        \rate, 1,
        \amp, Pseq([0.8, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1], inf),
    );
).play;
)

(
Pdef(
    \rhythm,
    Pbind(
        \instrument, \bufplay,
        \dur, Pseq([1 / 16], inf),
        \stretch, 60 / 128 * 4,
        \buf, Prand(d[\h]++d[\m]++d[\l], inf),
        \rate, 1,
        \amp, Pseq([0.8]++(0.1!7), inf),
    );
).play;
)

(
Pdef(
    \rhythm,
    Pbind(
        \instrument, \bufplay,
        \dur, Pseq([1 / 16], inf),
        \stretch, 60 / 128 * 4,
        \buf, Prand(d[\h]++d[\m]++d[\l], inf),
        \rate, 1,
        \amp, Pseq([0.8, Pexprand(0.005, 0.2, 7)], inf),
    );
).play;
)

(
Pdef(
    \rhythm,
    Pbind(
        \instrument, \bufplay,
        \dur, Pseq([1 / 16], inf),
        \stretch, 60 / 128 * 4,
        \buf, Pseq(
            [
                Prand(d[\l], 1),
                Prand(d[\h]++d[\m]++d[\l], 7),
                Prand(d[\h], 1),
                Prand(d[\h]++d[\m]++d[\l], 7),
            ], inf
        ),
        \rate, Pexprand(0.8, 1.25, inf),
        \amp, Pseq([0.8, Pexprand(0.005, 0.2, 7)], inf),
    );
).play;
)

(
Pdef(
    \rhythm,
    Pbind(
        \instrument, \bufplay,
        \dur, Pseq([1 / 16], inf),
        \stretch, 60 / 128 * 4,
        \buf, Pseq(
            [
                Prand(d[\l], 1),
                Prand(d[\h]++d[\m]++d[\l], 7),
                Prand(d[\h], 1),
                Prand(d[\h]++d[\m]++d[\l], 7),
            ], inf
        ),
        \rate, Pexprand(2.0, 3.0, inf),
        \amp, Pseq([0.8, Pexprand(0.005, 0.2, 7)], inf),
    );
).quant_(1.875); // play(quant: 1.875)
)


(
Pdef(
    \sinepat,
    Pbind(
        \instrument, \sine,
        \dur, Pseq([1 / 16], inf),
        \stretch, 1.875,
        \note, Pxrand([0, 3, 5, 9, 10, 12], inf),
        \atk, 0.005,
        \rel, Pexprand(0.01, 0.5, inf),
        \amp, Pexprand(0.05, 0.5, inf),
        \pan, Pwhite(-0.8, 0.8, inf),
    );
).play(quant: 1.875)
)

(
Pdef(
    \rhythm,
    Pbind(
        \instrument, \bufplay,
        \dur, Pseq([1 / 16], inf),
        \stretch, 1.875,
        \buf, Pseq(
            [
                Prand(d[\l], 1),
                Prand(d[\h]++d[\m]++d[\l], 7),
                Prand(d[\h], 1),
                Prand(d[\h]++d[\m]++d[\l], 7),
            ], inf
        ),
        \rate, Pexprand(0.8, 1.25, inf),
        \amp, Pseq([0.8, Pexprand(0.005, 0.2, 7)], inf),
    );
).play(quant: 1.875)
)

Pdef(\rhythm).stop;
Pdef(\sinepat).stop;
