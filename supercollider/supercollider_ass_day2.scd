// scope: lejatszik es meg is jeleniti

{ SinOsc.ar(110) * 0.2 }.scope;


{ SinOsc.ar(110).trunc(0.25) * 0.1 }.play;



// dinamikusan valtozo truncate
(
{
	var tr;

	tr = SinOsc.kr(0.3).range(0.01, 0.8);

	SinOsc.ar([110, 165]).trunc(tr) * 0.05;

}.play;
)

// 5 elemes array 5 hanggal
// 5 hang kulonfelekeppen valtozzon
(
{
	var sig, tr_list, tr, sig_list, pos;

	tr_list = Array.rand(5, minVal: 0.1, maxVal: 0.4).postln;

	tr = SinOsc.kr(tr_list).range(0.1, 0.8);

	sig_list = Array.geom(5, 220, 2);

	sig = SinOsc.ar(sig_list).trunc(tr) * 0.05;
	sig = Mix.new(sig);

	pos = SinOsc.kr(0.1, mul: 2 / 3);
	sig = Pan2.ar(sig, pos);

}.play;
)

{WhiteNoise.ar() * 0.1}.play;

{PinkNoise.ar() * 0.1}.play;

// low frequency noise

{LFNoise0.kr(0.8).poll}.play; // fel le ugral a random ertekek kozott es tartja

{LFNoise1.kr(0.1).poll}.play; // linearisan eri el a random erteket

{LFNoise2.kr(0.1).poll}.play; // gorbekkel eri el a random ertekeket


{SinOsc.ar(freq: 440) * 0.2}.play;

// signal moves between -1 and 1
// add + 1 between 0 and 2
// divide by 2 between 0 and 1
{SinOsc.ar(freq: (LFNoise1.ar(freq: 1) + 1) / 2) * 0.2}.play;

// absolute value leads to double frequency
{[SinOsc.ar(110), SinOsc.ar(110).abs] * 0.1}.play;

// valtozik ez a frekvencia csak nem hallod mert 439 - 441 kozott
{SinOsc.ar(freq: 440 + LFNoise1.ar(freq: 1, mul: 100)) * 0.2}.play;


// itt mar nem a mozgast hallani a hangban hanem inkabb zaj es
// idovel ez inkabb hangmagassagga valik
{SinOsc.ar(freq: 440 + LFNoise1.ar(freq: 200, mul: 100)) * 0.2}.play;


// fureszhullam
{Saw.ar() * 0.1}.play;

// egerrel vezerlem a frekvenciat
// warp: linearis vagy exponencialis skala
// Cmd + d a funkcion -> help
(
{Saw.ar(
	MouseX.kr(minval: 110, maxval: 1760, warp: 1).poll
) * 0.1}.play;
)

// egerrel vezerlem a hangerot is
(
{
	Saw.ar(
	freq: MouseX.kr(minval: 110, maxval: 1760, warp: 1).poll,
	mul: MouseY.kr(minval: 0, maxval: 0.1).poll)
}.play;
)

{Saw.ar(freq: [440, 660]) * 0.1}.play;


// haromszog hullam
(
{
	LFTri.ar(freq: [
		440 + LFNoise1.ar(freq: 10, mul: 200),
		660 + LFNoise1.ar(freq: 10, mul: 200)],
	mul: 1,
	add: 0) * 0.1;
}.play;
)

// veletlenszamok
rrand(1, 10); // integer
rrand(1, 10.0); // float
rrand(1, 10.0)!10; // 10x ugyanaz a szam
{rrand(1, 10.0)}!10 // 10 eltero random szam

// exponencialis veletlenszamok
// mas az eloszlas
exprand(1, 10);
exprand(1, 10)!10;
{exprand(1, 10)}!10;

x = Array.series(10, rrand(55, 880), 110);

x = {Array.series(10, Rand(55, 1600), 110)};

x = {Array.series(10, Rand(55, 1600), Rand(55, 330))};


// FM szintezis

