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

// dinamikusan változó hangot hozzunk létre //
// truncate //
// dinamikus vezérlés egérrel (MouseX és MouseY) //
// FM szintézis //
// burkológörbe envelope //
// SynthDef //
// Pattern-ek //
// playback sound samples //
// mikrofonból jövő jel //







// dinamikusan változó hangot hozzunk létre //

/*
eddig statikusak voltak a hang paraméterei

próbáljuk meg változatósabbá tenni
*/




// a fenti sztereó pan + hang helyét most színusz hullám befolyásolja

(
{
	var list, sig;

	list = Array.series(size: 30,start:  110,step:  110);
	sig = SinOsc.ar(list)*0.015;
	sig = Mix.new(array: sig); // ezzel mono-vá alakítjuk a 30 csatornás SinOsc-ot
	sig = Pan2.ar(in: sig, pos: 0.5);
}.play;
)






(
{
	var list, sig, pos;

	list = Array.series(size: 30,start:  110,step:  110);
	sig = SinOsc.ar(list)*0.015;
	sig = Mix.new(array: sig); // ezzel mono-vá alakítjuk a 30 csatornás SinOsc-ot
	pos = SinOsc.kr(0.3).poll;
	sig = Pan2.ar(in: sig, pos: pos);
}.play;
)





(
{
	var sig;
	sig = SinOsc.ar(Array.series(5, 220, 220))*0.1;
	sig = Mix.new(sig);
	sig = Pan2.ar(sig,SinOsc.kr(0.3)); // majd tegyük bele ezt a színusz hullámot egy változóba
}.play;
)











// truncate //

// emlékszel még a receiver.message szintaxis-párra?
// befolyásoljuk a hanghullámot egy egyszerű üzenettel --» .trunc

{ SinOsc.ar(110) * 0.2 }.scope; // le is játsza + előhív egy ablakot, ahol látod a hullámformát
{ SinOsc.ar(110).trunc(0.25) * 0.06 }.play;

FreqScope.new;

(
{
	var tr;

	tr = SinOsc.kr(0.3).range(0.1,0.8);
	SinOsc.ar([110,165]).trunc(tr)*0.06;

}.play;
)

// tegyük rá ezt a többsávos színuszhullámunkra:
(
{
	var sig, tr_list, tr, sig_list, pos;

	tr_list = Array.rand(5, minVal: 0.1, maxVal: 0.4).postln;
	tr = SinOsc.kr(tr_list).range(0.1,0.8); // színusz-hullám ne -1 és +1 között, hanem 0.1 és 0.8 között mozogjon
	sig_list = Array.geom(5, 220, 2);
	sig = SinOsc.ar(sig_list).trunc(tr)*0.03;

	// panning
	sig = Mix.new(sig);
	pos = SinOsc.kr(0.1,mul:2/3);
	sig = Pan2.ar(sig,pos); // majd tegyük bele ezt a színusz hullámot egy változóba
}.play;
)





{WhiteNoise.ar()*0.05}.play;
{PinkNoise.ar()*0.05}.play;




/*
LFNoise = low-frequency noise
*/

{LFNoise0.kr(0.8).poll}.play; // LFNoise0 = ráugrik a random értékekre
{LFNoise1.kr(0.1).poll}.play; // LFNoise1 = lineárisan (egyenes vonalakkal) éri el a random értékeket
{LFNoise2.kr(0.1).poll}.play; // LFNoise2 = görbe vonalakkal éri el a random értékeket


/*
ez a LFNoise funkció -1 és +1 értékek között mozog

ezt az LFNoise funkciót használjuk a hangmagasság befolyásolására:
*/

// térjünk először vissza az eredeti színusz-hullámhoz:
{SinOsc.ar(freq: 440)*0.2}.play;

// befolyásoljuk a hangmagasságát ezzel az LFNoise funkcióval:
{SinOsc.ar(freq: "ide kerül az LFNoise-os behelyettesítés")}.play; // ezt még ne futtasd :)

