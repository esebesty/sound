
(
~wt0 = Signal.sineFill(
	1024,
	1/(1..8),
	0!8
).asWavetable;

~wt1 = Signal.sineFill(
	1024,
	[1, 0, 1/2, 1, 1/4],
	[0, 0, pi, 0, pi]
).asWavetable;
)

~wt0.plot; ~wt1.plot;

(
~b0 = Buffer.loadCollection(s, ~wt0);
~b1 = Buffer.loadCollection(s, ~wt1);
)

~b0.bufnum;
~b1.bufnum;

~b0.numFrames;
~b1.numFrames;

(
{
	var sig;
	sig = VOsc.ar(MouseX.kr(0, 1), 300, mul: 0.2!2);
}.play;
)

(
SynthDef.new(\vosc, {
	arg out = 0;
	var sig, bufpos;
	bufpos = MouseX.kr(0, 1);
	sig = VOsc.ar(bufpos, 300, mul: 0.2!2);
	Out.ar(out, sig);
}).add;
)

Synth(\vosc);

(
SynthDef.new(\vosc, {
	arg out = 0, buf = 0, numBufs = 2;
	var sig, bufpos;
	bufpos = buf + MouseX.kr(0, numBufs - 1);
	sig = VOsc.ar(bufpos, 300, mul: 0.2!2);
	Out.ar(out, sig);
}).add;
)

Synth(\vosc, [\buf, ~b0.bufnum, \numBufs, 2]);

(
~wt = Array.fill(4, {
	var numSegs = rrand(4, 20);
	Env(
		[0]++
		(({rrand(0.0, 1.0)}!(numSegs-1)) * [1, -1]).scramble
		++[0],
		{exprand(1, 20)}!numSegs,
		{rrand(-20, 20)}!numSegs
	).asSignal(1024).asWavetable;
});
)

~buf = Buffer.allocConsecutive(4, s, 2048);
~buf.class;
~buf[0];

(
~buf.do({
	arg buf, i;
	buf.loadCollection(~wt[i]);
});
)

~wt.do({arg n, i; n.plot(~buf[i].bufnum.asString)});

(
SynthDef.new(\vosc, {
	arg out = 0, buf = 0, numBufs = 2;
	var sig, bufpos;
	bufpos = buf + MouseX.kr(0, numBufs - 1);
	sig = VOsc.ar(bufpos.poll, 300, mul: 0.2!2);
	Out.ar(out, sig);
}).add;
)

Synth(\vosc, [\buf, ~buf[0].bufnum, \numBufs, 4]);

(
SynthDef.new(\vosc, {
	arg out = 0, buf = 0, numBufs = 2, freq = 300, amp = 0.2;
	var sig, bufpos, detuneSig;
	detuneSig = LFNoise1.kr(0.2!8).bipolar(0.2).midiratio;
	bufpos = buf + LFNoise1.kr(0.5).range(0, numBufs - 1);
	sig = VOsc.ar(bufpos.poll, freq * detuneSig);
	sig = Splay.ar(sig);
	sig = LeakDC.ar(sig) * amp;
	Out.ar(out, sig);
}).add;
)

Synth(\vosc, [\freq, 67.midicps, \buf, ~buf[0].bufnum, \numBufs, 4]);

s.freeAll;

(
// use with Shaper
~tf = Env([-0.8, 0, 0.8], [1, 1], [8, -8]).asSignal(1025);
~tf = ~tf.asWavetableNoWrap;
)

(
// use with VOsc, Osc, etc
~tf = Env([-0.8, 0, 0.8], [1, 1], [8, -8]).asSignal(1024);
~tf = ~tf.asWavetable;
)

~tf.size;

(
~tf = Env([-0.8, 0, 0.8], [1, 1], [8, -8]).asSignal(1025);
~tf = ~tf.asWavetableNoWrap;
~tBuf = Buffer.loadCollection(s, ~tf);
)

{Shaper.ar(~tBuf, SinOsc.ar(400)) * 0.2!2}.play;

(
~tf = Env([-1, 1], [1], [0]).asSignal(1025);
~tf = ~tf + (
	Signal.sineFill(
		1025,
		(0!3) ++ [0, 0, 0, 1, 1, 1].scramble,
		{rrand(0, 2pi)}!9
	) / 4;
);
~tf = ~tf.normalize;
//~tf.plot;
~tBuf.loadCollection(~tf.asWavetableNoWrap);
)

