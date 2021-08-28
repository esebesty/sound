{SinOsc.ar(440) * 0.01}.play;

(
SynthDef(
	name: "onesine01",
	ugenGraphFunc: {},
	rates: ,
	prependArgs: ,
	variants: ,
	metadata:
);
)




(
SynthDef(\tone03, {
	arg freq = 440, amp = 0.3, rls = 1;
	var sig, env, gate;

	gate = LFNoise1.ar(10);

	sig = LFTri.ar(freq)!2;
	env = Env.adsr(releaseTime: rls);
	env = EnvGen.kr(env,gate:gate);

	sig = sig * env * amp;

	Out.ar(0,sig);
}).add;
)

x = Synth(\tone03);
x.set(\rls, 0.7);