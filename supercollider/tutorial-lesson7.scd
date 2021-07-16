s.boot;
s.plotTree;
s.meter;

// Nodes, Busses, Order of Execution

// Node -> [Synth, Group]

(
SynthDef.new(\blip, {
    arg out;
    var freq, trig, sig;
    freq = LFNoise0.kr(3).exprange(300, 1200).round(300);
    sig = SinOsc.ar(freq) * 0.25;
    trig = Dust.kr(2);
    sig = sig * EnvGen.kr(Env.perc(0.01, 0.2), trig);
    Out.ar(out, sig);
}).add;

SynthDef.new(\reverb, {
    arg in, out = 0;
    var sig;
    sig = In.ar(in, 1);
    sig = FreeVerb.ar(sig, 0.5, 0.8, 0.2)!2;
    Out.ar(out, sig);
}).add;
)

s.options.numAudioBusChannels;
s.options.numOutputBusChannels;
s.options.numInputBusChannels;

s.reboot;
s.meter;

y = Synth.new(\reverb, [\in, 6]);
x = Synth.new(\blip, [\out, 6]);
x.set(\out, 25);
y.set(\in, 25);
x.free;
y.free;

~reverbBus = Bus.audio(s, 1);
~reverbBus.index;

y = Synth.new(\reverb, [\in, ~reverbBus.index]);
x = Synth.new(\blip, [\out, ~reverbBus.index]);
x.free;
y.free;

y = Synth.new(\reverb, [\in, ~reverbBus]);
x = Synth.new(\blip, [\out, ~reverbBus]);
x.free;
y.free;


(
SynthDef.new(\blip, {
    arg out;
    var freq, sig, trig;
    freq = LFNoise0.kr(3).exprange(300, 1200).round(300);
    sig = SinOsc.ar(freq) * 0.25;
    trig = Dust.kr(2);
    sig = sig * EnvGen.kr(Env.perc(0.01, 0.2), trig);
    sig = Pan2.ar(sig, LFNoise1.kr(10));
    Out.ar(out, sig);
}).add;

SynthDef.new(\reverb, {
    arg in, out = 0;
    var sig;
    sig = In.ar(in, 2);
    sig = FreeVerb.ar(sig, 0.5, 0.8, 0.2);
    Out.ar(out, sig);
}).add;
)

~reverbBus2 = Bus.audio(s, 2);
~reverbBus3 = Bus.audio(s, 1);

~reverbBus2.index;

y = Synth.new(\reverb, [\in, ~reverbBus2]);
x = Synth.new(\blip, [\out, ~reverbBus2]);
x.free;
y.free;

x = Synth.new(\blip, [\out, ~reverbBus2]);
y = Synth.new(\reverb, [\in, ~reverbBus2]);

s.freeAll;

x = Synth.new(\blip, [\out, 0]);
y = Synth.new(\reverb, [\in, ~reverbBus2]);

g = Group.new;

x.free;
g.free;

x = Synth.new(\blip, [\out, ~reverbBus2], s);
y = Synth.new(\reverb, [\in, ~reverbBus2], s, \addToTail);

s.freeAll;

x = Synth.new(\blip, [\out, ~reverbBus2]);
y = Synth.new(\reverb, [\in, ~reverbBus2], x, \addAfter);

x.free;

x = Synth.before(y, \blip, [\out, ~reverbBus2]);

x.free;
y.free;

~sourceGrp = Group.new;
~fxGrp = Group.after(~sourceGrp);

x = Synth.new(\blip, [\out, ~reverbBus2], ~sourceGrp);
y = Synth.new(\reverb, [\in, ~reverbBus2], ~fxGrp);

x.free;


~sourceGrp = Group.new;
~fxGrp = Group.after(~sourceGrp);

(
SynthDef.new(\blip, {
    arg out, fund = 300, dens = 2, decay = 0.2;
    var freq, sig, trig;
    freq = LFNoise0.kr(3).exprange(fund, fund * 4).round(fund);
    sig = SinOsc.ar(freq) * 0.25;
    trig = Dust.kr(dens);
    sig = sig * EnvGen.kr(Env.perc(0.01, decay), trig);
    sig = Pan2.ar(sig, LFNoise1.kr(10));
    Out.ar(out, sig);
}).add;

SynthDef.new(\reverb, {
    arg in, out = 0;
    var sig;
    sig = In.ar(in, 2);
    sig = FreeVerb.ar(sig, 0.5, 0.8, 0.2);
    Out.ar(out, sig);
}).add;
)

y = Synth.new(\reverb, [\in, ~reverbBus2], ~fxGrp);

(
8.do{
    Synth.new(
        \blip,
        [
            \out, ~reverbBus2,
            \fund, exprand(60, 300).round(30)
        ],
        ~sourceGrp
    );
}
)

~sourceGrp.set(\decay, 0.03);
~sourceGrp.set(\dens, 16);
~sourceGrp.set(\dens, 0.25);
~sourceGrp.set(\decay, 1.2);

~sourceGrp.freeAll;
