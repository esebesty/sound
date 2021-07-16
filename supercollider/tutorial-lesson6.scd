[6, 4, 0.5, 10, 7].do{"hello".postln};

(
[6, 4, 0.5, 10, 7].do{
    arg item;
    item.squared.postln;
}
)

(
[6, 4, 0.5, 10, 7].do{
    arg item, count;
    [count, item.squared].postln;
}
)

(
x = Array.newClear(5);

[6, 4, 0.5, 10, 7].do{
    arg item, count;
    x[count] = item.squared;
}
)

x;

(
z = [6, 4, 0.5, 10, 7].collect{
    arg item;
    item.squared;
}
)

z;

z = [6, 4, 0.5, 10, 7].collect(_.squared);

z;

5.do;

[0, 1, 2, 3,4 ].do{arg item; item.postln};

5.do{arg item; item.postln};

x = {VarSaw.ar(40!2, 0, 0.05)}.play;

x.free;

(
SynthDef.new(\iter, {
    var temp, sum;
    sum = 0;
    10.do{
        temp = VarSaw.ar(
            40 * {Rand(0.99, 1.02)}!2,
            0,
            0.05
        );
        sum = sum + temp;
    };
    sum = sum * 0.05;
    Out.ar(0, sum);
}).add;
)

x = Synth.new(\iter);

x.free;

(
SynthDef.new(\iter, {
    var temp, sum;
    sum = 0;
    10.do{
        temp = VarSaw.ar(
            40 * {Rand(0.99, 1.02)}!2,
            {Rand(0.0, 1.0)}!2,
            {ExpRand(0.005, 0.05)}!2
        );
        sum = sum + temp;
    };
    sum = sum * 0.05;
    Out.ar(0, sum);
}).add;
)

x = Synth.new(\iter);

x.free;

(
SynthDef.new(\iter, {
    var temp, sum, env;
    sum = 0;
    env = EnvGen.kr(
        Env.perc(0.01, 5, 1, -2),
        doneAction: 2
    );
    10.do{
        temp = VarSaw.ar(
            40 * {Rand(0.99, 1.02)}!2,
            {Rand(0.0, 1.0)}!2,
            {ExpRand(0.005, 0.05)}!2
        );
        sum = sum + temp;
    };
    sum = sum * 0.05 * env;
    Out.ar(0, sum);
}).add;
)

x = Synth.new(\iter);

x.free;

(
SynthDef.new(\iter, {
    arg freq = 40;
    var temp, sum, env;
    sum = 0;
    env = EnvGen.kr(
        Env.perc(0.01, 5, 1, -2),
        doneAction: 2
    );
    10.do{
        temp = VarSaw.ar(
            freq * {Rand(0.99, 1.02)}!2,
            {Rand(0.0, 1.0)}!2,
            {ExpRand(0.005, 0.05)}!2
        );
        sum = sum + temp;
    };
    sum = sum * 0.05 * env;
    Out.ar(0, sum);
}).add;
)

Synth.new(\iter, [\freq, 400]);
Synth.new(\iter, [\freq, 300]);
Synth.new(\iter, [\freq, 250]);
Synth.new(\iter, [\freq, 224]);


Synth.new(\iter, [\freq, 66.midicps]);
Synth.new(\iter, [\freq, 73.midicps]);
Synth.new(\iter, [\freq, 80.midicps]);
Synth.new(\iter, [\freq, 75.midicps]);

(
[53, 59, 63, 68].do{
    arg midinote;
    Synth.new(\iter, [\freq, midinote.midicps]);
}
)

(
SynthDef.new(\iter2, {
    arg freq = 200;
    var temp, sum;
    sum = 0;
    10.do{
        arg count;
        temp = SinOsc.ar(freq * (count + 1));
        sum = sum + temp;
    };
    sum = sum * 0.05;
    Out.ar(0, sum);
}).add;
)

x = Synth.new(\iter2);

x.free;

x = {Blip.ar(200, 10, 0.5)}.play;

x.free;

(
SynthDef.new(\iter2, {
    arg freq = 200;
    var temp, sum;
    sum = 0;
    10.do{
        arg count;
        temp = SinOsc.ar(
            freq *
            (count + 1) *
            LFNoise1.kr({Rand(0.05, 0.2)}!2).range(0.98, 1.02)
        );
        sum = sum + temp;
    };
    sum = sum * 0.05;
    Out.ar(0, sum);
}).add;
)

x = Synth.new(\iter2);

x.free;

(
SynthDef.new(\iter2, {
    arg freq = 200;
    var temp, sum;
    sum = 0;
    10.do{
        arg count;
        temp = SinOsc.ar(
            freq *
            (count + 1) *
            LFNoise1.kr({Rand(0.05, 0.2)}!2).range(0.98, 1.02)
        );
        temp = temp * LFNoise1.kr({Rand(0.5, 8)}!2).exprange(0.01, 1);
        sum = sum + temp;
    };
    sum = sum * 0.05;
    Out.ar(0, sum);
}).add;
)

x = Synth.new(\iter2);

x.set(\freq, 20);

x.free;

(
SynthDef.new(\iter2, {
    arg freq = 200, dev = 1.02;
    var temp, sum;
    sum = 0;
    10.do{
        arg count;
        temp = SinOsc.ar(
            freq *
            (count + 1) *
            LFNoise1.kr({Rand(0.05, 0.2)}!2).range(dev.reciprocal, dev)
        );
        temp = temp * LFNoise1.kr({Rand(0.5, 8)}!2).exprange(0.01, 1);
        sum = sum + temp;
    };
    sum = sum * 0.05;
    Out.ar(0, sum);
}).add;
)

x = Synth.new(\iter2);

x.set(\freq, 55, \dev, 1.01);

x.free;








