s.boot;
s.meter;
s.plotTree;

// read from a sound file //
// play it back //
// grainbuf //
// grain + mouse //
// grain + mouse + .do() + more automation //













// read from a sound file //
(
~jb = Buffer.read(
	server: s,
	path: "/Users/mac/müz/samples-all/Judith Butler on making noise (from Part 6-6) - 01 short.wav");
)

~jb.numFrames;









// play it back //
(
SynthDef(\playback, {
	arg bufnum, rate = 1, tfreq = 1, start = 0, amp = 1, out;
	var trig, sig;

	trig = Impulse.kr(1/tfreq);
	sig = PlayBuf.ar(
		numChannels: 2,
		bufnum: bufnum,
		rate: BufRateScale.kr(bufnum)*rate,
		trigger: trig,
		startPos: start.linlin(0.0,1.0,0,~jb.numFrames-1),
		loop: 1);

	Out.ar(0,sig*amp);
}).add;
)

x = Synth(\playback, [\bufnum, ~jbuf, \out, 0]);
x.set(\start, 0.5); // 0.35
x.set(\tfreq, 0.125);
x.free;











// grainbuf //
(
~jbuf.free;
~jbuf = Buffer.readChannel(
	server: s,
	path: "/Users/mac/müz/samples-all/Judith Butler on making noise (from Part 6-6) - 01 short.wav",
	channels: [0]
);
)

// just the panning is automated here
(
SynthDef(\grain01,  {
	arg bufnum, out, amp = 1, dur = 1, rate = 1, pos = 0, tfreq = 1, panfreq = 1;
	var trig, pan, sig;

	trig = Impulse.ar(tfreq);
	pan = LFNoise1.kr(panfreq);
	sig = GrainBuf.ar(
		numChannels: 2,
		trigger: trig,
		dur: dur,
		sndbuf: bufnum,
		rate: rate,
		pos: pos,
		pan: pan);

	Out.ar(out, sig*amp);
}).add;
)

x = Synth(\grain01, [\bufnum, ~jbuf, \out, 0]);
x.set(\tfreq, 10)
















// grain + mouse //
// controlling the position with the mouse
(
SynthDef(\grain02,  {
	arg bufnum, out, amp = 1, dur = 1, rate = 1, tfreq = 1, panfreq = 1;
	var trig, pan, sig;

	trig = Impulse.ar(tfreq);
	sig = GrainBuf.ar(
		numChannels: 2,
		trigger: trig,
		dur: dur,
		sndbuf: bufnum,
		rate: rate,
		pos: MouseX.kr(0,1).poll(label: "pos"),
		pan: MouseY.kr(-1,1).poll(label: "pan"));

	Out.ar(out, sig*amp);
}).add;
)

x = Synth(\grain02, [\bufnum, ~jbuf, \out, 0]);
x.set(\tfreq, 10);






















// grain + mouse + .do() //
// controlling the position with the mouse
(
SynthDef(\grain03,  {
	arg bufnum, out, amp = 1, dur = 1, rate = 1, tfreq = 1, panfreq = 1, posfreq = 1;
	var trig, pan, sig;

	trig = Impulse.ar(tfreq);
	sig = GrainBuf.ar(
		numChannels: 2,
		trigger: trig,
		dur: dur,
		sndbuf: bufnum,
		rate: rate,
		pos: LFNoise1.kr(posfreq,0.45,0.45),
		pan: LFNoise1.kr(panfreq));

	Out.ar(out, sig*amp);
}).add;
)

x = Synth(\grain03, [\bufnum, ~jbuf, \tfreq, 20, \out, 0]);

(
15.do{
	Synth(\grain03,
		[
			\bufnum, ~jbuf,
			\tfreq, 20,
			\out, 0,
			\dur, 0.07,
			\rate, 1,
			\posfreq, rrand(0.05,0.1),
			\panfreq, rrand(0.8,1.2),
			\amp, 0.1
	]);
};
)







// grain + mouse + .do() + more automation //
// LFNoise1 controlling duration time of grains
(
SynthDef(\grain04,  {
	arg bufnum, out, amp = 1, rate = 1, tfreq = 1, panfreq = 1, posfreq = 1, durfreq = 1;
	var trig, dur, pan, sig;

	trig = Impulse.ar(tfreq);
	dur = LFNoise1.kr(durfreq).exprange(0.06,0.2);
	sig = GrainBuf.ar(
		numChannels: 2,
		trigger: trig,
		dur: dur,
		sndbuf: bufnum,
		rate: rate,
		pos: LFNoise1.kr(posfreq,0.45,0.45),
		pan: LFNoise1.kr(panfreq));

	Out.ar(out, sig*amp);
}).add;
)

(
15.do{
	Synth(\grain04,
		[
			\bufnum, ~jbuf,
			\tfreq, 20,
			\out, 0,
			\durfreq, 2,
			\rate, rrand(0.9,1.1),
			\posfreq, rrand(0.05,0.1),
			\panfreq, rrand(0.8,1.2),
			\durfreq, 10,
			\amp, 0.3
	]);
};
)