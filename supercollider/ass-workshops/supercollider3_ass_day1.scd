/*
Zoltan: bass sound

SynthDef:
- src:
- filter:
- reverb:

Orsi: dinamikusan valtoztatni a parametereket
Endre: ezeket a parametereket MID-vel kontrollalni

Pattern:

*/

s.options.memSize_(8196 * 8);

s.reboot;

MIDIClient.init;

MIDIIn.connectAll;

(
SynthDef(\src01, {
    arg freq = 440, amp = 0.1, lpf = 100, out;
    var sig, sigd, sigr, env;

    sig = Pulse.ar(freq) + WhiteNoise.ar(0.5);

    sig = RLPF.ar(sig, lpf, 1.5);

    sigd = DelayC.ar(sig, 1) * 0.1;

    sigr = FreeVerb.ar(sig, 0.1, 0.2) * 0.1;

    sig = sig + sigd + sigr;

    env = Env.perc();

    env = EnvGen.kr(env, doneAction: 2);

    sig = sig * env * amp;

    Out.ar(out, sig!2);
}).add;
)

(
~p01 = [60, 62, 64, 67, 69];
~p02 = [60, 63, 66, 68, 74];
)

(
Pdef(\pattern01, Pbind(
    \instrument, \src01,
    \freq, Pseq(([~p01, ~p02] - 24).midicps, inf),
    \dur,  Pseq([1,    1/2, 1,   1,   1/2] / 4, inf),
    \amp,  Pseq([0.15, 0.1, 0.1, 0.1, 0.1], inf),
    \lpf,  Pseq([150,  100, 100, 100, 100], inf),
    \out, 0
).play;
)
)
