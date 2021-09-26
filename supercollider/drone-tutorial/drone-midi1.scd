(
SynthDef.new(\dronelow, {
    arg freq = 40;
    var temp, sum;

    sum = 0;

    10.do{
        temp = VarSaw.ar(
            freq * {Rand(0.99, 1.02)}!2,
            {Rand(0.0, 1.0)}!2,
            {ExpRand(0.005, 0.05)}!2
        );
        sum = sum + temp;
    };

    sum = sum * 0.05;

    Out.ar(0, sum);

}).add;
)

x = Synth.new(\dronelow);

(
SynthDef.new(\dronehigh, {
    arg ampHz = 4, fund = 40, maxPartial = 4, width = 0.5;
    var amp1, amp2, freq1, freq2, sig1, sig2;

    amp1 = LFPulse.kr(ampHz, 0, 0.12) * 0.75;
    amp2 = LFPulse.kr(ampHz, 0.5, 0.12) * 0.75;

    freq1 = LFNoise0.kr(4).exprange(fund, fund * maxPartial).round(fund).poll(label: "freq1");
    freq2 = LFNoise0.kr(4).exprange(fund, fund * maxPartial).round(fund).poll(label: "freq2");

    freq1 = freq1 * LFPulse.kr(8, add: 1).poll(label: "freq1a");
    freq2 = freq2 * LFPulse.kr(6, add: 1).poll(label: "freq2a");

    sig1 = Pulse.ar(freq1, width, amp1);
    sig2 = Pulse.ar(freq2, width, amp2);

    sig1 = FreeVerb.ar(sig1, 0.7, 0.8, 0.25);
    sig2 = FreeVerb.ar(sig2, 0.7, 0.8, 0.25);

    Out.ar(0, sig1);
    Out.ar(1, sig2);
}).add;
)

y = Synth.new(\dronehigh);


(
MIDIdef.cc(\mididronecc1, {
	arg value, ccnumber;

	value.postln;
	(40 * value.linlin(0, 127, 0, 12).midiratio).postln;

	x.set(\freq, 40 * value.linlin(0, 127, 0, 12).midiratio);

}, ccNum: 2);

MIDIdef.cc(\mididronecc2, {
	arg value, ccnumber;

	value.postln;
	(40 * value.linlin(0, 127, 0, 12).midiratio).postln;

	y.set(\fund, 40 * value.linlin(0, 127, 0, 12).midiratio);

}, ccNum: 3);

MIDIdef.cc(\mididronecc3, {
	arg value, ccnumber;

	value.postln;
	(50 * value.linlin(0, 127, 0, 12).midiratio).postln;

	y.set(\maxPartial, 4 * value.linlin(0, 127, 0, 12).midiratio);

}, ccNum: 4);

)