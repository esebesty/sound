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
            VarSaw.ar(freq: hz,     mul: amp),
            VarSaw.ar(freq: hz * 2, mul: amp / 2),
            VarSaw.ar(freq: hz * 4, mul: amp / 4)
        ]);

        sig = Splay.ar(sig);

        Out.ar(0, sig);
    }
).play;
)

{LFNoise0.kr(freq: 10)}.plot(1)

{SinOsc.kr(freq: LFNoise0.kr(freq: 2) * 4)}.plot(4)

{SinOsc.kr(freq: LFNoise0.kr(freq: 1)).range(0, 100)}.plot(4)

{VarLag.kr(LFNoise0.kr(5).range(0, 100), 1 / 5, warp: \sine)}.plot(4)









