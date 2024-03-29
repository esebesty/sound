s.boot;
s.scope;
FreqScope.new;

{SinOsc.ar(500 + SinOsc.ar(8, mul: 400)) * 0.2!2}.play;

{SinOsc.ar(500 + SinOsc.ar(MouseX.kr(1, 2000, 1).poll, mul: 400)) * 0.2!2}.play;

{SinOsc.ar(MouseY.kr(200, 5000, 1).poll + SinOsc.ar(MouseX.kr(1, 2000, 1).poll, mul: 400)) * 0.2!2}.play;

{SinOsc.ar(MouseY.kr(200, 5000, 1).poll + SinOsc.ar(MouseX.kr(1, 2000, 1).poll, mul: LFNoise0.kr(8).range(20, 10000))) * 0.2!2}.play;

(
SynthDef.new(\fm, {
	arg carHz=500, modHz=100, modAmp=200;
	var car, mod;
	mod = SinOsc.ar(modHz, mul: modAmp);
	car = SinOsc.ar(carHz + mod) * 0.2!2;
	Out.ar(0, car);
}).add;
)

Synth(\fm);

(
SynthDef.new(\fm, {
	arg carHz=500, modHz=100, modAmp=200, atk=0.01, rel=1, amp=0.2, pan=0;
	var car, mod, env;
	env = EnvGen.kr(Env.perc(atk, rel), doneAction:2);
	mod = SinOsc.ar(modHz, mul: modAmp);
	car = SinOsc.ar(carHz + mod) * env * amp;
	car = Pan2.ar(car, pan);
	Out.ar(0, car);
}).add;
)

Synth(\fm, [\pan, 0, \amp, 0.5, \carHz, 800, \modHz, 4000]);


(
p = Pbind(
	\instrument, \fm,
	\dur, 1/2,
	\carHz, Pexprand(20, 10000),
	\modHz, Pexprand(20, 10000),
	\modAmp, Pwhite(0, 10000),
	\amp, Pexprand(0.1, 0.5),
	\atk, Pexprand(0.01, 0.5),
	\rel, Pexprand(1, 10),
	\pan, Pwhite(-1.0, 1.0),
).play;
)

p.stop;
