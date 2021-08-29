(
SynthDef(\src02, {
	arg freq = 440, lpffreq = 440, amp = 0.1, out;
	var sig, env;

	// src
	sig = Pulse.ar(freq);

	// amplitude env
	env = Env.perc();
	env = EnvGen.kr(env, doneAction:2);

	sig = sig * env * amp;

	Out.ar(out,sig);
}).add;

SynthDef(\lpf01, {
	arg in, lpffreq = 440, out;
	var sig, env;

	// in
	sig = In.ar(in,1);
	// LPF
	sig = LPF.ar(
		in: sig,
		freq: lpffreq);

	env = Env.perc;
	env = EnvGen.kr(env,doneAction:2);

	Out.ar(out,sig);
}).add;
)


~srcBus = Bus.audio(s,1);

(
~p01 = [60, 62, 64, 67, 69]; // freq pattern
~p02 = [60, 63, 66, 68, 74]; // rhythm pattern
~p03 = [50, 80, 120, 200, 4000]; // LPF cutoff freq pattern
)


(
~srcGrp = Group.new(addAction: \addToHead);
~fxGrp = Group.new(addAction: \addToTail);

~srcPattern01 = Pbind(
	\instrument, \src02,
	\freq, Pseq((~p01++~p02-24).midicps,inf),
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf),
	\amp, Pseq([0.2,0.1,0.1,0.1,0.1],inf),
	\group, ~srcGrp,
	\out, ~srcBus);

~fxPattern01 = Pbind(
	\instrument, \lpf01,
	\in, ~srcBus,
	\lpffreq, Pseq(~p03,inf).trace,
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf),
	\group, ~fxGrp,
	\out, 0)
)

Ppar([~srcPattern01, ~fxPattern01]).play;