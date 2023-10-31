s.boot;

(
s.meter;
s.plotTree;
s.scope;
)

b = Buffer.readChannel(s, "/Users/esebesty/Library/CloudStorage/Dropbox/Documents/zene/00-recordings/edited/kocsog/kocsog.wav", channels: [0]);
b.play;

b.numChannels;

Signal.hanningWindow(1024).plot;

(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Dust.ar(MouseX.kr(1, 200, 1).poll),
		0.09,
		b.bufnum,
		1,
		0.2,
		2,
		0,
		-1,
		512
	);
}.play;
)

(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Impulse.ar(0.5),
		2,
		b.bufnum,
		1,
		0.2,
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.5;
}.play;
)

(
{
	var sig;
	sig = GrainBuf.ar(
		1,
		Impulse.ar([60, 60.5]),
		0.05,
		b.bufnum,
		1,
		0.25,
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.5;
}.play;
)

FreqScope.new;

(
{
	var sig;
	sig = GrainBuf.ar(
		1,
		Impulse.ar([60, 60.5]),
		MouseX.kr(0.0002, 0.1, 1).poll,
		b.bufnum,
		1,
		0.25,
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.5;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		1,
		Impulse.ar([60, 60.5]),
		LFNoise1.kr(0.3!2).exprange(0.002, 0.1),
		b.bufnum,
		1,
		0.25,
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.5;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		1,
		Impulse.ar({ExpRand(60, 60.5)}!12),
		LFNoise1.kr(0.3!12).exprange(0.002, 0.1),
		b.bufnum,
		1,
		0.25,
		2,
		0,
		-1,
		512
	);
	sig = Splay.ar(sig);
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		1,
		Dust.ar({ExpRand(60, 60.5)}!12),
		LFNoise1.kr(0.3!12).exprange(0.002, 0.1),
		b.bufnum,
		1,
		0.25,
		2,
		0,
		-1,
		512
	);
	sig = Splay.ar(sig);
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		1,
		Dust.ar(20!2),
		LFNoise1.kr(0.3!2).exprange(0.002, 0.1),
		b.bufnum,
		1,
		0.25,
		2,
		0,
		-1,
		512
	);
	sig = Splay.ar(sig);
}.play;
)

(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Dust.ar(50),
		0.01,
		b.bufnum,
		1,
		LFNoise1.ar(500).range(0,1),
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.5;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Impulse.ar(40),
		1/20,
		b.bufnum,
		1,
		(
			Line.ar(0, BufSamples.ir(b) - 1, BufDur.ir(b), doneAction: 2)
			+ LFNoise1.ar(100).bipolar(0.2 * SampleRate.ir)
		) / BufSamples.ir(b),
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.5;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Impulse.ar(40),
		1/20,
		b.bufnum,
		1,
		(
			Line.ar(0, BufSamples.ir(b) - 1, BufDur.ir(b) * 3, doneAction: 2)
			+ LFNoise1.ar(100).bipolar(0.01 * SampleRate.ir)
		) / BufSamples.ir(b),
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.5;
}.play;
)

(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Impulse.ar(40),
		1/20,
		b.bufnum,
		1,
		(
			Line.ar(BufSamples.ir(b) - 1, 0, BufDur.ir(b) * 3, doneAction: 2)
			+ LFNoise1.ar(100).bipolar(0.01 * SampleRate.ir)
		) / BufSamples.ir(b),
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.5;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Impulse.ar(40),
		1/20,
		b.bufnum,
		1,
		(
			LFSaw.ar(0.2 / BufDur.ir(b), 1).range(0, BufSamples.ir(b) - 1)
			+ LFNoise1.ar(100).bipolar(0.01 * SampleRate.ir)
		) / BufSamples.ir(b),
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.5;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Impulse.ar(40),
		1/20,
		b.bufnum,
		1,
		(
			Sweep.ar(Impulse.ar(1 / BufDur.ir(b)), 0.4 * BufRateScale.ir(b))
			* SampleRate.ir
			+ LFNoise1.ar(100).bipolar(0.01 * SampleRate.ir)
		) / BufSamples.ir(b),
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.5;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Impulse.ar(40),
		1/20,
		b.bufnum,
		1,
		(
			Phasor.ar(0, 1 * BufRateScale.ir(b), 0, BufSamples.ir(b) - 1)
			+ LFNoise1.ar(100).bipolar(0.01 * SampleRate.ir)
		) / BufSamples.ir(b),
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.5;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Impulse.ar(100),
		0.2,
		b.bufnum,
		-40.midiratio,
		(
			Phasor.ar(0, 1 * BufRateScale.ir(b), 0, BufSamples.ir(b) - 1)
			+ LFNoise1.ar(100).bipolar(0.01 * SampleRate.ir)
		) / BufSamples.ir(b),
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.4;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Impulse.ar(100),
		0.2,
		b.bufnum,
		MouseX.kr(0.98, 1.02).poll,
		(
			Phasor.ar(0, 1 * BufRateScale.ir(b), 0, BufSamples.ir(b) - 1)
			+ LFNoise1.ar(100).bipolar(0.0 * SampleRate.ir)
		) / BufSamples.ir(b),
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.4;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Dust.ar(100),
		0.2,
		b.bufnum,
		MouseX.kr(0.5, 2.1).poll,
		(
			Phasor.ar(0, 1 * BufRateScale.ir(b), 0, BufSamples.ir(b) - 1)
			+ LFNoise1.ar(100).bipolar(0.0 * SampleRate.ir)
		) / BufSamples.ir(b),
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.4;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Dust.ar(100),
		0.2,
		b.bufnum,
		MouseX.kr(0.5, 2.1).poll,
		(
			Phasor.ar(0, MouseY.kr(0.1, 2, 1) * BufRateScale.ir(b), 0, BufSamples.ir(b) - 1)
			+ LFNoise1.ar(100).bipolar(0.0 * SampleRate.ir)
		) / BufSamples.ir(b),
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.4;
}.play;
)

