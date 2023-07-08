s.boot;
s.scope;
FreqScope.new;

{SinOsc.ar(800 + SinOsc.ar(200, mul: 0)) * 0.2!2}.play;

{SinOsc.ar(800 + SinOsc.ar(200, mul: MouseY.kr(0, 400).poll)) * 0.2!2}.play;

{SinOsc.ar(800 + SinOsc.ar(MouseX.kr(200, 1200).poll, mul: MouseY.kr(0, 400))) * 0.2!2}.play;

{SinOsc.ar(MouseX.kr(800, 3000, 1).poll + SinOsc.ar(350, mul: 400)) * 0.2!2}.play;

{SinOsc.ar(500 + SinOsc.ar(100, mul: 400)) * 0.2!2}.play;

{SinOsc.ar(500 + SinOsc.ar(250, mul: 400)) * 0.2!2}.play;

{SinOsc.ar(500 + SinOsc.ar(2000, mul: 400)) * 0.2!2}.play;

(
SynthDef.new(\fm, {
	arg freq=500, mRatio=1, cRatio=1, modAmp=200, amp=0.2, atk=0.01, rel=1, pan=0;
	var car, mod, env;
	env = EnvGen.kr(Env.perc(atk, rel), doneAction:2);
	mod = SinOsc.ar(freq * mRatio, mul: modAmp);
	car = SinOsc.ar(freq * cRatio + mod) * env * amp;
	car = Pan2.ar(car, pan);
	Out.ar(0, car);
}).add;
)

Synth(\fm, [\freq, 66.midicps])

Synth(\fm, [\freq, 66.midicps, \cRatio, 3])

Synth(\fm, [\freq, 66.midicps, \cRatio, 8, \mRatio, 5])


(
SynthDef.new(\fm, {
	arg freq=500, mRatio=1, cRatio=1, index=1, amp=0.2, atk=0.01, rel=1, pan=0;
	var car, mod, env;
	env = EnvGen.kr(Env.perc(atk, rel), doneAction:2);
	mod = SinOsc.ar(freq * mRatio, mul: freq * mRatio * index);
	car = SinOsc.ar(freq * cRatio + mod) * env * amp;
	car = Pan2.ar(car, pan);
	Out.ar(0, car);
}).add;
)

Synth(\fm, [\freq, 66.midicps, \index, 4])

(
SynthDef.new(\fm, {
	arg freq=500, mRatio=1, cRatio=1, index=1, iScale=5,
	amp=0.2, atk=0.01, rel=3, cAtk=4, cRel=(-4),
	pan=0;
	var car, mod, env, iEnv;
	iEnv = EnvGen.kr(
		Env.new(
			[index, index * iScale, index],
			[atk, rel],
			[cAtk, cRel],
		)
	);
	env = EnvGen.kr(
		Env.perc(atk, rel, curve:[cAtk, cRel]),
		doneAction:2
	);
	mod = SinOsc.ar(freq * mRatio, mul: freq * mRatio * iEnv);
	car = SinOsc.ar(freq * cRatio + mod) * env * amp;
	car = Pan2.ar(car, pan);
	Out.ar(0, car);
}).add;
)

Synth(\fm, [\freq, 40.midicps, \rel, 2])

Synth(\fm, [\freq, 47.midicps, \rel, 1, \iScale, 10])

Synth(\fm, [\freq, 47.midicps, \rel, 1, \iScale, 10, \cRel, -8])

Synth(\fm, [\freq, 35.midicps, \rel, 4, \index, 20, \iScale, 0.05])

Synth(\fm, [\freq, 33.midicps, \rel, 4, \index, 20, \iScale, 0.05, \mRatio, 0.5])

{SinOsc.ar(500 + SinOsc.ar(4, mul: 4*10)) * 0.2!2}.play;

{SinOsc.ar(500, SinOsc.ar(4, mul: 10)) * 0.2!2}.play;

{PMOsc.ar(500, 4, 10) * 0.2!2}.play;

(
SynthDef.new(\fm, {
	arg freq=500, mRatio=1, cRatio=1, index=1, iScale=5,
	amp=0.2, atk=0.01, rel=3, cAtk=4, cRel=(-4),
	pan=0;
	var car, mod, env, iEnv, mod2;
	iEnv = EnvGen.kr(
		Env.new(
			[index, index * iScale, index],
			[atk, rel],
			[cAtk, cRel],
		)
	);
	env = EnvGen.kr(
		Env.perc(atk, rel, curve:[cAtk, cRel]),
		doneAction:2
	);
	mod2 = SinOsc.ar(freq/10, mul: freq/10 * iEnv);
	mod = SinOsc.ar(freq * mRatio + mod2, mul: freq * mRatio * iEnv);
	car = SinOsc.ar(freq * cRatio + mod) * env * amp;
	car = Pan2.ar(car, pan);
	Out.ar(0, car);
}).add;
)

Synth(\fm, [\rel, 3])


