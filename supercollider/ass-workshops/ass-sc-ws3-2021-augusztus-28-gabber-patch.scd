// 60Hz Gabber Rave 1995


// -- SynthDefs -- //
// gabber kick //
// hoover //
// -- Playbacks -- //

// -- SynthDefs -- //
(

// gabber kick //
SynthDef(\gabberkick, {
    var snd, freq, high, lfo;


	// freq
    freq = \freq.kr(440)
	*
	// env modifies the original pitch
	(Env.perc(0.001, 0.08, curve: -1).ar * 48 * \bend.kr(1)).midiratio;

	// src
    snd = Saw.ar(freq);
    snd = (snd * 100).tanh + ((snd.sign - snd) * -8.dbamp);

	// HPF
    high = HPF.ar(snd, 300);
    lfo = SinOsc.ar(8, [0, 0.5pi]).range(0, 0.01);
    high = high.dup(2)
	+
	(DelayC.ar(
		in: high,
		maxdelaytime: 0.01,
		delaytime: lfo)
	* -2.dbamp);

	// LPF
    snd = LPF.ar(snd, 100).dup(2) + high;
    snd = RLPF.ar(snd, 7000, 2);

	// parametric equalizer
    snd = BPeakEQ.ar(
		in: snd,
		freq: \ffreq.kr(3000) * XLine.kr(1, 0.8, 0.3),
		rq: 0.5,
		db: 15);

	// env
    snd = snd * Env.asr(0.001, 1, 0.05).ar(2, \gate.kr(1));

	// out
    Out.ar(\out.kr(0), snd * \amp.kr(0.1));
}).add;









// hoover //
SynthDef(\hoover, {
    var snd, freq, bw, delay, decay;

	// create sound //
	// freq
    freq = \freq.kr(440);
    freq = freq * Env([-5, 6, 0], [0.1, 1.7], [\lin, -4]).kr.midiratio;

	// src
    bw = 1.035;
    snd = { DelayN.ar(Saw.ar(freq * ExpRand(bw, 1 / bw)) + Saw.ar(freq * 0.5 * ExpRand(bw, 1 / bw)), 0.01, Rand(0, 0.01)) }.dup(20);

	// stereo
    snd = (Splay.ar(snd) * 3).atan;

	// amplitude envelope
    snd = snd * Env.asr(0.01, 1.0, 1.0).kr(0, \gate.kr(1));

	// reverb
    snd = FreeVerb2.ar(snd[0], snd[1], 0.3, 0.9);

	// create dynamic amplitde //
	// amplitude envelope
    snd = snd * Env.asr(0, 1.0, 4, 6).kr(2, \gate.kr(1));

	// out
    Out.ar(\out.kr(0), snd * \amp.kr(0.1));
}).add;
)











































// -- Playbacks -- //

(
var durations;

// rhythm
durations = [1, 1, 1, 1, 3/4, 1/4, 1/2, 3/4, 1/4, 1/2]; // [1, 1, 1, 2, 1/4, 1/4, 1/3, 3/4, 1/4, 1/2];

Ppar([
    Pbind(*[
        instrument: \gabberkick,
        amp: -23.dbamp,
        freq: 60,
        legato: 0.8,
        ffreq: Pseq((0..(durations.size * 4 - 1)).normalize, inf).linexp(0, 1, 100, 4000),
        dur: Pseq(durations, inf),
        bend: Pfuncn({ |x| if(x < (1/2), 0.4, 1) }, inf) <> Pkey(\dur),
    ]),
    Pbind(*[
        instrument: \hoover,
        amp: -20.dbamp,
        midinote: 74,
        dur: durations.sum * 2,
        sustain: 7,
    ])
]).play(TempoClock(210 / 60));
)