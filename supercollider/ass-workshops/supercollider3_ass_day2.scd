/*
Zoltan: bass sound

SynthDef:
- src:
- filter:
- reverb:

Orsi: dinamikusan valtoztatni a parametereket
Endre: ezeket a parametereket MID-vel kontrollalni

Pattern:

*/

s.options.memSize_(8196 * 8);

s.boot;

(
SynthDef(\src02, {
    arg freq = 440, amp = 0.05, out;
    var sig, env;

    sig = Pulse.ar(freq);
    env = Env.perc();
    env = EnvGen.kr(env, doneAction: 2);
    sig = sig * env * amp;

    Out.ar(out, sig);
}).add;

SynthDef(\lpf01, {
    arg in, lpf = 100, out;
    var sig;

    sig = In.ar(in, 1);
    sig = LPF.ar(in: sig, freq: lpf);

    Out.ar(out, sig);
}).add;
)

~srcBus = Bus.audio(s, 1);

(
~fxPattern01 = Pbind(
	\instrument, \lpf01,
	\in, ~srcBus,
	\out, 0);

~srcPattern01 = Pbind(
	\instrument, \src02,
	\out, ~srcBus)
)

Ppar([ ~fxPattern01, ~srcPattern01 ]).play;
