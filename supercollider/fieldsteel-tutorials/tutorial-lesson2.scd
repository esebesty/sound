x = {SinOsc.ar}.play;

x.free;

x = {SinOsc.ar};

y = x.play;

y.free;

x = {SinOsc.ar(700, 0, 0.125, 0)}.play;

x.free;

x = {SinOsc.ar(700)}.play;

x = {SinOsc.ar(700, mul: 0.125)}.play;

x = {SinOsc.ar(700) * 0.125}.play;

(
z = {
    arg freq = 440, amp = 1;
    var sig;
    sig = SinOsc.ar(freq) * amp;
}.play;
)

z.set(\freq, 330);
z.set(\amp, 0.125);
z.set(\freq, 660, \amp, 1);
z.set(\amp, 0.125, \freq, 550);
z.free;

(
z = {
    var freq, sig;
    freq = LFNoise0.kr(8, 400, 600);
    sig = SinOsc.ar(freq);
}.play;
)

z.free;

(
z = {
    var freq, sig;
    freq = LFNoise0.kr(8).range(200, 1000);
    sig = SinOsc.ar(freq);
}.play;
)

z.free;

(
z = {
    var freq, sig;
    freq = LFNoise0.kr(8).exprange(200, 1000);
    sig = SinOsc.ar(freq);
}.play;
)

z.free;

(
z = {
    var freq, amp, sig;
    freq = LFNoise0.kr(8).exprange(200, 1000);
    amp = LFNoise1.kr(12).exprange(0.02, 1);
    sig = SinOsc.ar(freq) * amp;
}.play;
)

z.free;

(
z = {
    arg noiseHz = 8;
    var freq, amp, sig;
    freq = LFNoise0.kr(noiseHz).exprange(200, 1000);
    amp = LFNoise1.kr(12).exprange(0.02, 1);
    sig = SinOsc.ar(freq) * amp;
}.play;
)

z.set(\noiseHz, 16);
z.set(\noiseHz, 32);
z.set(\noiseHz, 64);
z.set(\noiseHz, exprand(4, 64));

z.free;
