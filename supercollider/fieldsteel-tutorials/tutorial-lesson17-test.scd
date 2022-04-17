(
s.waitForBoot({
    ~win = Window.new.front;
    SynthDef(\synctest0004, {
        var sig;
        sig = {SinOsc.ar(ExpRand(300, 3000), 0, 0.02)}!100;
        sig = sig.sum;
        sig = sig * EnvGen.kr(Env([0, 1, 0], [2, 2], [1, -1]), doneAction:2);
        Out.ar(0, sig!2);
    }).add;

    s.sync;

    Synth(\synctest0004);
});
)

(
Routine({
    "foo".postln;
    2.wait;
    "bar".postln;
}).play;
)

(
Routine({
    ~win = Window.new.front;
    {SinOsc.ar(440!2) * Line.kr(0.5, 0, 1, doneAction:2)}.play;
    2.wait;
    {SinOsc.ar(660!2) * Line.kr(0.5, 0, 1, doneAction:2)}.play;
}).play(AppClock);
)