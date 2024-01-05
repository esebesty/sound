ServerOptions.devices;

(
s.options.inDevice("MacBook Air Microphone");
s.options.outDevice("External Headphones");
s.boot;
s.meter;
)

(
x = {
	var sig;
	sig = SoundIn.ar(0!2);
	sig = sig + CombN.ar(sig, decaytime: 3, mul: 0.5);
}.play;
)

x.free;

(
x = {
	var sig;
	sig = SoundIn.ar(0!2);
	sig = GrainIn.ar(1, Dust.ar(20), 0.08, sig);
}.play;
)

(
x = {
	var sig;
	sig = SoundIn.ar(0!2);
	sig = sig * EnvGen.ar(Env.sine(0.08), Dust.ar(20));
}.play;
)

x.free;

b = Buffer.alloc(s, s.sampleRate * 5, 1);

(
~micBus = Bus.audio(s, 1);
~ptrBus = Bus.audio(s, 1);
)

(
SynthDef.new(\mic, {
	arg in = 0, out = 0, amp = 1;
	var sig;
	sig = SoundIn.ar(in) * amp;
	Out.ar(out, sig);
}).add;

SynthDef.new(\ptr, {
	arg out = 0, buf = 0, rate = 1;
	var sig;
	sig = Phasor.ar(0, BufRateScale.kr(buf) * rate, 0, BufFrames.kr(buf));
	Out.ar(out, sig);
}).add;

SynthDef.new(\rec, {
	arg ptrIn = 0, micIn = 0, buf = 0;
	var ptr, sig;
	ptr = In.ar(ptrIn, 1);
	sig = In.ar(micIn, 1);
	BufWr.ar(sig, buf, ptr);
}).add;

SynthDef.new(\gran, {
	arg amp = 0.5, buf = 0, out = 0,
	atk = 1, rel = 1, gate = 1,
	sync = 1, dens = 40,
	baseDur = 0.05, durRand = 1,
	rate = 1, rateRand = 1,
	pan = 0, panRand = 0,
	grainEnv = (-1), ptrBus = 0, ptrSampleDelay = 20000,
	ptrRandSamples = 5000, minPtrDelay = 1000;

	var sig, env, densCtrl, durCtrl, rateCtrl, panCtrl,
	ptr, ptrRand, totalDelay, maxGrainDur;

	env = EnvGen.kr(Env.asr(atk, 1, rel), gate, doneAction: 2);
	densCtrl = Select.ar(sync, [Dust.ar(dens), Impulse.ar(dens)]);
	durCtrl = baseDur * LFNoise1.ar(100).exprange(1 / durRand, durRand);
	rateCtrl = rate * LFNoise1.ar(100).exprange(1 / rateRand, rateRand);
	panCtrl = pan + LFNoise1.kr(100).bipolar(panRand);

	ptrRand = LFNoise1.ar(100).bipolar(ptrRandSamples);
	totalDelay = max(ptrSampleDelay - ptrRand, minPtrDelay);

	ptr = In.ar(ptrBus, 1);
	ptr = ptr - totalDelay;
	ptr = ptr / BufFrames.kr(buf);

	// maxGrainDur = (totalDelay / rateCtrl) / SampleRate.ir;
	// durCtrl = min(durCtrl, maxGrainDur);

	sig = GrainBuf.ar(
		2,
		densCtrl,
		durCtrl,
		buf,
		rateCtrl,
		ptr,
		2,
		panCtrl,
		grainEnv
	);

	sig = sig * env * amp;
	Out.ar(out, sig);
}).add;
)

s.plotTree;

(
~micGrp  = Group.new;
~ptrGrp  = Group.after(~micGrp);
~recGrp  = Group.after(~ptrGrp);
~granGrp = Group.after(~recGrp);
)

(
Synth(\mic, [\in, 0, \out, ~micBus], ~micGrp);
Synth(\ptr, [\buf, b, \out, ~ptrBus], ~ptrGrp);
Synth(\rec, [\ptrIn, ~ptrBus, \micIn, ~micBus, \buf, b], ~recGrp);
)

(
b.zero;
~g = Synth(\gran, [
	\amp, 0.5,
	\buf, b,
	\out, 0,
	\atk, 1,
	\rel, 1,
	\gate, 1,
	\sync, 1,
	\dens, 40,
	\baseDur, 0.05,
	\durRand, 1,
	\rate, 1,
	\rateRand, 2.midiratio,
	\pan, 0,
	\panRand, 0.5,
	\grainEnv, -1,
	\ptrBus, ~ptrBus,
	\ptrSampleDelay, s.sampleRate / 3,
	\ptrRandSamples, s.sampleRate / 6,
	\minPtrDelay, 1000,
], ~granGrp);
)

~g.set(\gate, 0);

b.zero;
b.plot;
b.play;

s.defaultGroup.deepFree;

(
b.zero;
~g = 5.collect({
	arg n;
	Synth(\gran, [
		\amp, n.linlin(0, 4, -3, -20).dbamp,
		\buf, b,
		\out, 0,
		\atk, 1,
		\rel, 1,
		\gate, 1,
		\sync, 1,
		\dens, exprand(20, 40),
		\baseDur, 0.08,
		\durRand, 1.5,
		\rate, 1,
		\rateRand, 2.midiratio,
		\pan, 0,
		\panRand, 0.5,
		\grainEnv, -1,
		\ptrBus, ~ptrBus,
		\ptrSampleDelay, n.linlin(0, 4, 20000, s.sampleRate * 2),
		\ptrRandSamples, 10000,
		\minPtrDelay, 1000,
	], ~granGrp);
});
)

~g.do({ arg n; n.set(\gate, 0) });

(
b.zero;
~g = Synth(\gran, [
	\amp, 0.5,
	\buf, b,
	\out, 0,
	\atk, 1,
	\rel, 1,
	\gate, 1,
	\sync, 0,
	\dens, 200,
	\baseDur, 0.1,
	\durRand, 1,
	\rate, 1,
	\rateRand, 1,
	\pan, 0,
	\panRand, 0.5,
	\grainEnv, -1,
	\ptrBus, ~ptrBus,
	\ptrSampleDelay, 10000,
	\ptrRandSamples, 2000,
	\minPtrDelay, 1000,
], ~granGrp);
)

~ptrGrp.set(\rate, 1);

s.defaultGroup.deepFree;

(
~g = Synth(\gran, [
	\amp, 0.5,
	\buf, b,
	\out, 0,
	\atk, 1,
	\rel, 1,
	\gate, 1,
	\sync, 0,
	\dens, 200,
	\baseDur, 0.1,
	\durRand, 1,
	\rate, 1.midiratio,
	\rateRand, 1,
	\pan, 0,
	\panRand, 0,
	\grainEnv, -1,
	\ptrBus, ~ptrBus,
	\ptrSampleDelay, 1,
	\ptrRandSamples, 0,
	\minPtrDelay, 0,
], ~granGrp);
)

(
b.zero;
~g = [-5, -3, 0, 2].collect({
	arg n;
	Synth(\gran, [
		\amp, 0.15,
		\buf, b,
		\out, 0,
		\atk, 1,
		\rel, 1,
		\gate, 1,
		\sync, 0,
		\dens, 200,
		\baseDur, 0.1,
		\durRand, 1,
		\rate, n.midiratio,
		\rateRand, 1,
		\pan, 0,
		\panRand, 0,
		\grainEnv, -1,
		\ptrBus, ~ptrBus,
		\ptrSampleDelay, 541,
		\ptrRandSamples, 0,
		\minPtrDelay, 0,
	], ~granGrp);
});
)
