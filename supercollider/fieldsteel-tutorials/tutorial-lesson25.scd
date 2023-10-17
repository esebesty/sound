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

// 16:40