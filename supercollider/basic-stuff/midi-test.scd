s.boot;

MIDIClient.init;

MIDIIn.connectAll;

(
SynthDef.new(\voices, {
    arg freq = 110, freqshift = 5, amp = 0.1;
    var sig;

    sig = SinOscFB.ar(freq) + SinOscFB.ar(freq + freqshift) + Dust.ar(freq);

    sig = sig * amp;

    Out.ar(0, sig!2);
}).add;
)

x = Synth.new(\voices);

(

MIDIdef.cc(\voicescc1, {
	arg value, ccnumber;

    "Knob 1 - freq".postln;
	(110 * value.linlin(0, 127, 0, 12).midiratio).postln;

	x.set(\freq, 110 * value.linlin(0, 127, 0, 12).midiratio);

}, ccNum: 13);

MIDIdef.cc(\voicescc2, {
	arg value, ccnumber;

    "Knob 2 - freqshift".postln;
	value.linlin(0, 127, 0, 110).postln;

	x.set(\freqshift, value.linlin(0, 127, 0, 110));

}, ccNum: 14);


)