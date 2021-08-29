s.boot;
s.meter;
s.plotTree;
FreqScope.new;

/*
Zoltán: bass sound
SynthDef:
- src:
- filter:
- reverb


Orsi: dinamikusan változtatni a paramétereket
Endre: ezeket a paramétereket MIDI-vel kontrollálni
Pattern:
*/




// Pattern //
// -- SynthDef -- //
// src + env //
// src + env + LPF //







// Pattern //

(
Pbind().play;
)

(
Pbind(
	\midinote, Pseq([60, 62, 64, 67, 69],inf),
).play;
)


(
Pbind(
	\midinote, Pseq([60, 62, 64, 67, 69],inf),
	\dur, 0.25
).play;
)

(
Pbind(
	\freq, Pseq([60, 62, 64, 67, 69].midicps,inf),
	\dur, 0.25
).play;
)


(
Pbind(
	\midinote, Pseq([60, 62, 64, 67, 69],inf),
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf)
).play;
)


(
Pbind(
	\midinote, Pseq([60, 62, 64, 67, 69],inf),
	\dur, Pxrand([1,0.5,1,1,0.5]/4,inf)
).play;
)


(
Pbind(
	\midinote, Pxrand([60, 62, 64, 67, 69]-12,inf),
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf)
).play;
)


~p01 = [60, 62, 64, 67, 69]-12;

(
Pbind(
	\midinote, Pxrand(~p01,inf),
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf)
).play;
)




(
Pbind(
	\midinote, Pxrand(~p01,inf),
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf),
	\amp, Pseq([0.3,0.1,0.1,0.1,0.1],inf)
).play;
)

(
~p01 = [60, 62, 64, 67, 69]; // freq pattern
~p02 = [60, 63, 66, 68, 74]; // rhythm pattern
)

Pdef(\pattern01, Pbind()).play;

(
Pdef(\x, Pbind(
	\midinote, Pxrand(~p02,inf),
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf),
	\amp, Pseq([0.3,0.1,0.1,0.1,0.1],inf)
)).play;
)

(
Pdef(\x, Pbind(
	\midinote, Pseq(~p01++~p02-12,inf),
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf),
	\amp, Pseq([0.3,0.1,0.1,0.1,0.1],inf)
)).play;
)





















// -- SynthDef -- //

// src + env //

SynthDef().add;

// SynthDef
(
SynthDef(\src01, {
	arg freq = 440, amp = 0.1, out;
	var sig, env;

	// src
	sig = Pulse.ar(freq);

	// amplitude env
	env = Env.perc();
	env = EnvGen.kr(env, doneAction:2);

	sig = sig * env * amp;

	Out.ar(out,sig);
}).add;
)

// test SynthDef
Synth(\src01);

// test SynthDef w a Pattern

// patterns
(
~p01 = [60, 62, 64, 67, 69]; // freq pattern
~p02 = [60, 63, 66, 68, 74]; // rhythm pattern
)

// playback with Pbind
(
Pdef(\x, Pbind(
	\instrument, \src01,
	\freq, Pseq((~p01++~p02-24).midicps,inf),
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf),
	\amp, Pseq([0.2,0.1,0.1,0.1,0.1],inf),
	\out, 0
)).play;
)

















// src + env + LPF //

// SynthDef - Endre megoldása
(
SynthDef(\src01, {
	arg freq = 440, lpffreq = 440, amp = 0.1, out;
	var sig, env;

	// src
	sig = Pulse.ar(freq);

	// LPF
	sig = LPF.ar(
		in: sig,
		freq: lpffreq);

	// amplitude env
	env = Env.perc();
	env = EnvGen.kr(env, doneAction:2);

	sig = sig * env * amp;

	Out.ar(out,sig);
}).add;
)

(
~p01 = [60, 62, 64, 67, 69]; // freq pattern
~p02 = [60, 63, 66, 68, 74]; // rhythm pattern
~p03 = [50, 80, 120, 200, 400]; // LPF cutoff freq pattern
)

// playback with Pbind
(
Pdef(\x, Pbind(
	\instrument, \src01,
	\freq, Pseq((~p01++~p02-24).midicps,inf),
	\lpffreq, Pseq(~p03,inf),
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf),
	\amp, Pseq([0.2,0.1,0.1,0.1,0.1],inf),
	\out, 0)).play;
)


























// source külön és LPF külön

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
~srcBus;

(
Synth(\lpf01, [\in, ~srcBus, \out, 0]);
Synth(\src02, [\out, ~srcBus]);
)

(
~srcGrp = Group.new(addAction: \addToHead);
~fxGrp = Group.new(addAction: \addToTail);

Synth(\lpf01, [\in, ~srcBus, \out, 0],~fxGrp);
)

Synth(\src02, [\out, ~srcBus],~srcGrp);


(
~p01 = [60, 62, 64, 67, 69]; // freq pattern
~p02 = [60, 63, 66, 68, 74]; // rhythm pattern
~p03 = [50, 80, 120, 200, 4000]; // LPF cutoff freq pattern
)

(
~srcGrp = Group.new(addAction: \addToHead);
~fxGrp = Group.new(addAction: \addToTail);

TempoClock.default.tempo = 60/60;

Pdef(\srcp01, Pbind(
	\instrument, \src02,
	\freq, Pseq((~p01++~p02-24).midicps,inf),
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf),
	\amp, Pseq([0.2,0.1,0.1,0.1,0.1],inf),
	\group, ~srcGrp,
	\out, ~srcBus)
).play(quant:0.125);
)
(
Pdef(\fxp01, Pbind(
	\instrument, \lpf01,
	\in, ~srcBus,
	\lpffreq, Pseq(~p03,inf).trace,
	\dur, Pseq([1,1,1,1,0.5]/4,inf),
	\legato, Pseq([0.1,0.1,0.1,0.1]/4,inf),
	\group, ~fxGrp,
	\out, 0)
).play(quant:0.25);
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



(
TempoClock.default.tempo = 60/60;
~r01 = Routine({
~p01.play;
4.5.wait;
~p02.play;
}).play(quant:1);
)