// helyettesítsük is be:
{SinOsc.ar(freq: LFNoise1.ar(freq: 1) )*0.2}.play;

/*
Miért nem szól?

Mivel az LFNoise -1 és +1 között mászkál --> a hangmagasság is annyi lesz. Ezeket a hangmagasságokat nem halljuk.

Ezért ezeket az LFNoise által létrehozott értékeket hozzá kell adni egy olyan hangmagasság értékhez, amit hallunk is!

Próbáljuk meg:
*/
{SinOsc.ar(freq: 440 + "az LFNoise értékei")}.play; // ezt még ne futtasd!
{SinOsc.ar( freq: 440 + LFNoise1.ar(1) )*0.2}.play;

// abszolút értékeknél a frekvencia megduplázódik (nézd meg a scope-ot 2 sávval)
{[ SinOsc.ar(110), SinOsc.ar(110).abs ]*0.1}.play;



/*
Miért nem hallunk mozgást?

Mivel az LFNoise -1 és +1 között mozog --> a frekvencia-értékek 399Hz és 441Hz között mozognak.

Ilyen kis változást nemigazán hallunk.
Tehát mozgás van, csak mi nem halljuk :)

Mit lehet tenni ilyenkor?

Az LFNoise értékeit megszorozni egy értékkel, mondjuk 20-szal.

Nézzük:
*/
{SinOsc.ar(freq: 440 + LFNoise1.ar(freq: 1, mul: 100) )*0.2}.play;

// változzon a hangmagasság gyorsabban:
{SinOsc.ar(freq: 440 + LFNoise1.ar(freq: 10, mul: 100) )*0.2}.play;

// egy bizonyos gyorsaságon felül már zajként halljuk:
{SinOsc.ar(freq: 440 + LFNoise1.ar(freq: 200, mul: 100) )*0.2}.play;





// dinamikus vezérlés egérrel (MouseX és MouseY) //

/*
vezéreljük dinamikus a hanghullámunk paramétereit

Erre nagyon jó eszköz a MouseX és MouseY nevű funkciók.

Nézzük meg most fűrészfog-hullámformáva (sawtooth wave):
*/

{Saw.ar( MouseX.kr(110,1760,warp: 1).poll)*0.1}.play;

// terítsük szét a kódot, hogy átláthatóbb legyen:
( // még ne futtasd! :)
{Saw.ar(
	freq: MouseX.kr(), // ebben az esetben az egér/touchpad horizontális mozgatásával változtatjuk a hangmagasságot
	mul: 1,
	add: 0)*0.1
}.play;
)



(
{Saw.ar(
	freq: MouseX.kr(minval: 110, maxval: 1760), // a MouseX funkciónál állítsuk be hogy milyen hangmagasságok között vezéreljük a fűrészfog-hullámformát
	mul: 1,
	add: 0)*0.2
}.play;
)


/*
menjünk még egy lépést előre
és befolyásoljuk a hangmagasságot és hangerőt egyszerre!
*/
( // még ne futtasd! :)
{Saw.ar(
	freq: MouseX.kr(minval: 110, maxval: 1760), // itt a MouseX-szel befolyásoljuk a hangmagasságot -- horizontális egér/touchpad mozgással
	mul: MouseY.kr(), // itt pedig a hangerőt MouseY-al -- vertikális egér/touchpad mozgással
	add: 0)*0.2
}.play;
)



{Saw.ar( freq: MouseX.kr(110,1760,warp: 1).poll, mul: MouseY.kr(minval: 0, maxval: 0.1).poll)}.play;

(
{Saw.ar(
	freq: MouseX.kr(minval: 110, maxval: 1760), // MouseX (horizontális) = hangmagasság
	mul: MouseY.kr(minval: 0.1, maxval: 0.8), // MouseY (vertikális) = hangmagasság. FONTOS!! Figyelj oda a maximum értékre, hogy ne legyen túl hangos. Fájdalmas lehet, ha túl hangosra állítod.
	add: 0)*0.2
}.play;
)



