x = {SinOsc.ar}.play;

x.free;

x = {[SinOsc.ar, SinOsc.ar]}.play;

x.free;

x = {[SinOsc.ar(300), SinOsc.ar(500)]}.play;

x.free;

x = {SinOsc.ar([300, 500])}.play;

x.free;

(
x = {
    var sig, amp;
    amp = SinOsc.kr([7, 1]).range(0, 1);
    sig = SinOsc.ar([300, 500]);
    sig = sig * amp;
}.play;
)

(
x = {
    var sig, amp;
    amp = SinOsc.kr(7).range(0, 1);
    sig = SinOsc.ar([300, 500]);
    sig = sig * amp;
}.play;
)

x.free;

(
x = {
    var sig, amp;
    amp = SinOsc.kr([7, 1, 2, 0.2, 6]).range(0, 1);
    sig = SinOsc.ar([300, 500, 700, 900, 1100]);
    sig = sig * amp;
    Mix.new(sig) * 0.25;
}.play;
)

x.free;

(
x = {
    var sig, amp;
    amp = SinOsc.kr([7, 1, 2, 0.2, 6]).range(0, 1);
    sig = SinOsc.ar([300, 500, 700, 900, 1100]);
    sig = sig * amp;
    [Mix.new(sig), Mix.new(sig)] * 0.25;
}.play;
)

x.free;

60.dup(4);
"hello".dup(4);

(
x = {
    var sig, amp;
    amp = SinOsc.kr([7, 1, 2, 0.2, 6]).range(0, 1);
    sig = SinOsc.ar([300, 500, 700, 900, 1100]);
    sig = sig * amp;
    Mix.new(sig).dup(2) * 0.25;
}.play;
)

x.free;

60!4;

(
x = {
    var sig, amp;
    amp = SinOsc.kr([7, 1, 2, 0.2, 6]).range(0, 1);
    sig = SinOsc.ar([300, 500, 700, 900, 1100]);
    sig = sig * amp;
    Mix.new(sig)!2 * 0.25;
}.play;
)

x.free;

(
x  = {
    var sig, amp;
    amp = SinOsc.kr([7, 1, 2, 0.2, 6]).range(0, 1);
    sig = SinOsc.ar([300, 500, 700, 900, 1100]);
    sig = sig * amp;
    Splay.ar(sig) * 0.25;
}.play;
)

x.free;

x = {PinkNoise.ar(0.5)!2}.play;

x.free;

x = {PinkNoise.ar(0.5!2)}.play;

x.free;

(
SynthDef.new(\multi, {
    var sig, amp;
    amp = SinOsc.kr([7, 1, 2, 0.2, 6]).range(0, 1);
    sig = SinOsc.ar([300, 500, 700, 900, 1100]);
    sig = sig * amp;
    sig = Splay.ar(sig) * 0.5;
    Out.ar(0, sig);
}).add;
)

x = Synth.new(\multi);
x.free;

rrand(50, 1200)!4

{rrand(50, 1200)}!4

(
SynthDef.new(\multi, {
    var sig, amp;
    amp = SinOsc.kr({exprand(0.2, 12)}!8).range(0, 1);
    sig = SinOsc.ar({exprand(50, 1200)}!8);
    sig = sig * amp;
    sig = Splay.ar(sig) * 0.5;
    Out.ar(0, sig);
}).add;
)

x = Synth.new(\multi);

x.free;

(
SynthDef.new(\multi, {
    var sig, amp;
    amp = SinOsc.kr({ExpRand(0.2, 12)}!8).range(0, 1);
    sig = SinOsc.ar({ExpRand(50, 1200)}!8);
    sig = sig * amp;
    sig = Splay.ar(sig) * 0.5;
    Out.ar(0, sig);
}).add;
)

x = Synth.new(\multi);

x.free;

(
SynthDef.new(\multi, {
    var sig, amp, env;
    env = EnvGen.kr(
        Env.new([0, 1, 0], [10, 10], [1, -1]),
        doneAction: 2
    );
    amp = SinOsc.kr({ExpRand(0.2, 12)}!8).range(0, 1);
    sig = SinOsc.ar({ExpRand(50, 1200)}!8);
    sig = sig * amp * env;
    sig = Splay.ar(sig) * 0.5;
    Out.ar(0, sig);
}).add;
)

x = Synth.new(\multi);

x.free;
