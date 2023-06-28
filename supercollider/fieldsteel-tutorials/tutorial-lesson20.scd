s.boot;

s.meter;

x = {SoundIn.ar(0!2)}.play;

x.free;

(
x = {
    var sig, rmod;
    sig = SoundIn.ar(0!2);
    rmod = sig * SinOsc.ar(700);
    (sig + rmod) * 0.5;
}.play;
)

x.free;

(
x = {
    var sig, rmod;
    sig = In.ar(2!2);
    Out.ar(0, sig);
}.play;
)

(
SynthDef.new(\mic, {
	arg in=0, out=0, amp=1;
	var sig;
	sig = SoundIn.ar(in!2) * amp;
	Out.ar(out, sig);
}).add;
)

x = Synth(\mic)

(
SynthDef.new(\mic, {
	arg in=0, out=0, deltime=0.3, mix=(-0.5), amp=1;
	var sig, delay;
	sig = SoundIn.ar(in!2) * amp;
	delay = DelayL.ar(sig, 0.5, deltime);
	sig = XFade2.ar(sig, delay, mix);
	Out.ar(out, sig);
}).add;
)

x = Synth(\mic)

x.free;

(
SynthDef.new(\mic, {
	arg in=0, out=0, deltime=0.3, mix=(-0.5), decay=3, amp=1;
	var sig, delay;
	sig = SoundIn.ar(in!2) * amp;
	delay = CombL.ar(sig, 0.5, deltime, decay);
	sig = XFade2.ar(sig, delay, mix);
	Out.ar(out, sig);
}).add;
)

x = Synth(\mic)


(
SynthDef.new(\mic, {
	arg in=0, out=0, mix=(-0.5), decay=3, amp=1;
	var sig, delay;
	sig = SoundIn.ar(in!2) * amp;
	delay = CombL.ar(sig, 0.5, SinOsc.kr(0.3).exprange(0.1, 0.4), decay);
	sig = XFade2.ar(sig, delay, mix);
	Out.ar(out, sig);
}).add;
)

x = Synth(\mic)


(
SynthDef.new(\mic, {
	arg in=0, out=0, mix=(-0.5), decay=3, amp=1;
	var sig, delay;
	sig = SoundIn.ar(in!2) * amp;
	delay = CombL.ar(sig, 0.5, SinOsc.kr([0.32, 0.3]).exprange(0.1, 0.4), decay);
	sig = XFade2.ar(sig, delay, mix);
	Out.ar(out, sig);
}).add;
)

x = Synth(\mic)


(
SynthDef.new(\mic, {
	arg in=0, out=0, amp=1;
	var sig, delay;
	sig = SoundIn.ar(in!2) * amp;
	Out.ar(out, sig);
}).add;

SynthDef.new(\delay, {
	arg in=0, out=0, mix=(-0.5), decay=3, amp=1, delHz=0.5, delMin=0.1, delMax=0.4;
	var sig, delay;
	sig = In.ar(in, 2);
	delay = CombL.ar(
		sig,
		0.5,
		SinOsc.kr([delHz, delHz * 0.9]).exprange(delMin, delMax),
		decay
	);
	sig = XFade2.ar(sig, delay, mix) * amp;
	Out.ar(out, sig);
}).add;
)

~delBus = Bus.audio(s, 2);

(
~micGrp = Group.new;
~delGrp = Group.after(~micGrp);

~micSynth = Synth(\mic, [\in, 0, \out, ~delBus], ~micGrp);
~delSynth = Synth(\delay, [\in, ~delBus, \out, 0], ~delGrp);
)

s.freeAll;

(
~micGrp = Group.new;
~delGrp = Group.after(~micGrp);

~micSynthDirect = Synth(\mic, [\in, 0, \out, 0], ~micGrp);
~micSynthEffect = Synth(\mic, [\in, 0, \out, ~delBus], ~micGrp);
6.do({
	Synth(\delay, [
		\in, ~delBus,
		\out, 0,
		\mix, 1,
		\amp, 1/6,
		\delHz, exprand(0.02, 0.08),
		\delMin, exprand(0.05, 1),
		\delMax, exprand(0.101, 0.2),
		\decay, rrand(3.0, 6.0),
	], ~delGrp);
});
)

s.freeAll;
