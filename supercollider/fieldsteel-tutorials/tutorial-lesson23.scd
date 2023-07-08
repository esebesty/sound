s.boot;
s.scope;
FreqScope.new;

b = Buffer.alloc(s, 2048);

(
~sig = Signal.sineFill(1024, [1], [0]);
// ~sig.plot("signal");
~wt = ~sig.asWavetable;
// ~wt.collect({arg n; n}).plot("wavetable");
b.loadCollection(~wt);
)

~sig.size;
~wt.size;

b.plot;

{Osc.ar(b, MouseX.kr(100, 1000, 1), mul:0.2!2)}.play;

(
~sig = Signal.sineFill(
	1024,
	[1, 1/4, 1/6, 1/2],
	0!4
);
~wt = ~sig.asWavetable;
b.loadCollection(~wt);
)

b.plot;
~sig.plot;

{Osc.ar(b, MouseX.kr(100, 1000, 1), mul:0.2!2)}.play;


(
~amps = [1] ++ ({[0, exprand(0.05, 0.5)].choose}!31);
~sig = Signal.sineFill(
	1024,
	~amps,
	0!4
);
~wt = ~sig.asWavetable;
b.loadCollection(~wt);
)

{Osc.ar(b, MouseX.kr(100, 1000, 1), mul:0.2!2)}.play;

{SinOsc.ar(MouseX.kr(100, 1000, 1) * (1..32), 0, ~amps * 0.1).sum!2}.play;


b.sine3([1], [1], [0], asWavetable: true);

{Osc.ar(b, MouseX.kr(100, 1000, 1), mul:0.2!2)}.play;

b.sine3([1.25], [1], [0], asWavetable: true);

{Osc.ar(b, MouseX.kr(100, 1000, 1), mul:0.2!2)}.play;

{Osc.ar(b, MouseX.kr(100, 10000, 1), mul:0.2!2)}.play;


b.sine3([1, 50], [1, 1], [0, 0], asWavetable: true);

{Osc.ar(b, MouseX.kr(100, 10000, 1), mul:0.2!2)}.play;

(
b.sine3(
	({exprand(0.75, 40)}!16).sort,
	({exprand(0.05, 0.9)}!16).sort.reverse,
	{rrand(0, 2pi)}!16,
	asWavetable: true
);
)

{Osc.ar(b, MouseX.kr(100, 10000, 1), mul:0.2!2)}.play;

{Osc.ar(b, MouseX.kr(10, 10000, 1) * [1, 2.01], mul:0.2!2)}.play;


(
var env, sig, wt;
env = Env([0, 0.6, -0.9, 0.3, 0], [4, 3, 2, 1], \lin);
sig = env.asSignal(1024);
wt = sig.asWavetable;
b.loadCollection(wt);
)

b.plot;

{Osc.ar(b, MouseX.kr(10, 10000, 1) * [1, 2.01], mul:0.2!2)}.play;

(
var env, sig, wt;
env = Env([0, 0.6, -0.9, 0.3, 0], [4, 3, 2, 1], {rrand(-20, 20)}!4);
sig = env.asSignal(1024);
wt = sig.asWavetable;
b.loadCollection(wt);
)

{Osc.ar(b, MouseX.kr(10, 10000, 1) * [1, 2.01], mul:0.2!2)}.play;


(
var env, sig, wt, numSegs;
numSegs = rrand(4, 20);
env = Env(
	{rrand(-1.0, 1.0)}!(numSegs + 1),
	{exprand(1, 20)}!numSegs,
	{rrand(-20, 20)}!numSegs
);
sig = env.asSignal(1024);
wt = sig.asWavetable;
b.loadCollection(wt);
)

{Osc.ar(b, MouseX.kr(10, 10000, 1) * [1, 2.01], mul:0.2!2)}.play;


(
var env, sig, wt, numSegs;
numSegs = rrand(4, 20);
env = Env(
	(({rrand(0.0, 1.0)}!(numSegs+1)) * [1, -1]).scramble,
	{exprand(1, 20)}!numSegs,
	{rrand(-20, 20)}!numSegs
);
sig = env.asSignal(1024);
wt = sig.asWavetable;
b.loadCollection(wt);
)

{Osc.ar(b, MouseX.kr(10, 10000, 1) * [1, 2.01], mul:0.2!2)}.play;


(
var sig, wt;
sig = Signal.newClear(1024);
sig.waveFill({
	arg x, old, i;
	var out;
	out = sin(x.pow(1.5));
	out = out * 1.5;
	out = out.fold(-1, 1);
	out = out.cubed;
}, 0, 2pi);
wt = sig.asWavetable;
b.loadCollection(wt);
// sig.plot;
)

{Osc.ar(b, MouseX.kr(10, 10000, 1) * [1, 1.02], mul:0.2!2)}.play;
