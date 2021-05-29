
// receive.message
3.squared

// clear post window cmd + shift + p


// s = server, do not use for variable

// global variable
// simple global variable can be a single lowercase letter (a-z) except s
x = 3.squared
x;


// run selection - shift + return
x = 16.sqrt;
x = x + 100;
x = x.squared;
x;

x = (16.sqrt + 100).squared;

x = nil;

// global variable: first letter is lowercase, rest is anything

// global - local variable

number = 16.sqrt
~number
~nUmber_01 = "ASS Budapest"
~nUmber_01

// local variable
var number, davoria;
number = 16.sqrt;

// shift + enter single line
// cmd + enter everything within the braces
(
var number;
number = 16.sqrt;
)

// does not work, not a global variable
number;

// errors
3.squarad;
3,squared;

3.squared; // emeljed negyzetre a harmat :)

/*
elso
masodik
harmadik
*/

// sinus

// start server
s.boot;

// stop server
s.quit;


// inputok
ServerOptions.inDevices;

// outputok
ServerOptions.outDevices;

// minden
ServerOptions.devices;


s.quit;

s.options.inDevice = "Built-in Microph";
s.options.outDevice = "Built-in Output";

s.boot;


s.meter;

{SinOsc.ar * 0.2}.play

// itt a SinOsc az egy uGen -> unit generator
// stop all sound Cmd + .
// SinOsc sinus hullam
// ar audio rate or control rate

// ha latni akarod
{SinOsc.ar * 0.1}.scope

{SinOsc.ar(freq: 110) * 0.2}.play
{SinOsc.ar(freq: 440) * 0.2}.play


(
{SinOsc.ar(
	freq: 440, // hangmagassag
	phase: 0, // kezdeti fazis, hullamforma melyik reszen kezdje el jatszani a hullamot
	mul: 1, //hangero
	add: 0) * 0.1}.play
)


// mono hang
(
{
	SinOsc.ar(
		freq: 666,
		phase: 0,
		mul: 1,
		add: 0
	) * 0.2
}.play;
)

// sztero hang

{SinOsc.ar(freq: [440, 660]) * 0.1}.play;


// a 880 a harmadik csatornan van, amit sztereoban nem hallunk
{SinOsc.ar(freq: [440, 660, 880]) * 0.2}.play;

{SinOsc.ar(freq: [444, 666, 888, 999]) * 0.2}.play;

// Splay a csatornak osszemixelesehez

x = {SinOsc.ar(freq: [444, 666, 888, 999]) * 0.2};

{Splay.ar(x, spread: 0)}.play

// szamlista generalas

FreqScope.new;
Stethoscope.new;

a = Array.series(size: 5, start: 110, step: 110);

y = {SinOsc.ar(freq: a) * 0.2};

{Splay.ar(y, spread: 0)}.play


(
{
	var list, sig1, sig2;

	list = Array.series(size: 10, start: 110, step: 110);
	sig1 = SinOsc.ar(freq: list) * 0.2;
	sig2 = Splay.ar(sig1);

}.play;
)


// create freqs
// Mix into mono
// use pan2 for positions
(
{
	var list, sig1, sig2, sig3;

	list = Array.series(size: 10, start: 130, step: 110);
	sig1 = SinOsc.ar(freq: list) * 0.02;
	sig2 = Mix.new(array: sig1);
	sig3 = Pan2.ar(in: sig2, pos: 0.5);
}.play;
)


// dinamikus panning position
// szinusz hullammal valtozik a pozicio (pos1)
// .poll a valtozo monitorozasahoz
// panning -1 bal +1 jobb

(
{
	var list, sig1, sig2, sig3, pos1;

	list = Array.series(size: 10, start: 110, step: 110);

	pos1 = SinOsc.kr(0.3).poll;

	sig1 = SinOsc.ar(freq: list) * 0.02;
	sig2 = Mix.new(array: sig1);
	sig3 = Pan2.ar(in: sig2, pos: pos1);
}.play;
)






