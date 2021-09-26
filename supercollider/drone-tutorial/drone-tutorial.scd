// https://schollz.com/blog/tone-to-drone/

s.boot

(
x = SynthDef("basic",
    {
        arg hz = 131.81, amp = 0.2;
        var sig;

        sig = SinOsc.ar(freq: hz, mul: amp);

        sig = sig.dup;

        Out.ar(0, sig);
    }
).play;
)

(
x = SynthDef("basic_w_overtones",
    {
        arg hz = 131.81, amp = 0.2;
        var sig;

        // the drone zone!
        sig = Mix.ar([
            SinOsc.ar(freq: hz,     mul: amp),
            SinOsc.ar(freq: hz * 2, mul: amp / 2),
            SinOsc.ar(freq: hz * 4, mul: amp / 4)
        ]);

        sig = Splay.ar(sig);

        Out.ar(0, sig);
    }
).play;
)

(
x = SynthDef("basic_w_overtones_varsaw",
    {
        arg hz=131.81, amp=0.5;
        var sig;

        // the drone zone!
        sig = Mix.ar([
            VarSaw.ar(freq: hz,     mul: amp),
            VarSaw.ar(freq: hz * 2, mul: amp / 2),
            VarSaw.ar(freq: hz * 4, mul: amp / 4)
        ]);

        // spread the signal
        sig = Splay.ar(sig);

        // make sound!
        Out.ar(0, sig);
    }
).play;
)

{LFNoise0.kr(freq: 10)}.plot(1)

{SinOsc.kr(freq: LFNoise0.kr(freq: 2) * 4)}.plot(4)

{SinOsc.kr(freq: LFNoise0.kr(freq: 1)).range(0, 100)}.plot(4)

{VarLag.kr(LFNoise0.kr(3).range(0, 100), 1 / 3, warp: \sine)}.plot(4)

(
x = SynthDef("basic_w_overtones_varsaw_modulation",
    {
        arg hz = 131.81, amp = 0.5;
        var sig;

        // the drone zone!
        sig = Mix.ar(
            VarSaw.ar(
                freq: Lag.kr(hz * SinOsc.kr(LFNoise0.kr(1)).range(0.99, 1.01), 1),
                width: SinOsc.kr(LFNoise0.kr(1)).range(0.4, 0.6),
                mul: amp ,
            ) +
            VarSaw.ar(
                freq: Lag.kr(2 * hz * SinOsc.kr(LFNoise0.kr(1)).range(0.99, 1.01),1),
                width: SinOsc.kr(LFNoise0.kr(1)).range(0.4, 0.6),
                mul: amp / 2,
            ) +
            VarSaw.ar(
                freq: Lag.kr(4 * hz * SinOsc.kr(LFNoise0.kr(1)).range(0.99, 1.01), 1),
                width: SinOsc.kr(LFNoise0.kr(1)).range(0.4, 0.6),
                mul: amp / 4,
            )
        );

        // spread the signal
        sig = Splay.ar(sig);

        // pan
        sig = Balance2.ar(sig[0], sig[1], SinOsc.kr(LFNoise0.kr(0.1).range(0.05, 0.2)) * 0.1);

        // make sound!
        Out.ar(0, sig);
    }
).play;
)

(
x = SynthDef("dreamcrusher",
    {
        arg hz = 131.81, amp = 0.5;
        var local, ampcheck, sig;

        // the oscillator part
        sig = Mix.ar(
            VarSaw.ar(
                freq: Lag.kr(hz * SinOsc.kr(LFNoise0.kr(1)).range(0.99, 1.01), 1),
                width: SinOsc.kr(LFNoise0.kr(1)).range(0.4, 0.6),
                mul: amp,
            ) +
            VarSaw.ar(
                freq: Lag.kr(2 * hz * SinOsc.kr(LFNoise0.kr(1)).range(0.99, 1.01), 1),
                width: SinOsc.kr(LFNoise0.kr(1)).range(0.4, 0.6),
                mul: amp / 2,
            ) +
            VarSaw.ar(
                freq: Lag.kr(4 * hz * SinOsc.kr(LFNoise0.kr(1)).range(0.99, 1.01), 1),
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
        sig = LPF.ar(sig, VarLag.kr(LFNoise0.kr(0.3).range(ArrayMin.kr([hz, 80]), 16000), 1 / 0.3, warp: \sine));

        // feedback
        LocalOut.ar(sig * VarLag.kr(LFNoise0.kr(2).range(0.9, 1.2), 1 / 2, warp: \sine));

        // panning
        sig = Balance2.ar(sig[0] * 0.2, sig[1] * 0.2, SinOsc.kr(LFNoise0.kr(0.1).range(0.05, 0.2)) * 0.1) * amp;

        // send it out
        Out.ar(0, sig);
    }
).play;
)
