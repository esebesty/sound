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
// SynthDef //







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





















// SynthDef //

SynthDef().add;

(
SynthDef(\src01, {
	arg freq = 440, amp = 0.1, out;
	var sig, env;

	sig = Pulse.ar(freq);

	env = Env.perc();
	env = EnvGen.kr(env, doneAction:2);

	sig = sig * env * amp;

	Out.ar(out,sig);
}).add;
)

// test SynthDef
Synth(\src01);

// test SynthDef w a Pattern

(
~p01 = [60, 62, 64, 67, 69]; // freq pattern
~p02 = [60, 63, 66, 68, 74]; // rhythm pattern
)

(
Pdef(\x, Pbind(
	\instrument, \src01,
	\freq, Pseq((~p01++~p02-24).midicps,inf),
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf),
	\amp, Pseq([0.2,0.1,0.1,0.1,0.1],inf),
	\out, 0
)).play;
)

















