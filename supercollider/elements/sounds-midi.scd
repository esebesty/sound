s.boot;

MIDIClient.init;

MIDIIn.connectAll;

(
SynthDef.new(\voices, {
    arg freq = 40, dev = 1.02, wetd = 0, wetr = 0, amp = 0.05;
    var temp, sum, sumr, sumd;
    sum = 0;
    10.do{
        temp = VarSaw.ar(freq * LFNoise1.kr({Rand(0.05, 0.2)}!2).range(dev.reciprocal, dev),
            {Rand(0.0, 1.0)}!2,
            {ExpRand(0.005, 0.05)}!2
        );
        temp = temp * LFNoise1.kr({Rand(0.5, 8)}!2).exprange(0.01, 1);
        sum  = sum + temp;
    };

    sumd = DelayC.ar(sum, maxdelaytime: 2, delaytime: 1);

    sumr = FreeVerb.ar(sum, mix: 1, room: 0.5);

    sum = (sum * (1 - wetd)) + (sumd * wetd);

    sum = (sum * (1 - wetr)) + (sumd * wetr);

    sum = sum * amp;

    Out.ar(0, sum);
}).add;
)

x = Synth.new(\voices);

(
MIDIdef.cc(\voicescc1, {
	arg value, ccnumber;

    "Knob 1 - freq".postln;
	(40 * value.linlin(0, 127, 0, 12).midiratio).postln;

	x.set(\freq, 40 * value.linlin(0, 127, 0, 12).midiratio);

}, ccNum: 13);

MIDIdef.cc(\voicescc2, {
	arg value, ccnumber;

    "Slider 1 - dev".postln;
	(1 + value.linlin(0, 127, 0, 0.1)).postln;

	x.set(\dev, 1 + value.linlin(0, 127, 0, 0.1));

}, ccNum: 2);

MIDIdef.cc(\voicescc3, {
	arg value, ccnumber;

    "Slider 2 - delaymix".postln;
	value.linlin(0, 127, 0, 1).postln;

	x.set(\wetd, value.linlin(0, 127, 0, 1));

}, ccNum: 3);

MIDIdef.cc(\voicescc4, {
	arg value, ccnumber;

    "Slider 3 - reverbmix".postln;
	value.linlin(0, 127, 0, 1).postln;

	x.set(\wetr, value.linlin(0, 127, 0, 1));

}, ccNum: 4);

)