// a .poll üzenettel lehet élőben látni azokat az értékeket, amiket az egér/touchpad mozgatásával hozol létre:
(
{Saw.ar(
	freq: MouseX.kr(minval: 110, maxval: 1760).poll, // élőben látni, hogy milyen hangmagasság-értékeket hozol létre.
	mul: MouseY.kr(minval: 0.1, maxval: 0.8),
	add: 0)*0.2
}.play;
)

// ha mindkét érték-változást látni szeretnéd érdemes felcímkézni őket, hogy lásd melyik melyikhez tartozik:
(
{Saw.ar(
	freq: MouseX.kr(minval: 110, maxval: 1760).poll(label:"hangmagasság"),
	mul: MouseY.kr(minval: 0.1, maxval: 0.8).poll(label:"hangerő"),
	add: 0)*0.2
}.play;
)



/* ez a MouseX és MouseY nagyon hasznos akkor, ha teszetlni szeretnéd azt, hogy
működik a behelyettesítés amit csináltál
vagy
hogy bizonyos hangerő vagy frekvencia az működik-e neked vagy sem
*/





// vezéreljük a hullámformánk hangmagasságát egy olyan esetben amikor két hangmagassággal dolgozunk alapból, tehát egy ilyen esetben pl.:

{Saw.ar(freq: [440,660])*0.2}.play;

// helyettesítsünk be egy-egy LFNoise-ot a két hangmagasság helyére:
{Saw.ar(freq: [440 + "ide jön az egyik LFNoise",660 + "ide pedig a másik LFNoise"])*0.2}.play; // ezt még ne futtasd :)

{Saw.ar(freq: [LFNoise1.ar(),LFNoise1.ar()])*0.2}.play; // ezt se futtasd még :)

// megintcsak az átláthatóság érdekében terítsük szét több sorra a fenti kódot:
(
{
	LFTri.ar( // háromszőg-hullámforma
		freq: [
			440 + LFNoise1.ar(freq: 10, mul: 200),
			660 + LFNoise1.ar(freq: 10, mul: 200)
		],
		mul: 1,
		add: 0)*0.01;
}.play;
)












// lista random elemekkel

( // ezzel fogunk foglalkozni:
{
	var sig;
	sig = SinOsc.ar(Array.series(10, 110, 110))*0.1;
	sig = Splay.ar(sig);
}.play;
)

rrand(1,10); // csak egész számokat fog eredményezni
rrand(1,10.0); // tizedestörtes számokat fog eredményezni
rrand(1,10.0)!10; // egy random számot generál s azt teszi 10-szer bele a listába
{rrand(1,10.0)}!10; // itt 10 különböző random számot fogsz kapni

exprand(1,10); // itt — az rrand-dal ellentétben alapból tizedestörtes számokat fogsz kapni
exprand(1,10)!10; // egy random szám 10-szer a listában
{exprand(1,10)}!10; // egy random szám 10-szer a listában

// az exprand az alsóbb értékeket fogja előnyben részesíteni
// az rrand pedig a szélső-értékek között egyenlő valószínűséggel fog választani számot


x = Array.series(10, rrand(55,880), 110);
x = {Array.series(10, Rand(55,1600), 110)};
x = {Array.series(10, Rand(55,1600), Rand(55,330))};
x;

(
{
	var sig;
	sig = SinOsc.ar(x)*0.1;
	sig = Splay.ar(sig);
}.play;
)











// FM szintézis //

x = {Array.series(10, Rand(55,1600), Rand(55,330))};

