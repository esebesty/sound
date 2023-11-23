(
~cricket2c = Buffer.read(server: s, path: "/Users/esebesty/Dropbox/Documents/06-MUSIC/00-recordings/edited/cricket-sound-01.wav");
)

(
SynthDef(\cricket, {
    arg bufnum, endframe = 1, rate = 1, tfreq = 1, amp = 1, start = 0, out = 0;
    var sig;

    sig = PlayBuf.ar(
        numChannels: 2,
        bufnum: bufnum,
        rate: rate,
        startPos: start.linlin(0, 1, 0, endframe));

    Out.ar(out, sig * amp);
}).add;
)

x = Synth(\cricket, [\bufnum, ~cricket2c, \out, 0]);

