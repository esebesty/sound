MIDIClient.init;
MIDIIn.connectAll;
MIDIClient.sources; // honnan jönnek a MIDI jelek

[1, 16, "Yooo!"];
(
[
	MIDIEndPoint("IAC Driver", "Bus 1") // első helyen
	,
	MIDIEndPoint("nanoKONTROL2", "SLIDER/KNOB") // második helyen
]
)


SynthDef;

MIDIdef; // inkább ezt szoktam használni
MIDIFunc;






MIDIdef.noteOn();

MIDIdef.noteOff();

MIDIdef.cc(); // 0 - 127

MIDIdef.bend(); // 0 - 16384 (0 - 2^14)

/*
MIDI --» 0 - 127 a.k.a. 0 - 2^7

OSC --» 0 - 65535 a.k.a. 0 - 2^16
*/









MIDIdef.noteOn(); // ~= SynthDef();

MIDIdef.noteOn(\test01, {});
SynthDef(\test01, {}).add;


MIDIdef.noteOn(\midiontest, {"This is fantASStik".postln;});




// szabadítsd fel a MIDIdef-edet!
MIDIdef(\midiontest).free;

MIDIdef.freeAll;







(
SynthDef(\test02, {
	arg out, amp;
}).add;
)

(
MIDIdef.noteOn(\mididata, {
	arg velocity, noteNumber, channel;

	[ velocity, noteNumber, channel ].postln;
});
)










60.midicps;

440; // A
(440*(2**(1/12))).postln; // A#
(440*(2**(2/12))).postln; // H
(440*(2**(12/12))).postln; // A egy oktávval feljebb az eredeti A-hoz képest










(
MIDIdef.noteOn(\mididata, {
	arg vel, nn; // we'll only need these
	[vel, nn].postln;
});
)



{SinOsc.ar(440) * 0.01}.play;

s.boot;
s.meter;


(
MIDIdef.noteOn(\midisine01, {
	arg vel, nn;

	[vel, nn].postln;

	{SinOsc.ar(nn.midicps) * 0.01}.play;
});
)

s.plotTree;



{SinOsc.ar(440) * 0.01}.play;

(
MIDIdef.noteOn(\midisine02, {
	arg vel, nn;

	[vel, nn].postln;

	{
		var sig, env;

		sig = SinOsc.ar(nn.midicps) * 0.01;
		env = Env.perc();
		env = EnvGen.kr(
			envelope: env,
			doneAction: 2
		);

		sig = sig * env;
	}.play;
});
)

Env.perc().plot;





(
SynthDef(\tone01, {
	arg freq = 440, amp = 0.3;
	var sig, env;

	sig = LFTri.ar(freq)!2;
	env = Env.perc;
	env = EnvGen.kr(env,doneAction:2);

	sig = sig * env * amp;

	Out.ar(0,sig);
}).add;
)

Env.perc(level: 0.3).plot;

Synth(\tone01);

x = Synth(\tone01, [\freq, 700, \amp, 0.1]);


Synth(\tone01); // beleapplikálni egy MIDIdef.notOn()-ba

(
MIDIdef.noteOn(\miditone01, {
	arg vel, nn;

	[vel, nn].postln;

	Synth(\tone01, [
		\freq, nn.midicps,
		\amp, vel.linlin(0,127,0,0.3) ]);
});
)

MIDIdef.freeAll;





(
SynthDef(\tone02, {
	arg freq = 440, amp = 0.3, gate = 0;
	var sig, env;

	sig = LFTri.ar(freq)!2;
	env = Env.adsr;
	env = EnvGen.kr(env,gate:gate,doneAction:2);

	sig = sig * env * amp;

	Out.ar(0,sig);
}).add;
)

x = Synth(\tone02);
x.set(\gate, 1);
x.set(\gate, 0);

// ADSR = attack, decay, sustain, release

(
Env.adsr(curve: \lin).plot;
)

MIDIdef.freeAll;




(
MIDIdef.cc(\polyCC01, {
	| value, ccnumber, channel, source |

	[value, ccnumber, channel, source].postln;
});
)





(
MIDIdef.cc(\polyCC01, {
	arg value, ccnumber;

	[value, ccnumber].postln;
});
)


(
MIDIdef.cc(\polyCC02, {},ccNum:0)
)

(
MIDIdef.cc(\polyCC01, {
	arg value, ccnumber;

	[value, ccnumber].postln;
},ccNum:0);
)

(
SynthDef(\tone02, {
	arg freq = 440, amp = 0.1, gate = 0, bend = 1;
	var sig, env;

	sig = LFTri.ar(freq * bend.midiratio)!2;
	env = Env.adsr;
	env = EnvGen.kr(env,gate:gate,doneAction:2);

	sig = sig * env * amp;

	Out.ar(0,sig);
}).add;
)

x = Synth(\tone02, [\gate, 1]);
x.set(\gate, 0);

12.midiratio;


(
MIDIdef.freeAll;
MIDIdef.cc(\midiratio01, {
	arg value, ccnumber;

	value.postln;

	(440*value.linlin(0,127,0,12).midiratio).postln;

},ccNum:0);
)

(
MIDIdef.freeAll;

MIDIdef.noteOn(\midiratio01, {
	arg vel, nn;

	[vel, nn].postln;

	x = Synth(\tone02, [\gate, 1]);
});

MIDIdef.noteOff(\midiratio02, {
	arg vel, nn;

	[vel, nn].postln;

	x.set(\gate, 0);
});

MIDIdef.cc(\midiratio03, {
	arg value, ccnumber;

	value.postln;
	(440*value.linlin(0,127,0,12).midiratio).postln;

	x.set(\freq,440*value.linlin(0,127,0,12).midiratio);

},ccNum:0);
)

// innentől folyt. köv. :)