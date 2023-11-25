s.boot;

MIDIClient.init;

MIDIIn.connectAll;

(
SynthDef.new(\voices, {
    arg freq = 55, freqshift = 5, feed = 0.5, namp = 0.5, amp = 0.1;
    var sig;

	sig = SinOscFB.ar(freq, feedback: feed) + SinOscFB.ar(freq + freqshift) + (namp * Dust.ar(freq));

    sig = sig * amp;

    Out.ar(0, sig!2);
}).add;
)

x = Synth.new(\voices);

(

MIDIdef.cc(\voicescc1, {
	arg value, ccnumber;

	x.set(\freq, 55 * value.linlin(0, 127, 0, 12).midiratio);

}, ccNum: 13);

MIDIdef.cc(\voicescc2, {
	arg value, ccnumber;

    x.set(\freqshift, value.linlin(0, 127, 0, 55));

} , ccNum: 14);

MIDIdef.cc(\voicescc3, {
	arg value, ccnumber;

    x.set(\freqshift, value.linlin(0, 127, 0, pi));

} , ccNum: 15);

MIDIdef.cc(\voicescc4, {
	arg value, ccnumber;

    x.set(\namp, value.linlin(0, 127, 0, 1));

} , ccNum: 16);

)
