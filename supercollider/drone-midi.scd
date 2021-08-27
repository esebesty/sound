// https://schollz.com/blog/tone-to-drone/

s.boot;

(
x = SynthDef(\drone,
    {
        arg hz1 = 110, hz2 = 220, hz3 = 440, amp = 0.5, pmax = 0.2;
        var local, ampcheck, sig;

        // the oscillator part
        sig = Mix.ar(
            VarSaw.ar(
                freq: Lag.kr(hz1 * SinOsc.kr(LFNoise0.kr(1)).range(0.99, 1.01), 1),
                width: SinOsc.kr(LFNoise0.kr(1)).range(0.4, 0.6),
                mul: amp,
            ) +
            VarSaw.ar(
                freq: Lag.kr(hz2 * SinOsc.kr(LFNoise0.kr(1)).range(0.99, 1.01), 1),
                width: SinOsc.kr(LFNoise0.kr(1)).range(0.4, 0.6),
                mul: amp / 2,
            ) +
            VarSaw.ar(
                freq: Lag.kr(hz3 * SinOsc.kr(LFNoise0.kr(1)).range(0.99, 1.01), 1),
                width: SinOsc.kr(LFNoise0.kr(1)).range(0.4, 0.6),
                mul: amp / 4,
            )
        );

        // spread the signal
        sig = Splay.ar(sig);

        // pan
        sig = Balance2.ar(sig[0], sig[1], SinOsc.kr(LFNoise0.kr(0.1).range(0.05, 0.5)) * 0.1);

        // feedback directly taken from the docs
        // https://depts.washington.edu/dxscdoc/Help/Classes/LocalOut.html
        ampcheck = Amplitude.kr(sig);
        sig = sig * (ampcheck > 0.02); // noise gate
        local = LocalIn.ar(2);
        local = OnePole.ar(local, 0.4);
        local = OnePole.ar(local, -0.08);
        local = Rotate2.ar(local[0], local[1], 0.2);
        local = DelayN.ar(local, 0.3, VarLag.kr(LFNoise0.kr(0.1).range(0.15, 0.3), 1 / 0.1, warp: \sine));
        local = LeakDC.ar(local);
        sig = ((local + sig) * 1.25).softclip;

        // filter with drunken walk modulation
        sig = LPF.ar(sig, VarLag.kr(LFNoise0.kr(0.3).range(ArrayMin.kr([hz1, 80]), 16000), 1 / 0.3, warp: \sine));

        // feedback
        LocalOut.ar(sig * VarLag.kr(LFNoise0.kr(2).range(0.9, 1.2), 1 / 2, warp: \sine));

        // panning
        sig = Balance2.ar(sig[0] * 0.2, sig[1] * 0.2, SinOsc.kr(LFNoise0.kr(0.1).range(0.05, pmax)) * 0.1) * amp;

        // send it out
        Out.ar(0, sig);
    }).add;
)

x = Synth.new(\drone);

MIDIClient.init;

MIDIIn.connectAll;

(
MIDIdef.cc(\mididronecc1, {
	arg value, ccnumber;

    "Slider1".postln;
	value.postln;
	(110 * value.linlin(0, 127, 0, 12).midiratio).postln;

	x.set(\hz1, 110 * value.linlin(0, 127, 0, 12).midiratio);

}, ccNum: 2);

MIDIdef.cc(\mididronecc2, {
	arg value, ccnumber;

    "Slider2".postln;
	value.postln;
	(220 * value.linlin(0, 127, 0, 12).midiratio).postln;

	x.set(\hz2, 220 * value.linlin(0, 127, 0, 12).midiratio);

}, ccNum: 3);

MIDIdef.cc(\mididronecc3, {
	arg value, ccnumber;

    "Slider3".postln;
	value.postln;
    (440 * value.linlin(0, 127, 0, 12).midiratio).postln;

	x.set(\hz3, 440 * value.linlin(0, 127, 0, 12).midiratio);

}, ccNum: 4);

MIDIdef.cc(\mididronecc4, {
	arg value, ccnumber;

    "Knob1".postln;
	value.postln;
    value.linlin(0, 127, 0, 1).postln;

	x.set(\pmax, value.linlin(0, 127, 0, 1));

}, ccNum: 13);

)