(
{
	var sig, mf;
	mf = SinOsc.ar(1, mul: 100);
	sig = SinOsc.ar(freq: mf + 880) * 0.1;
	sig = Splay.ar(sig);
}.play;
)

// kontrollalom a modulacio sebesseget az x tengelyen
// kontrollalom a modulacio szelesseget az y tengelyen
(
{
	var sig, mf;
	mf = SinOsc.ar(
		freq: MouseX.kr(1, 3000, warp: 2).poll,
		mul: MouseY.kr(5, 300).poll);
	sig = SinOsc.ar(mf + 880) * 0.1;
	sig = Splay.ar(sig);
}.play;
)

// MouseX, MouseY helyere LFNoise1

(
{
	var sig, mf;
	mf = SinOsc.ar(
		freq: LFNoise0.ar(freq: 1, mul: 20).poll,
		mul: LFNoise2.ar(freq: 100, mul: 200).poll);
	sig = SinOsc.ar(mf + 440) * 0.1;
	sig = Splay.ar(sig);
}.play;
)

// burkologorbe
(
{
	SinOsc.ar(
		freq: exprand(110, 880).postln,
		phase: 0,
		mul: 1,
		add: 0) * 0.2
}.play;
)

// a 0.2 helyere kerul a burkologorbe
{SinOsc.ar(freq: exprand(110, 880), phase: 0, mul: 1, add: 0) * 0.2}.play;


// rengeteg fele burkologorbe
// lehet teljesen sajat is, akarhany lepessel
// megrajzolom
Env.perc(attackTime: 0.01, releaseTime: 1.0, level: 1.0, curve: -4.0).plot;

// burkologorbet le is kell jatszani
(
EnvGen.ar(Env.perc(
	attackTime: 0.01,
	releaseTime: 1.0,
	level: 0.2,
	curve: -4.0));
)

// vegleges kod amit lefuttatunk es kapunk egy hangot
(
{
	SinOsc.ar(
		freq: exprand(110, 880).postln,
		phase: 0,
		mul: 1,
		add: 0) * EnvGen.ar(Env.perc(level: 0.2), doneAction: 2);
}.play;
)

// -------
s.plotTree;
// -------

// impulzusgenerator a triggerhez
(
{

	SinOsc.ar(
		freq: exprand(110, 440).postln,
		phase: 0,
		mul: 1,
		add: 0) * EnvGen.ar(
		    envelope: Env.perc(level: 0.2),
		    gate: Impulse.kr(8),
		    doneAction: 2)
}.play;
)

// dust for random impulses
(
{
	SinOsc.ar(
		freq: exprand(110, 880).postln,
		phase: 0,
		mul: 1,
		add: 0) * EnvGen.ar(
		    envelope: Env.perc(
			    attackTime: 0.01,
			    releaseTime: 0.1,
			    level: 0.2),
		    gate: Dust.ar(density: 40),
		    doneAction: 2)
}.play;
)

// 2 random freqs with two density
(
{
	SinOsc.ar(
		freq: [rrand(220, 880),
			   rrand(440, 1760)],
		phase: 0,
		mul: 1,
		add: 0) * EnvGen.ar(
		    envelope: Env.perc(
			    attackTime: 0.01,
			    releaseTime: 0.1,
			    level: 0.2),
		gate: [Dust.ar(density: 40),
			   Dust.ar(density: 10)],
		    doneAction: 0)
}.play;
)

// szintetizator definialas
// SynthDef

(
{
	SinOsc.ar(
		freq: exprand(110, 880).postln,
		phase: 0,
		mul: 1,
		add: 0)
	*
	EnvGen.ar(
		envelope: Env.perc(level: 0.2),
		gate: Impulse.kr(1));
}.play;
)

// roviden:
{SinOsc.ar(freq: ) * EnvGen.kr(envelope: , gate: )};

// a SynthDef alapstrukturaja:
SynthDef(\nev, {}).add;

SynthDef(\szintetizator, {
	arg freq = 440.
}).add;

// lejatszas alap argumentumokkal
Synth(\szintetizator);