(
{
	var sig, mf;

	mf = SinOsc.ar(1,mul: 100); // mf = modulating frequency
	sig = SinOsc.ar(freq: mf + 880)*0.1; // x globális változót helyettesítsd be a 440 helyére
	sig = Splay.ar(sig);
}.play;
)
s.boot;
(
{
	var sig, mf;

	mf = SinOsc.ar(MouseX.kr(1,3000,warp:2),mul: MouseY.kr(5,300)); // warp: 2 --» exponenciálisan osztja be a horizontális teret. Ha 0 --» lineárisan
	sig = SinOsc.ar(mf + 880)*0.1;
	sig = Splay.ar(sig);
}.play;
)


/*
FELADAT:
helyettesítsd be a MouseX és MouseY helyére az LFNoise valamelyikét
*/












// burkológörbe envelope //

/*
alap felállás:

hangforrás egy paraméterét (mondjuk pl. hangerejét) befolyásolja egy burkológörbe
*/

// vegyünk megint egy egyszerű színusz-hullámot:
(
{SinOsc.ar(
	freq: exprand(110,880).postln, // random frekvencia-értékeket választ ki
	phase: 0,
	mul: 1,
	add: 0)*0.2 // itt a 0.2-vel való szorzás = nem változó/statikus hangeró-szabályozás
}.play;
)

{SinOsc.ar(exprand(110,880).postln)*0.2}.play;

/*
.exprand(min határ, max határ) = minden egyes futtatásnál a két szélsőérték közötti random értéket hoz létre.

létezik rrand(min limit, max limit) is,
viszont az exprand-nál az alsóbb értékek vannak túlsúlyban --> nagyobb valószínűséggel fog alacsonyabb értékeket "választani" random módon

rrand(min, max) <-- ebben az esetben egyenlő eséllyel fog mindenféle érték előfordulni


.postln = mikor futtatod a kódot, kiadja azt az értéket, amit az .exprand() választott
*/


( // ezt most ne futtasd még :)
{SinOsc.ar(
	freq: exprand(110,880).postln,
	phase: 0,
	mul: 1,
	add: 0)*"ide - a 0.2 helyére - fog kerülni a burkológörbe"
}.play;
)

// ezt se futtasd még
{SinOsc.ar(exprand(110,880).postln)*"ide - a 0.2 helyére - fog kerülni a burkológörbe"}.play;




// rajzoljunk burkológörbét:

Env.perc(attackTime: 0.01, releaseTime: 1.0, level: 1.0, curve: -4.0).plot;


/*
Ahhoz viszont, hogy ezt a megrajzolt burkológörbét fel tudjuk használni a hangerő változtatására egy "EnvGen" nevű funkcióba bele kell helyettesítenünk.

EnvGen = envelope generator

Tehát az Env.perc() megrajzolja,
az EnvGen.kr() pedig a megrajzolt burkológörbét "lejátsza"
*/
( // ezt még ne futtasd :)
EnvGen.ar(Env.perc( // EnvGen = envelope generator
	attackTime: 0.01,
	releaseTime: 1.0,
	level: 0.2,
	curve: -4));
)

// ez az egész rövidebben így néz ki:
EnvGen.ar(envelope: Env.perc(level: 0.2)); // ezt se futtasd még :)

// na, s ezt kell a fenti színusz-generátorban a 0.2 helyére beilleszteni:
(
{SinOsc.ar(
	freq: exprand(110,880).postln,
	phase: 0,
	mul: 1,
	add: 0) * EnvGen.ar(Env.perc(level: 0.2));
}.play;
)

{SinOsc.ar(exprand(110,880).postln)*EnvGen.ar(Env.perc(level: 0.2))}.play;

s.plotTree; // ezzel láthatod azt, hogy hány szinti szól éppen


/*
fontos, hogy ez a fenti kód "felszabaduljon" miután lefutott a burkológörbe

a fenti kód tulajdonképpen egy "szintetizátort" hoz létre a SC szerverén, ami nem kapcsol ki önmagától, miután lefut a burkológörbe, mert nem tudja, hogy lefutott és már nincs szükségünk rá.

Ezért meg kell mondani a SC-nek, hogy miután a burkológörbe lefutott, szabadítsa fel ezt a "szintetizátort"

Ezt pedig a .doneAction-nel lehet megtenni.
*/
( // ezt még ne futtasd le :)
EnvGen.ar(
	envelope: Env.perc(level: 0.2), // itt a megrajzolt burkológörbe
	doneAction: 2) // itt pedig megmondjuk a SC-nek, hogy szabadítsa fel ezt a szintit, miután végigjátszotta a burkológörbét
)

