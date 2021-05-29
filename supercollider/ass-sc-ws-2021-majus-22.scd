/*
Ahhoz hogy halljunk is valamit, be kell kapcsolni a SC szerverét
*/
s.boot;
// így tudod kikapcsolni a szervert:
s.quit;

// ezzel tudod megnézni, hogy milyen input-ok léteznek a gépeden:
ServerOptions.inDevices;
// ezzel tudod megnézni, hogy milyen output-ok léteznek a gépeden:
ServerOptions.outDevices;

// ezzel be tudod állítani, hogy a komputered melyik input-ját és output-jőt használja:
s.options.device = "ha a géped input és output eszközének a neve ugyanaz, akkor azt ide írd bele";
s.options.inDevice = "a géped input eszközének a neve";
s.options.outDevice = "a géped output eszközének a neve";

// ezzel tudod megnézni, hogy a beállításaid sikeresek voltak-e:
s.options.inDevice.postln;
s.options.outDevice.postln;


// TARTALOMJEGYZÉK

// basic syntax //
// színusz hullám létrehozása //
// behelyettesítés, több mint 2 hang létrehozása //
// listák létrehozása //




// basic syntax //


// receive.message
3.squared;

// globális változó - global variable
x = 3.squared;
x;

// s = szerver

x+10;

x = 4.squared;

x = [1,2,3,47,2,8];

x = 16.sqrt;
x = x+100;
x = x.squared;

x = (16.sqrt+100).squared;

x;
x = nil;

// változók -- globális és helyi (lokális)

// globális változó
number = 16.sqrt;
~nUmber_01 = "ASS Budapest"
~nUmber_01;

// lokális változó
var number, text, ass_budapest, megszentségteleníthetetlenségeskedéseitekért, davoria;
number = 16.sqrt;

(
var number;
number = 16.sqrt;
)

number;

~number = 16.sqrt;
~number;


// receive.message; «-- objektum egy üzenetet kap

// helyesírás-hibák
3.squarad;
3,squared;


3.squared; // emelje négyzetre a 3-at :) ksdjfh skdjfhasdfoigh y flgkjdsfg oiuadfg lsdkfjbg

/*
Üzenet magadnak
több sorba

1.) József utca

2.) Mátyás tér

"Davoria"

*/

s.reboot;


// színusz hullám létrehozása //

s.meter;

// ezzel tudsz színusz hangot létrehozni:
{SinOsc.ar * 0.2}.play;

// itt a SinOc = uGen --» unit generator


/* a legfontosabb "parancs" a SC-ben --» ctrl + .
Macintosh komputeren --» cmd + .
*/

// ha látni akarod a hullámformát:
{SinOsc.ar*0.2}.scope;




// így befolyásolhatod a hullámforma hangerejét és hangmagasságát:
{SinOsc.ar(440)*0.1}.play;

{SinOsc.ar(freq: 220,mul:0.2)}.play;

// ha látni akarod azokat a paramétereket, amiket befolyáslni tudsz:
(
{SinOsc.ar(
	freq: 440, // hangmagasság
	phase: 0, // "kezdeti fázis" = a hullámforma melyik részén kezdje el játszani a színusz hullámot.
	mul: 1, // hangerő -- VIGYÁZZ!!! Ez fülsiketítően hangos tud lenni, ha 1-nél magasabbra állítod.
	// Általában 0.5 vagy 0.6 a felső határ amit én szoktam használni.
	add: 0)*0.1}.play;
)

(
{
	SinOsc.ar(
		freq: 666,
		phase: 0,
		mul: 1,
		add: 0
	)*0.2
}.play;
)


/*
a legtöbb "funkció" (minden ami kapcsos zárójelen belül lévő parancs)
egy csatornán fog szólni alapbeállítás szerint. Ez mindig az első csatornát jelenti (bal hangszóró/füles)

Ha szeretnéd sztereóban hallani futtasd ezt:
*/
{SinOsc.ar(freq: [440,660])*0.1}.play;

{SinOsc.ar(freq: [444,666,888,999])*0.2}.play;


// globális változóba is bele lehet tenni a SinOsc-ot
{Splay.ar(SinOsc.ar(freq: [444,666,888,999])*0.2)}.play;

x = {SinOsc.ar(freq: [444,666,888,999])*0.2}; // ne felejtsétek el a kapcsos zárójelet

{Splay.ar(x, spread: 0)}.play;




// behelyettesítés, több mint 2 hang létrehozása //
/*
ebben az esetben három hangmagasságot kellene hogy hallj, viszont csak kettőt fogsz hallani:
*/
{SinOsc.ar(freq: [440,660,990])*0.1}.play;
// de mivel itt három hangmagassághoz 3 db színusz generátort használtunk, ezért a harmadik a harmadik
// csatornán fog megszólalni, ami nekünk egyelőre nincsen, csak sztereó.