~tBuf.plot;

(
{
	var sig, input;
	input = SinOsc.ar(120);
	sig = Shaper.ar(~tBuf, input);
	sig = sig * 0.3!2;
}.play;
)

(
{
	var sig, input;
	input = SinOsc.ar(120) * Line.kr(0, 1, 7);
	sig = Shaper.ar(~tBuf, input);
	sig = sig * 0.3!2;
}.play;
)

(
{
	var sig, input;
	input = SinOsc.ar(120) * LFNoise1.kr(0.5).range(0.1, 1);
	sig = Shaper.ar(~tBuf, input);
	sig = sig * 0.3!2;
}.play;
)

(
{
	var sig, input;
	input = SinOsc.ar({120 * Rand(-0.1, 0.1).midiratio}!8);
	input = input * LFNoise1.kr(0.5!8).range(0.1, 1);
	sig = Shaper.ar(~tBuf, input);
	sig = Splay.ar(sig) * 0.3;
}.play;
)

(
{
	var sig, input;
	input = LFSaw.ar({120 * Rand(-0.1, 0.1).midiratio}!8);
	input = input * LFNoise1.kr(0.5!8).range(0.1, 1);
	sig = Shaper.ar(~tBuf, input);
	sig = Splay.ar(sig) * 0.3;
}.play;
)

(
~tf = Signal.newClear(1025).waveFill({
	arg x, old, i;
	sin(x)
}, -pi/2, pi/2);
~tf = ~tf.waveFill({
	arg x, old, i;
	old * ((cos(x * 0.08) / 4) + 0.3);
}, 0, 50pi).normalize;
~tf.plot;
~tBuf.loadCollection(~tf.asWavetableNoWrap);
)

(
{
	var sig, input;
	input = LFSaw.ar(250);
	sig = Shaper.ar(~tBuf, input);
	sig = sig * 0.3!2;
}.play;
)

(
{
	var sig, input;
	input = LFTri.ar(250);
	sig = Shaper.ar(~tBuf, input);
	sig = sig * 0.3!2;
}.play;
)

{LFTri.ar(250).lincurve(-1, 1, -1, 1, -2)}.plot(0.01);

(
{
	var sig, input;
	input = LFTri.ar(250).lincurve(-1, 1, -1, 1, -3);
	sig = Shaper.ar(~tBuf, input);
	sig = sig * 0.3!2;
}.play;
)

(
{
	var sig, input, curve;
	curve = LFNoise1.kr(0.5).bipolar(4);
	input = LFTri.ar(250).lincurve(-1, 1, -1, 1, curve);
	sig = Shaper.ar(~tBuf, input);
	sig = sig * 0.3!2;
}.play;
)

(
{
	var sig, input, curve;
	curve = LFNoise1.kr(0.5!8).bipolar(4);
	input = LFTri.ar({250 * Rand(-0.1, 0.1).midiratio}!8);
	input = input.lincurve(-1, 1, -1, 1, curve);
	sig = Shaper.ar(~tBuf, input);
	sig = Splay.ar(sig) * 0.3;
	sig = LeakDC.ar(sig);
}.play;
)


(
SynthDef.new(\shaper, {
	arg buf = 0, freq = 250, amp = 0.2, out = 0, atk = 1, sus = 0, rel = 5, curvemax = 1;
	var sig, input, curve, env;
	env = EnvGen.kr(
		Env.linen(atk, sus, rel, 1, [1, 0, -1]),
		doneAction: 2
	);
	curve = LFNoise1.kr(0.5!8).bipolar(curvemax);
	input = LFTri.ar({freq * Rand(-0.1, 0.1).midiratio}!8);
	input = input.lincurve(-1, 1, -1, 1, curve);
	sig = Shaper.ar(buf, input);
	sig = Splay.ar(sig) * amp * env;
	sig = LeakDC.ar(sig);
	Out.ar(out, sig);
}).add;
)

(
({rrand(40, 90)}!4).do({
	arg n;
	Synth(\shaper, [
		\buf, ~tBuf,
		\freq, n.nearestInScale([0, 7, 9, 10]).postln.midicps,
		\amp, n.lincurve(40, 90, 0.3, 0.1, -2),
		\curvemax, 0
	]);
});
)
