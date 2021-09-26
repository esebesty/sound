s.boot;

s.meter;
s.plotTree;

(
SynthDef(\bpfsaw, {
    arg atk = 2, sus = 0, rel = 3, c1 = 1, c2 = (-1),
    freq = 500, cf = 1500, rq = 0.2, amp = 1, out = 0;
    var sig, env;
    env = EnvGen.kr(Env([0, 1, 1, 0], [atk, sus, rel], [c1, 0, c2]), doneAction: 2);
    sig = Saw.ar(freq);
    sig = BPF.ar(sig, cf, rq);
    sig = sig * env * amp;
    Out.ar(out, sig);
}).add;
)

(
[58, 65, 68, 73].midicps.do{
    arg f;

    Synth(
        \bpfsaw,
        [
            \freq, f,
            \amp, 0.25,
            \cf, f * exprand(1, 12),
            \rq, exprand(0.01, 0.5),
        ]
    );
};
)

(
4.do{
    Synth(
        \bpfsaw,
        [
            \freq, exprand(100, 1000),
            \amp, 0.25,
            \cf, exprand(200, 5000),
            \rq, exprand(0.01, 0.5),
        ]
    );
};
)

Scale.major;

Scale.minor;

Scale.chromatic;

Scale.directory;

(
4.do{
    Synth(
        \bpfsaw,
        [
            \freq, (Scale.minor.degrees + 60).midicps.choose,
            \amp, 0.25,
            \cf, exprand(200, 5000),
            \rq, exprand(0.01, 0.5),
        ]
    );
};
)

(
(1..6).choose.do{
    Synth(
        \bpfsaw,
        [
            \freq, (Scale.minor.degrees + 60).midicps.choose,
            \amp, 0.25,
            \cf, exprand(200, 5000),
            \rq, exprand(0.01, 0.5),
        ]
    );
};
)

(
SynthDef(\bpfsaw, {
    arg atk = 2, sus = 0, rel = 3, c1 = 1, c2 = (-1),
    freq = 500, detune = 0.2, cf = 1500, rq = 0.2, amp = 1, out = 0;
    var sig, env;
    env = EnvGen.kr(Env([0, 1, 1, 0], [atk, sus, rel], [c1, 0, c2]), doneAction: 2);
    sig = Saw.ar(freq * LFNoise1.kr(0.5, detune).midiratio);
    sig = BPF.ar(sig, cf, rq);
    sig = sig * env * amp;
    Out.ar(out, sig);
}).add;
)

Synth(\bpfsaw);

10.do{Synth(\bpfsaw, [\amp, 0.2])};

10.do{Synth(\bpfsaw, [\amp, 0.2, \detune, 0])};

10.do{Synth(\bpfsaw, [\amp, 0.2, \detune, 3])};

(
SynthDef(\bpfsaw, {
    arg atk = 2, sus = 0, rel = 3, c1 = 1, c2 = (-1),
    freq = 500, detune = 0.2,
    cfmin = 500, cfmax = 2000,
    rqmin = 0.1, rqmax = 0.2,
    amp = 1, out = 0;
    var sig, env;
    env = EnvGen.kr(Env([0, 1, 1, 0], [atk, sus, rel], [c1, 0, c2]), doneAction: 2);
    sig = Saw.ar(freq * LFNoise1.kr(0.5, detune).midiratio);
    sig = BPF.ar(sig,
        LFNoise1.kr(0.2).exprange(cfmin, cfmax),
        LFNoise1.kr(0.1).exprange(rqmin, rqmax)
    );
    sig = sig * env * amp;
    Out.ar(out, sig);
}).add;
)

(
10.do{
    Synth(
        \bpfsaw,
        [
            \freq, 50,
            \amp, 0.2,
        ],
    );
};
)

(
10.do{
    Synth(
        \bpfsaw,
        [
            \freq, 50,
            \amp, 0.2,
            \cfmin, 50 * 2,
            \cfmax, 50 * 50,
        ],
    );
};
)