(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Dust.ar(400),
		0.1,
		b.bufnum,
		0.7,
		(
			Phasor.ar(0, 1 * BufRateScale.ir(b), 0, BufSamples.ir(b) - 1)
			+ LFNoise1.ar(100).bipolar(0.0 * SampleRate.ir)
		) / BufSamples.ir(b),
		4,
		0,
		-1,
		512
	);
	sig = sig * 0.4;
}.play;
)

(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Dust.ar(400),
		0.05,
		b.bufnum,
		1,
		(
			Phasor.ar(0, 1 * BufRateScale.ir(b), 0, BufSamples.ir(b) - 1)
			+ LFNoise1.ar(100).bipolar(0.0 * SampleRate.ir)
		) / BufSamples.ir(b),
		2,
		LFNoise1.kr(100).range(-1, 1),
		-1,
		512
	);
	sig = sig * 0.4;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Impulse.ar(1),
		0.75,
		b.bufnum,
		1,
		0.45,
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.4;
}.play;
)

(
e = Env.new([0, 1, 0], [0.01, 1], [0, -4]);
~grainEnv = Buffer.sendCollection(s, e.discretize(8192));
)


(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Impulse.ar(1),
		0.75,
		b.bufnum,
		1,
		0.45,
		2,
		0,
		~grainEnv,
		512
	);
	sig = sig * 0.4;
}.play;
)


(
{
	var sig;
	sig = GrainBuf.ar(
		2,
		Impulse.kr(MouseX.kr(1, 200, 1).poll),
		0.75,
		b.bufnum,
		1,
		0.45,
		2,
		0,
		-1,
		512
	);
	sig = sig * 0.4;
}.play;
)



(
SynthDef.new(\gs, {
	arg sync = 1, dens = 20, dur = 0.1, durRand = 1, buf = 0,
	rate = 1, pos = 0, posSpeed = 1, posRand = 0,
	grainEnv = (-1), pan = 0, panHz = 0.1, panRand = 0,
	atk = 1, sus = 2, rel = 1, c0 = 1, c1 = (-1), amp = 1, out = 0;

	var sig, env, densCtrl, durCtrl, posCtrl, panCtrl;

	env = EnvGen.ar(Env.new([0, 1, 1, 0], [atk, sus, rel], [c0, 0, c1]), doneAction: 2);

	densCtrl = Select.ar(sync, [Dust.ar(dens), Impulse.ar(dens)]);

	durCtrl = dur * LFNoise1.kr(100).exprange(1 / durRand, durRand);

	posCtrl = Phasor.ar(0, posSpeed * BufRateScale.ir(buf), 0, BufSamples.ir(buf) - 1);
	posCtrl = posCtrl + LFNoise1.kr(100).bipolar(posRand * SampleRate.ir);
	posCtrl = posCtrl / BufSamples.ir(buf);
	posCtrl = posCtrl + pos;

	panCtrl = pan + LFNoise1.kr(panHz).bipolar(panRand);

	sig = GrainBuf.ar(
		2,
		densCtrl,
		durCtrl,
		buf,
		rate,
		posCtrl,
		2,
		panCtrl,
		grainEnv
	);

	sig = sig * env * amp;

	Out.ar(out, sig);
}).add;
)

(
Synth.new(\gs, [
	\buf, b
]);
)

(
Synth.new(\gs, [
	\buf, b,
	\sync, 0,
	\dens, 400,
	\dur, 0.2,
	\posSpeed, 0.25,
	\pos, 0,
	\rate, -7.midiratio,
	\amp, 0.3,
	\sus, 5,
]);
)

// 49:45
