s.boot;
s.meter;
s.plotTree;

{Pan2.ar(PinkNoise.ar()*MouseY.kr(0,0.5),MouseX.kr(-1,1))}.play;

(
~jb = Buffer.read(
	server: s,
	path: "/Users/mac/müz/samples-all/Judith Butler on making noise (from Part 6-6) - 01 short.wav");
)

~jb.duration;
~jb.numFrames;

~jb.numFrames/44100;


// uGen --» PlayBuf
(
SynthDef(\playback, {
	arg bufnum, endframe = 1, rate = 1, tfreq = 1, amp = 1, start = 0, out;
	var sig, trig;

	trig = Impulse.kr(tfreq);
	sig = PlayBuf.ar(
		numChannels: 2,
		bufnum: bufnum,
		rate: rate,
		trigger: trig,
		startPos: start.linlin(0,1,0,endframe),
		loop: 1);

	Out.ar(out,sig * amp);
}).add;
)

x = Synth(\playback, [\bufnum, ~jb, \out, 0, \endframe, ~jb.numFrames-1]);
x.set(\start, 0.5);
x.set(\tfreq, 7);
x.free;

(
x.free;
x = Synth(\playback, [\bufnum, ~jb, \out, 0, \endframe, ~jb.numFrames-1]);
)










(
SynthDef(\playback2, {
	arg bufnum, endframe = 1, rate = 1, tfreq = 1, amp = 1, out;
	var sig, trig;

	trig = Impulse.kr(tfreq);
	sig = PlayBuf.ar(
		numChannels: 2,
		bufnum: bufnum,
		rate: rate,
		trigger: trig,
		startPos: MouseX.kr().linlin(0,1,0,endframe),
		loop: 1);

	Out.ar(out,sig * amp);
}).add;
)

x = Synth(\playback2, [\bufnum, ~jb, \out, 0, \endframe, ~jb.numFrames-1]);
x.set(\tfreq, 10);
x.free;





// grainbuf

(
~jbuf = Buffer.readChannel(
	server: s,
	path: "/Users/mac/müz/samples-all/Judith Butler on making noise (from Part 6-6) - 01 short.wav",
	channels: [0]
);
)

~jbuf.duration;

(
SynthDef(\grain01, {
	arg out, bufnum, amp = 1, tfreq = 1, dur = 1, rate = 1, pos = 0, panfreq = 1;
	var sig, trig, pan;

	trig = Impulse.ar(tfreq);
	pan = LFNoise1.ar(panfreq);
	sig = GrainBuf.ar(
		numChannels: 2,
		trigger: trig,
		dur: dur,
		sndbuf: bufnum,
		rate: rate,
		pos: pos,
		pan: pan);

	Out.ar(out, sig * amp);
}).add;
)


x = Synth(\grain01, [\out, 0, \bufnum, ~jbuf]);
x.set(\tfreq, 10);





















(
SynthDef(\grain02, {
	arg out, bufnum, amp = 1, tfreq = 1, dur = 1, rate = 1, panfreq = 1, posfreq = 1;
	var sig, trig, pan;

	trig = Impulse.ar(tfreq);
	pan = LFNoise1.ar(panfreq);
	sig = GrainBuf.ar(
		numChannels: 2,
		trigger: trig,
		dur: dur,
		sndbuf: bufnum,
		rate: rate,
		pos: LFNoise1.kr(posfreq).range(0,1),
		pan: pan);

	Out.ar(out, sig * amp);
}).add;
)


x = Synth(\grain02, [\out, 0, \bufnum, ~jbuf]);
x.set(\tfreq, 10);
x.set(\posfreq, 0.05);




x = Synth(\grain02, [\out, 0, \bufnum, ~jbuf, \tfreq, 10, \posfreq, 0.05, \amp, 0.5]);

3.do{arg index; index.postln};

~synth = Array.newClear(3);

(
3.do{

	arg index;
	~synth[index] = Synth(\grain02, [
		\out, 0,
		\bufnum, ~jbuf,
		\tfreq, 10,
		\posfreq, 0.1,
		\amp, 0.2]);
};
)

~synth[0].free;
~synth[1].free;
~synth[2].free;

~synth[0].set(\amp, 0.1);
~synth[1].set(\amp, 0.1);
~synth[2].set(\amp, 0.8);

~synth[0,1,2].set(\amp, 0.1);



(
4.do{arg item; item.postln};
)





(

~grpsynth = Group.new;

3.do{

	arg index;
	~synth[index] = Synth(\grain02, [
		\out, 0,
		\bufnum, ~jbuf,
		\tfreq, rrand(5.5,20.5),
		\posfreq, 0.1,
		\amp, 0.2
	], ~grpsynth
	);
};
)

~grpsynth.set(\amp, 0.4);

~synth[2].set(\amp, 0.1);












(
SynthDef(\grain03, {
	arg out, bufnum, amp = 1, tfreq = 1, dur = 1, rate = 1, panfreq = 1, posfreq = 1;
	var sig, trig, pan;

	trig = Impulse.ar(tfreq);
	pan = LFNoise1.ar(panfreq);
	sig = GrainBuf.ar(
		numChannels: 2,
		trigger: trig,
		dur: dur,
		sndbuf: bufnum,
		rate: rate,
		pos: SinOsc.ar(posfreq).range(0,1),
		pan: pan);

	Out.ar(out, sig * amp);
}).add;
)

(

~grpsynth = Group.new;

3.do{

	arg index;
	~synth[index] = Synth(\grain03, [
		\out, 0,
		\bufnum, ~jbuf,
		\tfreq, rrand(10.5,20.5),
		\posfreq, rrand(0.01,0.02),
		\amp, 0.2
	], ~grpsynth
	);
};
)

~grpsynth.set(\amp, 0.4);

~synth[2].set(\amp, 0.1);

Pan2;
Pan4;
PanAZ;