(
10.do{
    Synth(
        \bpfsaw,
        [
            \freq, 50,
            \amp, 0.2,
            \cfmin, 50 * 2,
            \cfmax, 50 * 50,
            \rqmin, 0.8,
            \rqmax, 1,
        ],
    );
};
)

(
10.do{
    Synth(
        \bpfsaw,
        [
            \freq, 50,
            \amp, 0.2,
            \cfmin, 50 * 2,
            \cfmax, 50 * 50,
            \rqmin, 0.005,
            \rqmax, 0.03,
        ],
    );
};
)

(
SynthDef(\bpfsaw, {
    arg atk = 2, sus = 0, rel = 3, c1 = 1, c2 = (-1),
    freq = 500, detune = 0.2, pan = 0,
    cfmin = 500, cfmax = 2000,
    rqmin = 0.1, rqmax = 0.2,
    amp = 1, out = 0;
    var sig, env;
    env = EnvGen.kr(Env([0, 1, 1, 0], [atk, sus, rel], [c1, 0, c2]), doneAction: 2);
    sig = Saw.ar(freq * LFNoise1.kr(0.5, detune).midiratio);
    sig = BPF.ar(sig,
        LFNoise1.kr(0.2).exprange(cfmin, cfmax),
        LFNoise1.kr(0.1).exprange(rqmin, rqmax)
    );

    sig = Pan2.ar(sig, pan);
    sig = sig * env * amp;
    Out.ar(out, sig);
}).add;
)

(
10.do{
    Synth(
        \bpfsaw,
        [
            \freq, 50,
            \amp, 0.2,
            \cfmin, 50 * 2,
            \cfmax, 50 * 50,
            \rqmin, 0.005,
            \rqmax, 0.03,
            \pan, rrand(-1.0, 1.0),
        ],
    );
};
)

(
SynthDef(\bpfsaw, {
    arg atk = 2, sus = 0, rel = 3, c1 = 1, c2 = (-1),
    freq = 500, detune = 0.2, pan = 0,
    cfmin = 500, cfmax = 2000,
    rqmin = 0.1, rqmax = 0.2,
    amp = 1, out = 0;
    var sig, env;
    env = EnvGen.kr(Env([0, 1, 1, 0], [atk, sus, rel], [c1, 0, c2]), doneAction: 2);
    sig = Saw.ar(freq * {LFNoise1.kr(0.5, detune).midiratio}!2);
    sig = BPF.ar(sig,
        {LFNoise1.kr(0.2).exprange(cfmin, cfmax)}!2,
        {LFNoise1.kr(0.1).exprange(rqmin, rqmax)}!2,
    );

    sig = Balance2.ar(sig[0], sig[1], pan);
    sig = sig * env * amp;
    Out.ar(out, sig);
}).add;
)

(
10.do{
    Synth(
        \bpfsaw,
        [
            \freq, 50,
            \amp, 0.2,
            \cfmin, 50 * 2,
            \cfmax, 50 * 50,
            \rqmin, 0.005,
            \rqmax, 0.03,
            \pan, 0
        ],
    );
};
)

s.options.numOutputBusChannels_(8);
s.reboot;

(
SynthDef(\bpfsaw, {
    arg atk = 2, sus = 0, rel = 3, c1 = 1, c2 = (-1),
    freq = 500, detune = 0.2, pan = 0,
    cfmin = 500, cfmax = 2000,
    rqmin = 0.1, rqmax = 0.2,
    amp = 1, out = 0;
    var sig, env;
    env = EnvGen.kr(Env([0, 1, 1, 0], [atk, sus, rel], [c1, 0, c2]), doneAction: 2);
    sig = Saw.ar(freq * LFNoise1.kr(0.5, detune).midiratio);
    sig = BPF.ar(sig,
        LFNoise1.kr(0.2).exprange(cfmin, cfmax),
        LFNoise1.kr(0.1).exprange(rqmin, rqmax),
    );

    sig = PanAz.ar(8, sig, pan);
    sig = sig * env * amp;
    Out.ar(out, sig);
}).add;
)