(
SynthDef(\szintetizator1, {
	arg freq = 440, lpf_freq = 110, amp = 0.2;
	var sig;

	sig = Saw.ar([freq, freq * (3/2)]);
	sig = LPF.ar(sig, lpf_freq);

	Out.ar(0, sig * amp);
}
).add;
)

x = Synth(\szintetizator1);

// futas kozben valtoztatom az argumentumokat
x.set(\amp, 1);
x.set(\lpf_freq, 330, \amp, 0.2);
x.set(\lpf_freq, 440, \freq, 660);
x.set(\lpf_freq, 440, \freq, 880);
x.set(\lpf_freq, 660, \freq, 880);

// inditasnal valtoztatom az argumentumokat
x = Synth(\szintetizator1, [\lpf_freq, 330, \amp, 0.7]);

s.plotTree;


(
SynthDef(\szintetizator2, {
	arg freq = 440, lpf_freq = 110, amp = 0.2;
	var sig;

	sig = SinOscFB.ar([freq, freq * (3/2)]);
	sig = HPF.ar(sig, lpf_freq);

	Out.ar(0, sig * amp);
}
).add;
)

y = Synth(\szintetizator2);
y.set(\freq, 550)

s.plotTree;


// ebbol legyen egy SynthDef
(
{
	SinOsc.ar(
		freq: rrand(110, 880).postln,
		phase: 0,
		mul: 1,
		add: 0)
	*
	EnvGen.ar(
		envelope: Env.perc(level: 0.2),
		gate: Impulse.kr(1));
}
)


(
SynthDef(\env01, {

	arg tempo = 1, amp = 1, out;
	var sig, env, gate, random;

	random = rrand(110, 880).postln;
	sig    = SinOsc.ar(freq: random);

	env  = Env.perc(level: 0.2);
	gate = Impulse.kr(freq: tempo);
	env  = EnvGen.kr(envelope: env, gate: gate);

	sig = sig * env;

	Out.ar(out, sig * amp);

}).add;
)

x = Synth(\env01, [\out, 0]);
x.set(\tempo, 0.6)


// patterns


(
SynthDef(\env02, {

	arg amp = 1, out;
	var sig, env, random;

	random = rrand(110, 880).postln;
	sig    = SinOsc.ar(freq: random);

	env = Env.perc(level: 0.2);
	env = EnvGen.kr(envelope: env, doneAction: 2);

	sig = sig * env;

	Out.ar(out, sig * amp);

}).add;
)

// Pseq ritmuskepletekhez
// Pbind szintetizator leajtszas
(
p = Pbind(
	\instrument, \env02,
	\dur, Pseq([0.4, 0.2, 0.2], inf),
	\out, 0
    ).play;
)

s.plotTree;

// dallam lejatszas
(
SynthDef(\env03, {

	arg amp = 1, freq = 440, out;
	var sig, env;

	sig    = SinOsc.ar(freq: freq!2);

	env = Env.perc(level: 0.2);
	env = EnvGen.kr(envelope: env, doneAction: 2);

	sig = sig * env;

	Out.ar(out, sig * amp);

}).add;
)

(
p = Pbind(
	\instrument, \env03,
	\dur, Pseq([0.4, 0.2, 0.2], inf),
	\freq, Pseq([60, 63, 67, 70].midicps, inf),
	\out, 0
    ).play;
)

// mikrofon, ugyanugy hasznalhato mint a szinusz oszcillator es hasonlok
{SoundIn.ar(0) * 0.1}.play;

// hangmintak

~buf01 = Buffer.read(server: s, path: "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/overtone-short.wav");
~buf01.duration;
~buf01.bufnum;
~buf01.numChannels;

~buf02 = Buffer.read(server: s, path: "/Users/esebesty/Dropbox/Documents/06-MUSIC/04-supercollider-workshop/electronic.wav");

{PlayBuf.ar(numChannels: 2, bufnum: ~buf01, rate: 1, loop: 1) * 0.2}.play;

{PlayBuf.ar(numChannels: 2, bufnum: ~buf02, rate: 1, loop: 1) * 0.2}.play;