// ez egyszerűbben így néz ki:
EnvGen.ar(Env.perc(level: 0.2), doneAction: 2);

// amit ide kell behelyettesíteni:
(
{SinOsc.ar(
	freq: exprand(110,880).postln,
	phase: 0,
	mul: 1,
	add: 0)*EnvGen.ar(Env.perc(level: 0.2), doneAction: 2);
}.play;
)



/*
Ne kelljen mindig manuálisan elindítani ezt a fenti szintit...

Hozzunk létre egy olyan szintit
amiben egy kötött tempóban játsza le a burkológörbét.


Ehhez a következőre van szükség:
Egy olyan jelre ami megböki a burkológörbe-generátort, hogy most indítsa a burkológörbét

Erre a legmegfelelőbb eszköz az "Impulse" nevű funkció.
Ezzel egy olyan pulzust tudunk létrehozni, ami megszabja azt, hogy mikor játsza le újból a burkológörbét.

Nézzük hogy néz ki ez a gyakorlatban:
*/

// itt van az előző burkológörbés színusz hullám, amit egyelőre manuálisan indítunk be:
(
{SinOsc.ar(
	freq: exprand(110,880).postln,
	phase: 0,
	mul: 1,
	add: 0)
*
EnvGen.ar(envelope: Env.perc(level: 0.2), doneAction: 2); // ide kell beépíteni/behelyettesíteni valahova az "Impulse" nevű funkciót ahhoz hogy kötött tempóban játsza le a burkológörbét
}.play;
)


(
{SinOsc.ar(
	freq: exprand(110,880).postln,
	phase: 0,
	mul: 1,
	add: 0)
*
EnvGen.ar(
	envelope: Env.perc(level: 0.2),
	gate: Impulse.kr(0.7)
); // ide építjük be
}.play;
)


// csináljuk újra ezt úgy, hogy nem kötött tempóban szólaljon meg:
(
{SinOsc.ar(
	freq: rrand(110,880).postln, // exprand(110,880).postln,
	phase: 0,
	mul: 1,
	add: 0)
*
EnvGen.ar(
	envelope: Env.perc(
		attackTime: 0.01,
		releaseTime: 0.1,
		level: 0.2),
	gate: Dust.ar(density: 40)); // density = átlag impulzus másodpercenként
}.play;
)



// két különböző hangmagasság + két különböző sűrűség:
(
{SinOsc.ar(
	freq: [
		rrand(110,880).postln ,
		rrand(440,1760).postln
	], // exprand(110,880).postln,
	phase: 0,
	mul: 1,
	add: 0)
*
EnvGen.ar(
	envelope: Env.perc(
		attackTime: 0.01,
		releaseTime: 0.1,
		level: 0.2),
	gate: [Dust.ar(density: 40) , Dust.ar(density: 10)]); // density = átlag impulzus másodpercenként
}.scope;
)




// dinamikus hangmagasság + dinamikus sűrűség
(
{SinOsc.ar(
	freq: [rrand(220,880).postln + LFNoise1.kr(freq: 0.6, mul: 100), rrand(440,1760).postln + LFNoise1.kr(freq: 0.6, mul: 100)],
	phase: 0,
	mul: 1,
	add: 0)
*
EnvGen.ar(
	envelope: Env.perc(
		attackTime: 0.01,
		releaseTime: 0.1,
		level: 0.2),
	gate: [Dust.ar(density: 60 + LFNoise1.kr(freq: 10, mul: 50)) , Dust.ar(density: 30 + LFNoise1.kr(freq: 10, mul: 20))]); // density = átlag impulzus másodpercenként
}.play;
)




