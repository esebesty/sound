s.boot;

~b0 = Buffer.read(s, "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/electronic.wav");

~b0.play;

~b0.zero;

~b0.read("/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/electronic.wav");

~b0.free;

Buffer.freeAll;

~b0 = Buffer.read(s, "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/electronic.wav");

~b1 = Buffer.read(s, "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/overtone.wav");

~b0.play;

~b1.play;

// frames
~b0.numFrames;

// channels
~b0.numChannels;

~b4 = Buffer.readChannel(s, "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/electronic.wav", channels: [1]);

~b0.play;

~b4.numChannels;
~b4.play;

// duration

~b0.duration;

// buffer numbers
~b0.bufnum;

// buffer sample rate
~b0.sampleRate;
s.sampleRate;

// summary
~b0.query;

~b1_part0 = Buffer.read(s, "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/overtone.wav", 0, s.sampleRate / 2);

~b1_part0.play;

~b1.numFrames;

~b1_part1 = Buffer.read(s, "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/overtone.wav", 232000, ~b1.numFrames - 232001);

~b1_part1.play;

~strings = Array.new;

~folder = PathName.new("/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/strings/");

~folder.entries;

(
~folder.entries.do({
    arg path;
    ~strings = ~strings.add(Buffer.read(s, path.fullPath));
});
)

~strings;

~strings.at(0).play;
~strings[1].play;

s.options.numBuffers;

(
SynthDef.new(\playbuf_test, {
    arg amp = 1, out = 0, buf;
    var sig;
    sig = PlayBuf.ar(2, buf);
    sig = sig * amp;
    Out.ar(out, sig);
}).add;
)

Synth.new(\playbuf_test, [\buf, ~b0.bufnum]);

s.plotTree;

s.freeAll;

(
SynthDef.new(\playbuf_test, {
    arg amp = 1, out = 0, buf, da = 2;
    var sig;
    sig = PlayBuf.ar(2, buf, doneAction: da);
    sig = sig * amp;
    Out.ar(out, sig);
}).add;
)

Synth.new(\playbuf_test, [\buf, ~b0.bufnum]);

(
SynthDef.new(\playbuf_test, {
    arg amp = 1, out = 0, buf, rate = 1, da = 2;
    var sig;
    sig = PlayBuf.ar(2, buf, rate, doneAction: da);
    sig = sig * amp;
    Out.ar(out, sig);
}).add;
)

Synth.new(\playbuf_test, [\buf, ~b0.bufnum, \rate, 2]);


(
SynthDef.new(\playbuf_test, {
    arg amp = 1, out = 0, buf, rate = 1, da = 2;
    var sig;
    sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf) * rate, doneAction: da);
    sig = sig * amp;
    Out.ar(out, sig);
}).add;
)

Synth.new(\playbuf_test, [\buf, ~b0.bufnum, \rate, 1.5]);

(
SynthDef.new(\playbuf_test, {
    arg amp = 1, out = 0, buf, rate = 1, t_trig = 1, start = 0, da = 2;
    var sig;
    sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf) * rate, t_trig, start, doneAction: da);
    sig = sig * amp;
    Out.ar(out, sig);
}).add;
)

x = Synth.new(\playbuf_test, [\buf, ~b0.bufnum, \start, s.sampleRate / 2, \da, 0]);

x.set(\t_trig, 1);
x.free;

(
SynthDef.new(\playbuf_test, {
    arg amp = 1, out = 0, buf, rate = 1, t_trig = 1, start = 0, loop = 0, da = 2;
    var sig;
    sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf) * rate, t_trig, start, loop, doneAction:da);
    sig = sig * amp;
    Out.ar(out, sig);
}).add;
)

x = Synth.new(\playbuf_test, [\buf, ~b1_part1.bufnum, \loop, 1]);

x.set(\loop, 0);

x.free;

Synth.new(\playbuf_test, [\buf, ~b0.bufnum, \rate, -1, \start, ~b0.numFrames - 2]);

Synth.new(\playbuf_test, [\buf, ~b0.bufnum, \rate, -7.midiratio]);

g = Group.new;

(
x = Synth.new(\playbuf_test, [\buf, ~b0.bufnum, \rate, 1.5, \loop, 1, \amp, 0.5], g);
y = Synth.new(\playbuf_test, [\buf, ~b1.bufnum, \rate, 1.2, \loop, 1, \amp, 0.5], g);
)

