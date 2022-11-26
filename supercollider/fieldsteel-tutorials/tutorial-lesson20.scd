s.boot;

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

SoundIn