(
{SinOsc.ar(
	freq: [rrand(220,880).postln, rrand(440,1760).postln], // + LFNoise1.kr(freq: 0.6, mul: 100)
	phase: 0,
	mul: 1,
	add: 0)
*
EnvGen.ar(
	envelope: Env.perc(
		attackTime: 0.01,
		releaseTime: 0.1,
		level: 0.2),
	gate: [
		Dust.ar(density: (15 + LFNoise1.kr(freq: 0.4, mul: 14)).poll(label:"dens1")) ,
		Dust.ar(density: (15 + LFNoise1.kr(freq: 0.4, mul: 14)).poll(label:"dens2"))]);
}.play;
)


















// SynthDef //

( // térjünk ide vissza, ahol kötött tempóban játsza le a burkológörbét
{SinOsc.ar(
	freq: exprand(110,880).postln,
	phase: 0,
	mul: 1,
	add: 0)
*
EnvGen.ar(
	envelope: Env.perc(level: 0.2),
	gate: Impulse.kr(1)); // emiatt fogg kötött tempóban megszólalni
}.play;
)

{SinOsc.ar(freq: ) * EnvGen.kr(envelope: , gate: )};


/* a fentit sokkal rugalmasabb állapotba lehet hozni a SynthDef segítségével

a SynthDef alapstruktúrája:
*/
SynthDef(\valamilyen_név, {}).add; // ezt ne futtasd még :)


// bővebben:
( // ezt se futtasd még
SynthDef(\synthDef_név, {
	arg hangmagasság = 440, hangerő = 0.2; // arg = a SynthDef-en kívülről lehet vezérelni
	var lokális_változó1, lokVált_02;

	lokális_változó1 = Saw.ar(hangmagasság);
	lokVált_02 = LPF.ar(lokális_változó1,110);

	Out.ar(0, lokVált_02 * hangerő); // itt a 0 az az első output csatornát jelöli
}).add;
)



/*
ezzel a SynthDef-fel létrehoztuk a hangot létrehozó motort

az .add üzenettel hozzáadtuk a szerverhez

ahhoz hogy halljuk is mit történik, a Synth nevű uGent (unit generatort) tudjátok használni
*/
Synth(\synthDef_név, [hangmagasság = 110, hangerő = 0.4]); // ezt se futtasd le még




// nézzük hogy néz ki ez a gyakorlatban:

( // ezt se futtasd még
SynthDef(\saw_lpf, {
	arg freq = 440, lpf_freq = 110, amp = 0.2;
	var sig;

	sig = Saw.ar( [freq, freq * (3/2)] );
	sig = LPF.ar(sig, lpf_freq);

	Out.ar(0, sig * amp); // itt a 0 az az első output csatornát jelöli
}).add;
)

x = Synth(\saw_lpf);
x.set(\amp, 2);
x.set(\lpf_freq, 330, \amp, 0.7);

x = Synth(\saw_lpf, [\lpf_freq, 330, \amp, 0.7]);




// nézzük meg ugyanezt a burkológörbés "patch"-csel:

( // ez az eredeti patch
{SinOsc.ar(
	freq: rrand(110,880).postln, // most exprand helyett rrand-ot használok
	phase: 0,
	mul: 1,
	add: 0)
*
EnvGen.ar(
	envelope: Env.perc(level: 0.2),
	gate: Impulse.kr(1));
}.play;
)


// s ennek a SynthDef-es változata:

(
SynthDef(\env01, {
	arg tempo = 1, amp = 1, out;
	var sig, env, gate, random;

	random = rrand(110,880).postln;
	sig = SinOsc.ar(random);

	env = Env.perc(level: 0.2);
	gate = Impulse.kr(tempo);
	env = EnvGen.kr(env,gate);

	sig = sig * env;

	Out.ar(out,sig * amp);
}).add;
)