/*
erre találták ki az "Splay" nevű parancsot. Splay = Stereo play
ennek az Splay-nek a segítségével lehet sztereóba tenni a 2-nél több csatornás hangot.
*/

// ezt még ne futtasd!
{Splay.ar("ide kerül valamilyen 2-nél több csatornás hang, amit létrehoztál")}.play;
// ezt hívják "nesting"-nek (behelyettesítésnek/beültetésnek) = egy funkciót beleültetsz a másikba.

// a mi esetünkben ezt a színusz hullámot 3 hangmagassággal, tehát ezt:
SinOsc.ar(freq: [440,660,990])*0.1; // ezt se futtasd még!
// kell beleültetni ebbe az Splay funkcióba:
Splay.ar(); // ezt se futtasd még :)

// így kell kinézzen ez a behelyettesítés:
{Splay.ar(SinOsc.ar(freq: [440,660,990])*0.1)}.play;

// most hasonlítsuk össze a fenti hangot ezzel, amit az elejét csináltunk:
{SinOsc.ar(freq: [440,660,990])*0.1}.play;




// listák létrehozása //

/*
Természetesen 3-nál jóval több hangmagasságot is létre lehet hozni.

Erre nagyon jól jönnek a listák.
Ezekben a listákban létre tudunk hozni több hangmagasságot valamilyen szempont szerint anélkül, hogy ezt
mind kézzel csinálnák meg.

Egy módja ennek az "Array" nevű funkció használata:
*/
Array.series(size: 5,start:  110,step:  110);

// ezt a sorozatot ültessük bele a SinOsc-ba (ez a színusz-hullám generátor) úgy, hogy a hangmagasságot
// befolyásolja:
{Splay.ar(SinOsc.ar(freq: Array.series(20, 110, 110))*0.1)}.play;
// most próbáld meg azt, hogy ne 5 hanem 10 hangmagasságot hozzon létre!

// hozzá lehet rendelni listát globális változóhoz
y = Array.series(size: 10,start:  55,step:  55);
(
x = {
	var sig, amp;
	sig = SinOsc.ar(freq: y);
	sig = Splay.ar(sig*0.06);
}.play;
)

x.free;

// nézzünk rá arra, hogy ez a spektrum-elemzőn hogy néz ki:
FreqScope.new;
/*
A spektrum-elemző (spectrum-analyzer) arra jo, hogy a hangmagasságokat tudjuk vizsgálni rajta: milyen
erősséggel vannak jelen abban a hangban, amit létrehoztunk.
*/

// tisztázzuk a fenti kódot egy kicsit, hogy átláthatóbb legyen:
(
{Splay.ar(
	SinOsc.ar(
	freq: Array.series(20, 110, 110))*0.1,
	spread: 1) // ezzel tudjuk szabályozni, hogy középen legyen a hang, vagy szórja szét a sztereó térben.
}.play;
)


// ezzel a módszerrel az alaphanghoz a felhangjait adjuk hozzá





/*
próbáljunk ki egy másik lista-típust, ami nem hozzáad az előző értékhez
hanem megszorozza egy megadott értékkel
*/
Array.geom(5, 220, 2); // szoroz
Array.series(5, 220, 2); // hozzáad

(
{Splay.ar(
	SinOsc.ar(
	freq: Array.series(5, 220, 2))*0.1,
	spread: 1) // ezzel tudjuk szabályozni, hogy középen legyen a hang, vagy szórja szét a sztereó térben.
}.play;
)

// figyeljük meg hogy lüktet a hang amit létrehoztunk!

// most próbáljuk meg azzal a listával, ahol az előző értéket szorozza:
(
{Splay.ar(
	SinOsc.ar(
	freq: Array.geom(5, 220, 2))*0.1,
	spread: 1) // ezzel tudjuk szabályozni, hogy középen legyen a hang, vagy szórja szét a sztereó térben.
}.play;
)

// így tkp. oktávokat hozunk létre



y = Array.series(size: 5,start:  110,step:  110);
x = {SinOsc.ar(freq: y)*0.2};

{Splay.ar(x)}.play;




(
{
	var list, sig;

	list = Array.series(size: 30,start:  110,step:  110);
	sig = SinOsc.ar(list)*0.15;
	sig = Splay.ar(sig);
}.play;
)






// sztereó Pan = Pan2
(
{
	var sig;
	sig = SinOsc.ar(Array.geom(5, 220, 2))*0.1;
	sig = Mix.new(sig);
	sig = Pan2.ar(sig,0);
}.play;
)