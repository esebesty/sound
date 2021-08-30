s.boot;
s.meter;
s.plotTree;
FreqScope.new;


// SynthDef-ek //
// playback //


















// SynthDef-ek //

(
// hangforrás SynthDef-je
SynthDef(\src02, {
	arg freq = 440, lpffreq = 440, amp = 0.1, detune = 1.001, out;
	var sig, env;

	// src
	sig = Pulse.ar([freq,freq*detune]); // tettem ide egy "detune"-t --» legyen nagyobb térérzet vsszajátszás során --» ezáltal ez a SynthDef már sztereó jelet fog kiadni magából

	// amplitude env
	env = Env.perc();
	env = EnvGen.kr(env, doneAction:2);

	sig = sig * env * amp;

	Out.ar(out,sig);
}).add;





// LPF SynthDef-je
SynthDef(\lpf01, {
	arg in, lpffreq = 440, gate = 1, atk = 0.001, rls = 0.1, out;
	var sig,  env;

	// in
	sig = In.ar(in,2); // a bejövő csatornák száma már 2, mert a fenti SynthDef sztereóvá vált
	// LPF
	sig = LPF.ar(
		in: sig,
		freq: lpffreq);

	env = Env.asr(
		attackTime: atk,
		sustainLevel: 0.49,
		releaseTime: rls,
		curve: \sin);
	env = EnvGen.kr(env, gate, doneAction:2);

	Out.ar(out,sig*env);
}).add;
)















































// playback //






// Bus
~srcBus = Bus.audio(s,2); // már sztereó jellel dolgozunk!







// listák globális változókba
(
~p01 = [60, 62, 64, 67, 69]; // freq pattern
~p02 = [60, 63, 66, 68, 74]; // rhythm pattern
~p03 = [200, 1000, 4000, 8000, 16000]; // LPF cutoff freq pattern
)












// 1.) minden pattern szekvencia (a.k.a. Pseq)
(
// Csoportok
~srcGrp = Group.new(addAction: \addToHead);
~fxGrp = Group.new(addAction: \addToTail);



// a tempót itt tudjátokbeállítani
TempoClock.default.tempo = 60/60;



// Patternek

// hangforrás-hoz tartozó Pattern
~srcPattern01 = Pbind(
	\instrument, \src02,
	\freq, Pseq((~p01++~p02-24).midicps,inf).trace,
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf),
	\amp, Pseq([0.2,0.1,0.1,0.1,0.1],inf),
	\detune, 1.01,
	\group, ~srcGrp,
	\out, ~srcBus).play;

// LPF-hez tartozó Pattern
~fxPattern01 = Pbind(
	\instrument, \lpf01,
	\in, ~srcBus,
	\lpffreq, Pseq(~p03,inf).trace,
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf),
	\atk, 0.01,
	\rls, 0.001,
	\legato, 0.99, // ez segít abban, hogy a következő lejátszás előtt mennyivel zárja le a mostani Synth-et. Az alábbi példát meghallgatva talán vlágosabb lesz, hogy miről beszélek :)
	\group, ~fxGrp,
	\out, 0).play;
)














// 2.) random cutoff freq + "\lpf01" "\dur"-ja 1/8 + "\legato" = 0.1

(
// csoportok
~srcGrp = Group.new(addAction: \addToHead);
~fxGrp = Group.new(addAction: \addToTail);



// tempó
TempoClock.default.tempo = 60/60;



// Pattern-ek

// hangforrás-hoz tartozó Pattern
~srcPattern01 = Pbind(
	\instrument, \src02,
	\freq, Pseq((~p01++~p02-24).midicps,inf).trace,
	\dur, Pseq([1,0.5,1,1,0.5]/4,inf),
	\amp, Pseq([0.2,0.1,0.1,0.1,0.1],inf),
	\detune, 1.01,
	\group, ~srcGrp,
	\out, ~srcBus).play;



// LPF-hez tartozó Pattern
~fxPattern01 = Pbind(
	\instrument, \lpf01,
	\in, ~srcBus,
	\lpffreq, Pxrand(~p03,inf).trace,
	\dur, 1/8,
	\atk, 0.01,
	\rls, 0.1,
	\legato, 0.1, // próbáljatok ezen az értéken változtatni. 0-nál magasabb számot lehetőleg :)
	\group, ~fxGrp,
	\out, 0).play;
)