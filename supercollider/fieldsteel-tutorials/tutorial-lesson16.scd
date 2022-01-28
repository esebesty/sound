s.boot;

(
SynthDef(\bpfsaw, {
    arg atk = 2, sus = 0, rel = 3, c1 = 1, c2 = (-1),
    freq = 500, detune = 0.2, pan = 0,
    cfhzmin = 0.1, cfhzmax = 0.3,
    cfmin = 500, cfmax = 2000,
    rqmin = 0.1, rqmax = 0.2,
    lsf = 200, ldb = 0,
    amp = 1, out = 0;
    var sig, env;
    env = EnvGen.kr(Env([0, 1, 1, 0], [atk, sus, rel], [c1, 0, c2]), doneAction: 2);
    sig = Saw.ar(freq * {LFNoise1.kr(0.5, detune).midiratio}!2);
    sig = BPF.ar(sig,
        {LFNoise1.kr(
            LFNoise1.kr(4).exprange(cfhzmin, cfhzmax)
        ).exprange(cfmin, cfmax)}!2,
        {LFNoise1.kr(0.1).exprange(rqmin, rqmax)}!2,
    );

    sig = BLowShelf.ar(sig, lsf, 0.5, ldb);
    sig = Balance2.ar(sig[0], sig[1], pan);
    sig = sig * env * amp;
    Out.ar(out, sig);
}).add;

SynthDef(\bpfbuf, {
    arg atk = 0, sus = 0, rel = 3, c1 = 1, c2 = (-1),
    buf = 0, rate = 1, spos = 0, freq = 440, rq = 1, bpfmix = 0,
    pan = 0, amp = 1, out = 0;
    var sig, env;
    env = EnvGen.kr(Env([0, 1, 1, 0], [atk, sus, rel], [c1, 0, c2]), doneAction: 2);
    sig = PlayBuf.ar(2, buf, rate * BufRateScale.ir(buf), startPos: spos);
    sig = XFade2.ar(sig, BPF.ar(sig, freq, rq, 1 / rq.sqrt), bpfmix * 2 - 1);
    sig = sig * env;
    sig = Pan2.ar(sig, pan, amp);
    Out.ar(out, sig);
}).add;

SynthDef(\reverb, {
    arg in, predelay = 0.1, revtime = 1.8, lpf = 4500, mix = 0.15, amp = 1, out = 0;
    var dry, wet, temp, sig;
    dry = In.ar(in, 2);
    temp  = In.ar(in, 2);
    wet = 0;
    temp = DelayN.ar(temp, 0, 2, predelay);
    16.do{
        temp = AllpassN.ar(temp, 0.05, {Rand(0.001, 0.05)}!2, revtime);
        temp = LPF.ar(temp, lpf);
        wet = wet + temp;
    };
    sig = XFade2.ar(dry, wet, mix * 2 -1, amp);
    Out.ar(out, sig);

}).add;

)

~reverbBus = Bus.audio(s, 2);
~reverbSynth = Synth(\reverb, [\in, ~reverbBus]);

~ba = Buffer.read(s, "/Users/esebesty/Dropbox/Documents/06-MUSIC/00-recordings/edited/cricket-sound-01.wav")
~bb = Buffer.read(s, "/Users/esebesty/Dropbox/Documents/06-MUSIC/00-recordings/edited/cricket-sound-02.wav")
~bc = Buffer.read(s, "/Users/esebesty/Dropbox/Documents/06-MUSIC/00-recordings/edited/cricket-sound-03.wav")

~b1 = Buffer.read(s, "/Applications/Ableton Live 10 Trial.app/Contents/App-Resources/Core Library/Samples/Texture/Runaway.aif")
~b2 = Buffer.read(s, "/Applications/Ableton Live 10 Trial.app/Contents/App-Resources/Core Library/Samples/Texture/Rising Klic.aif")
~b3 = Buffer.read(s, "/Applications/Ableton Live 10 Trial.app/Contents/App-Resources/Core Library/Samples/Texture/Rhyt Mo.aif")

