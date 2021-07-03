s.boot;
s.meter;
s.plotTree;

~buf01 = Buffer.read(server: s, path: "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/overtone-short.wav");
~buf02 = Buffer.read(server: s, path: "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/electronic.wav");


(
~overtone = Buffer.read(server: s, path: "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/overtone-short.wav");
)

~overtone.duration;
~overtone.numFrames / 44100;

// uGen --> PlayBuf

(
SynthDef(\playback, {
    arg bufnum, endframe = 1, rate = 1, tfreq = 1, amp = 1, start = 0, out;
    var sig, trig;

    trig = Impulse.kr(tfreq);

    sig = PlayBuf.ar(
        numChannels: 2,
        bufnum: bufnum,
        rate: rate,
        trigger: trig,
        startPos: start.linlin(0, 1, 0, endframe),
        loop: 1);

    Out.ar(out, sig * amp);
}).add;
)

x = Synth(\playback, [\bufnum, ~buf01, \rate, 2, \tfreq, 3, \start, 0.1, \endframe, ~buf01.numFrames - 1, \out, 0]);

x.set(\rate, 1);



(
SynthDef(\playback2, {
    arg bufnum, endframe = 1, rate = 1, tfreq = 1, amp = 1, start = 0, out;
    var sig, trig;

    trig = Impulse.kr(tfreq);

    sig = PlayBuf.ar(
        numChannels: 2,
        bufnum: bufnum,
        rate: rate,
        trigger: trig,
        startPos: MouseX.kr().linlin(0, 1, 0, endframe),
        loop: 1);

    Out.ar(out, sig * amp);
}).add;
)

x = Synth(\playback2, [\bufnum, ~buf02, \endframe, ~buf02.numFrames - 1, \out, 0]);
x.set(\start, 0.5);
x.set(\tfreq, 10);

y = Synth(\playback2, [\bufnum, ~buf01, \endframe, ~buf01.numFrames - 1, \out, 0]);
y.set(\tfreq, 5);

// grainbuf


(
~buf03 = Buffer.readChannel(server: s, path: "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/electronic.wav",
    channels: [0]
);
)

(
~buf04 = Buffer.readChannel(server: s, path: "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/overtone-short.wav",
    channels: [0]
);
)


(
SynthDef(\grain01, {
    arg out, bufnum, amp = 1, tfreq = 1, dur = 1, rate = 1, pos = 0, panfreq =  1;
    var sig, trig, pan;

    trig = Impulse.ar(tfreq);
    pan  = LFNoise1.ar(panfreq);

    sig = GrainBuf.ar(
        numChannels: 2,
        trigger: trig,
        dur: dur,
        sndbuf: bufnum,
        rate: rate,
        pos: pos,
        pan: pan,
    );

    Out.ar(out, sig * amp);
}).add;
)

x = Synth(\grain01, [\out, 0, \bufnum, ~buf04]);
x.set(\tfreq, 10)



(
SynthDef(\grain02, {
    arg out, bufnum, amp = 1, tfreq = 1, dur = 1, rate = 1, panfreq =  1, posfreq = 1;
    var sig, trig, pan;

    trig = Impulse.ar(tfreq);
    pan  = LFNoise0.ar(panfreq);

    sig = GrainBuf.ar(
        numChannels: 2,
        trigger: trig,
        dur: dur,
        sndbuf: bufnum,
        rate: rate,
        pos: LFNoise1.kr(posfreq).range(0, 1),
        pan: pan,
    );

    Out.ar(out, sig * amp);
}).add;
)

x = Synth(\grain02, [\out, 0, \bufnum, ~buf04]);
x.set(\tfreq, 15)
x.set(\dur, 0.7)
x.set(\posfreq, 0.05)

y = Synth(\grain02, [\out, 0, \bufnum, ~buf03]);
y.set(\tfreq, 10)
y.set(\dur, 0.6)


x = Synth(\grain02, [\out, 0, \bufnum, ~buf03, \tfreq, 10, \posfreq, 0.05, \amp, 0.5]);


~synth = Array.newClear(3);

(
3.do{
    arg index;
    ~synth[index] = Synth(\grain02, [
        \out, 0,
        \bufnum, ~buf04,
        \tfreq, 10,
        \posfreq, 0.05,
        \amp, 0.5]);
};
)

~synth[2].free;
~synth[1].free;
~synth[0].free;















