x = {PinkNoise.ar * 0.5}.play;

x.free;

(
x = {
    var sig, env;
    env = Line.kr(1, 0, 1);
    sig = Pulse.ar(ExpRand(30, 500)) * env;
}.play;
)

x.free;

s.freeAll;

(
x = {
    var sig, env;
    env = Line.kr(1, 0, 1, doneAction: 2);
    sig = Pulse.ar(ExpRand(30, 500)) * env;
}.play;
)

(
{
    var sig, env;
    env = Line.kr(1, 0, 1, doneAction: 2);
    sig = Pulse.ar(ExpRand(30, 500)) * env;
}.play;
)

(
{
    var sig, env;
    env = XLine.kr(1, 0.01, doneAction: 2);
    sig = Pulse.ar(ExpRand(30, 500)) * env;
}.play;
)

(
{
    var sig, env;
    env = Line.kr(0, -40, 1, doneAction: 2);
    sig = Pulse.ar(ExpRand(30, 500)) * env.dbamp;
}.play;
)

0.1.ampdb;

(
{
    var sig, freq, env;
    env = XLine.kr(1, 0.01, 1, doneAction: 2);
    freq = XLine.kr(880, 110, 1, doneAction: 2);
    sig = Pulse.ar(freq) * env;
}.play;
)

(
{
    var sig, freq, env;
    env = XLine.kr(1, 0.01, 5, doneAction: 2);
    freq = XLine.kr(880, 110, 1, doneAction: 0);
    sig = Pulse.ar(freq) * env;
}.play;
)

Env.new.plot;

(
{
    var sig, env;
    env = EnvGen.kr(Env.new, doneAction: 2);
    sig = Pulse.ar(ExpRand(30, 500)) * env;
}.play;
)

Env.new([0, 1, 0.2, 0], [0.5, 1, 2]).plot;

Env.new([0.01, 1, 0.2, 0.01], [0.5, 1, 2], \exp).plot;

Env.new([0, 1, 0.2, 0], [0.5, 1, 2], [3, -3, 0]).plot;

Env.new([0, 1, 0.2, 0], [0.5, 1, 2], [12, -12, 0]).plot;

Env.new([0, 1, 0.2, 0], [0.5, 1, 2], [-3, 3, 0]).plot;

Env.new([0, 1, 0.2, 0], [0.5, 1, 2], [\sine, \sine, 0]).plot;

(
{
    var sig, env;
    env = EnvGen.kr(Env.new(
        [0, 1, 0.2, 0],
        [0.5, 1, 2],
        [-3, 3, 0]),
    doneAction: 2);
    sig = Pulse.ar(ExpRand(30, 500)) * env;
}.play;
)

(
x = {
    arg gate = 0;
    var sig, env;
    env = EnvGen.kr(Env.new(
        [0, 1, 0.2, 0],
        [0.5, 1, 2],
        [-3, 3, 0]), gate);
    sig = Pulse.ar(LFPulse.kr(8).range(600, 900)) * env;
}.play;
)

x.set(\gate, 1)

x.free;

(
x = {
    arg t_gate = 0;
    var sig, env;
    env = EnvGen.kr(Env.new(
        [0, 1, 0.2, 0],
        [0.5, 1, 2],
        [-3, 3, 0]), t_gate);
    sig = Pulse.ar(LFPulse.kr(8).range(600, 900)) * env;
}.play;
)

x.set(\t_gate, 1)

(
x = {
    arg gate;
    var sig, env;
    env = EnvGen.kr(Env.adsr, gate);
    sig = VarSaw.ar(SinOsc.kr(16).range(500, 1000)) * env;
}.play;
)

x.set(\gate, 1)

(
x = {
    arg t_gate;
    var sig, env;
    env = EnvGen.kr(Env.adsr, t_gate);
    sig = VarSaw.ar(SinOsc.kr(16).range(500, 1000)) * env;
}.play;
)

x.set(\t_gate, 1);

(
x = {
    arg gate = 0;
    var sig, env, freq;
    freq = EnvGen.kr(Env.adsr(1), gate, 200, 0.1);
    env = EnvGen.kr(Env.adsr, gate, doneAction: 2);
    sig = VarSaw.ar(SinOsc.kr(freq).range(500, 1000)) * env;
}.play;
)

x.set(\gate, 0)
