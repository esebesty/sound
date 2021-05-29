
// sound1
(
{
	var list, sig1, sig2, sig3, pos1;

	list = Array.series(size: 5, start: 110, step: 110);
	pos1 = SinOsc.kr(0.2);
	sig1 = SinOsc.ar(freq: list, phase: 0.5) * 0.02;
	sig2 = Mix.new(array: sig1);
	sig3 = Pan2.ar(in: sig2, pos: pos1);
}.play;
)

// sound2
(
{
	var list, sig1, sig2, sig3, pos1;

	list = Array.series(size: 10, start: 110, step: 110);
	pos1 = SinOsc.kr(0.4);
	sig1 = SinOsc.ar(freq: list) * 0.02;
	sig2 = Mix.new(array: sig1);
	sig3 = Pan2.ar(in: sig2, pos: pos1);
}.play;
)

// sound3
(
{
	var list, sig1, sig2, sig3, pos1, pos2;

	list = Array.series(size: 5, start: 220, step: 220);
	pos1 = SinOsc.kr(0.2);
	pos2 = SinOsc.kr(0.4);
	sig1 = SinOsc.ar(freq: list) * 0.02;
	sig2 = Mix.new(array: sig1);
	sig3 = Pan4.ar(in: sig2, xpos: pos1, ypos: pos2);
}.play;
)