g.set(\rate, 2);

g.set(\buf, ~b0.bufnum);

x.set(\rate, exprand(0.2, 2.0));
y.set(\rate, exprand(0.2, 2.0));

g.set(\loop, 0);
g.free;

(
SynthDef.new(\bufrd_test, {
    arg amp = 1, out = 0, buf;
    var sig, ptr;
    ptr = Line.ar(0, BufFrames.kr(buf) - 1, BufDur.kr(buf), doneAction: 2);
    sig = BufRd.ar(2, buf, ptr);
    sig = sig * amp;
    Out.ar(out, sig);
}).add;
)

Synth.new(\bufrd_test, [\buf, ~b0.bufnum]);

(
SynthDef.new(\bufrd_test, {
    arg amp = 1, out = 0, buf, start, end;
    var sig, ptr;
    ptr = Line.ar(start, end, BufDur.kr(buf), doneAction: 2);
    sig = BufRd.ar(2, buf, ptr);
    sig = sig * amp;
    Out.ar(out, sig);
}).add;
)

Synth.new(\bufrd_test, [\buf, ~b0.bufnum, \start, ~b0.numFrames - 1, \end, 0]);

(
SynthDef.new(\bufrd_loop, {
    arg amp = 1, out = 0, buf, start, end, rate = 1;
    var sig, ptr;
    ptr = Phasor.ar(0, BufRateScale.kr(buf) * rate, start, end);
    sig = BufRd.ar(2, buf, ptr);
    sig = sig * amp;
    Out.ar(out, sig);
}).add;
)

x = Synth.new(\bufrd_loop, [\buf, ~b0.bufnum, \start, 0, \end, ~b0.numFrames - 1]);

x.set(\start, ~b0.numFrames / 2, \end, ~b0.numFrames - 1);
x.set(\start, 2000, \end, 26000);
x.set(\rate, -7.midiratio);
x.free;

(
SynthDef.new(\bufrd_sine, {
    arg amp = 1, out = 0, buf, start, end, freq = 1;
    var sig, ptr;
    ptr = SinOsc.ar(freq, 3pi / 2).range(start, end);
    sig = BufRd.ar(2, buf, ptr);
    sig = sig * amp;
    Out.ar(out, sig);
}).add;
)

x = Synth.new(\bufrd_sine, [\buf, ~b0.bufnum, \start, 0, \end, ~b0.numFrames - 1, \freq, 0.2]);
x.set(\freq, 0.4);
x.free;

~b2 = Buffer.read(s, "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/mukodik.wav");

x =  Synth.new(\bufrd_sine, [\buf, ~b2.bufnum, \start, 0, \end, ~b2.numFrames - 1, \freq, 0.2]);
x.set(\freq, 0.3);
x.free;

(
SynthDef.new(\bufrd_noise, {
    arg amp = 1, out = 0, buf, start, end, freq = 1;
    var sig, ptr;
    ptr = LFDNoise1.ar(freq).range(start, end);
    sig = BufRd.ar(2, buf, ptr);
    sig = sig * amp;
    Out.ar(out, sig);
}).add;
)

x = Synth.new(\bufrd_noise, [\buf, ~b2.bufnum, \start, 0, \end, ~b2.numFrames - 1, \freq, 1]);

x.set(\freq, 0.5)
x.free;

x = Synth.new(\bufrd_noise, [\buf, ~b1.bufnum, \start, 0, \end, ~b1.numFrames - 1, \freq, 1]);
x.set(\freq, 0.3)
x.free;

x = Synth.new(\bufrd_noise, [\buf, ~b0.bufnum, \start, 0, \end, ~b0.numFrames - 1, \freq, 0.5, \amp, 0.5]);
y = Synth.new(\bufrd_noise, [\buf, ~b1.bufnum, \start, 0, \end, ~b1.numFrames - 1, \freq, 0.7, \amp, 0.5]);

s.freeAll;

g = Group.new;

x = Synth.new(\bufrd_noise, [\buf, ~b0.bufnum, \start, 0, \end, ~b0.numFrames - 1, \freq, 0.5, \amp, 0.5], g);
y = Synth.new(\bufrd_noise, [\buf, ~b1.bufnum, \start, 0, \end, ~b1.numFrames - 1, \freq, 0.7, \amp, 0.5], g);

g.set(\freq, 200);

s.freeAll;



