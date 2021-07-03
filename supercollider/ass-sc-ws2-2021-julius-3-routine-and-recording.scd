(
Routine({
	Synth(\xyz);

	1.wait;

	Synth(\lol);
}).play;
)


// record audio //
s.record(numChannels: 2);
s.stopRecording;