x = Synth(\env01, [\out, 0]);
x.set(\tempo, 0.6);















// Pattern-ek //

/*
Mi van akkor, hogyha egy dallamot szeretnénk páldául?

ilyen és hasonló célokra nagyon jók a patternek, mint például a Pbind

Használjuk az előző SynthDef-et:
*/

(
SynthDef(\env02, {
	arg tempo = 1, amp = 0.2, out;
	var sig, env, random;

	random = exprand(110,880).postln;
	sig = SinOsc.ar(random);

	env = Env.perc;
	env = EnvGen.kr(env); // itt nem kell már külön definiálni, hogy "gate", mert a Pbind azt majd fogja vezérelni + ide már fog kelleni a "doneAction: 2"

	sig = sig * env;

	Out.ar(out,sig * amp);
}).add;
)

(
p = Pbind(
	\instrument, \env02 // itt minden egyes alkalommal új szintit fog létrehozni, mivel nem írtuk bele a SynthDef-ben az EnvGen-nél, hogy "doneAction: 2"
).play;
)

p.stop;

(
p = Pbind(
	\instrument, \env02,
	\dur, 0.3 // mennyi idő teljen el az előző és a következő szinti kedete között
).play
)


(
p = Pbind(
	\instrument, \env02,
	\dur, Pseq([0.4,0.2,0.2],inf) // mennyi idő teljen el az előző és a következő szinti kedete között
).play
)






// csináljunk dallamot is

// ehhez viszont kicsit módosítanunk kell a SynthDef-et

(
SynthDef(\env03, {
	arg freq = 440, tempo = 1, rel = 1, amp = 1, out;
	var sig, env, random;

	sig = SinOsc.ar(freq!2); // itt mostmár nem randomizáljuk, hanem az argumentumok közé tesszük azt, hogy mi legyen a színusz-hullám hangmagassága

	env = Env.perc(releaseTime: rel); // vezéreljük kívülről a burkológörbe "release" részét
	env = EnvGen.kr(env, doneAction: 2);

	sig = sig * env;

	Out.ar(out,sig * amp);
}).add;
)

(
p = Pbind(
	\instrument, \env03,
	\dur, Pseq([0.4,0.2,0.2],inf),
	\freq, Pseq([60,63,67,70].midicps,inf)
).play;
)
p.stop;


(
p = Pbind(
	\instrument, \env03,
	\dur, Pseq([0.4,0.2,0.2],inf),
	\midinote, Pseq([60,63,67,70],inf)
).play;
)


/* több infót a patternekről így találsz:
a Help ablakban --» Browse --» Streams-Patterns-Events --» A Practical Guide

arról, hogy milyen többi pattern-ek vannak:
Streams-Patterns-Events --» Patterns
*/




// többször elindítani a Pbind-ot:
(
p = Pbind(
	\instrument, \env03,
	\dur, Pseq([0.4,0.2,0.2],inf),
	\freq, Pseq([60,63,67,70].midicps,inf).trace // a .trace üzenettel lehet lekövetni azt, hogy milyen értékeket használ épp akkor ez a Pseq
).play;

r = Pbind(
	\instrument, \env03,
	\dur, Pseq([0.4,0.2,0.2]*2,inf), // kettővel megszoroztam a "dur" értékeket --» kétszer lassabb lesz mint a fentebbi ritmus
	\midinote, Pseq([60,63,67,70]+7,inf) // itt hozzáadtam a midi értékekhez 7-t --» kvinttel vagy 7 félhanggal feljebb toltam
).play;
)

p.stop;
p.play;
r.stop;
r.play;


/*
FELADAT:

csinálj egy dallamot, lehetőleg több sávban, ahogy az előbb átvettük
*/













// mikrofonból jövő jel //


// mikrofonból bejövő hang:
{SoundIn.ar(0)*0.1}.play; // ha nem akarsz feedback-et, használj fülest!!!







// Bus-os téma