~b1.play;
~b2.play;
~b3.play;

Synth(\bpfbuf, [\buf, ~b2.bufnum]);

(
Synth(
    \bpfbuf,
    [
        \buf, ~b2.bufnum,
        \rel, 0.1,
        \spos, rrand(0, ~b2.numFrames / 2)
    ]
);
)

(
Synth(
    \bpfbuf,
    [
        \buf, ~b2.bufnum,
        \atk, 2,
        \sus, 1,
        \rel, 2,
        \bpfmix, 1,
        \freq, 2000,
        \rq, 1 / 400,
        \rate, 0.25
    ]
);
)

(
rrand(4, 10).do{
Synth(
    \bpfbuf,
    [
        \buf, [~b1, ~b2, ~b3].choose,
        \atk, exprand(2, 3),
        \sus, 1,
        \rel, exprand(2, 3),
        \bpfmix, 1,
        \freq, (Scale.lydian.degrees + 69).choose.midicps * [1, 2].choose,
        \rq, exprand(0.001, 0.008),
        \rate, exprand(0.6, 1.2),
        \pan, rrand(-0.5, 0.5),
        \amp, exprand(1, 2),
    ]
);
}
)

Scale.directory;

d = Dictionary.new;
d.add(\foo -> 10);
d.add(\bar -> 20);
d[\bar];

Buffer.freeAll;

(
b = Dictionary.new;
PathName("/Users/esebesty/Dropbox/Documents/06-MUSIC/00-recordings/edited/").entries.do{
    arg subfolder;
    b.add(
        subfolder.folderName.asSymbol ->
        Array.fill(
            subfolder.entries.size,
            {
                arg i;
                Buffer.read(s, subfolder.entries[i].fullPath);
            }
        )
    );
};
)

b.class;
b.size;
b.keys;

b[\cricket][1].play;

(
rrand(4, 10).do{
Synth(
    \bpfbuf,
    [
        \buf, b[\cricket][[0, 1, 2].choose],
        \atk, exprand(2, 3),
        \sus, 1,
        \rel, exprand(2, 3),
        \bpfmix, 1,
        \freq, (Scale.lydian.degrees + 69).choose.midicps * [1, 2].choose,
        \rq, exprand(0.001, 0.008),
        \rate, exprand(0.6, 1.2),
        \pan, rrand(-0.5, 0.5),
        \amp, exprand(1, 2),
    ]
);
}
)

(
Synth(
    \bpfbuf,
    [
        \buf, b[\cricket][1],
        \atk, 2,
        \rel, 2,
        \spos, 3000,
        \rate, 0.25,

    ]
);
)

(
5.do{
Synth(
    \bpfbuf,
    [
        \buf, b[\em][0],
        \atk, 2,
        \rel, 2,
        \spos, rrand(30000, 35000),
        \rate, 0.5 * exprand(0.98, 1.02),
    ]
);
}
)

(
Synth(
    \bpfbuf,
    [
        \buf, b[\cricket][(0..2).choose],
        \rel, rrand(0.15, 0.25),
        \rate, rrand(-2.0, 2.0).midiratio,
        \out, ~reverbBus,
    ]
);
)

(
p = Pbind(
    \instrument, \bpfbuf,
    \dur, Pexprand(0.1, 1),
    \buf, b[\cricket][1],
    \rel, Pexprand(0.01, 0.5),
    \spos, Pwhite(1000, 5000),
    \rate, Pwhite(-7.0, 7.0).midiratio,
    \amp, Pexprand(0.5, 0.9),
    \out, Prand([~reverbBus, 0], inf),
).play;
)

p.stop;

~reverbSynth.set(\mix, 1);

p.stop;

~createReverb = {~reverbSynth = Synth(\reverb, [\in, ~reverbBus])};
ServerTree.add(~createReverb);
ServerTree.removeAll;
