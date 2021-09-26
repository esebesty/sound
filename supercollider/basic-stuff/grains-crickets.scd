(
~cricket1c = Buffer.readChannel(server: s, path: "/Users/esebesty/Dropbox/Documents/06-MUSIC/00-recordings/edited/cricket-sound-02.wav",
    channels: [0]
);
)

(
SynthDef(\grains, {
    arg bufnum, out = 0, amp = 1, tfreq = 1, dur = 1, rate = 1,
    panfreq = 1, posfreq = 1, fmix = 0.5, rooom = 0.5;

    var sig, trig, pan, pos;

    trig = Impulse.ar(tfreq);
    pan  = LFNoise1.ar(panfreq);
    pos  = LFNoise1.kr(posfreq).range(0, 1);

    sig = GrainBuf.ar(
        numChannels: 2,
        trigger: trig,
        dur: dur,
        sndbuf: bufnum,
        rate: rate,
        pos: pos,
        pan: pan,
        interp: 4
    );

    sig = FreeVerb.ar(sig, fmix, room);

    Out.ar(out, sig * amp);
}).add;
)

x = Synth(\grains, [\bufnum, ~cricket1c]);

x.set(\room, 0.2);
x.set(\tfreq, 2);
x.set(\dur, 0.5);
x.set(\posfreq, 0.2);
x.set(\fmix, 0.6);
x.free;