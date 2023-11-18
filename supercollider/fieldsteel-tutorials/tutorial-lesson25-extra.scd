(
~r0 = Routine.new({
	loop{
		(1..8).choose.do({
			var rate = [0, 2, 3, 7, 9, 10].choose + 70;
			rate = rate.midicps * [2, 1, 0.5, 0.25].choose;
			4.do({
				Synth.new(\gs, [
					\buf, b,
					\sync, 1,
					\dens, rate * rrand(-0.15, 0.15).midiratio,
					\dur, 0.02,
					\pos, [0.3, 0.4, 0.5, 0.6].choose,
					\posSpeed, 0,
					\amp, exprand(0.05, 0.15),
					\atk, exprand(1, 4),
					\sus, 0,
					\rel, exprand(3, 6),
					\pan, rrand(-0.8, 0.8),
				]);
			});
			exprand(0.1, 8).wait;
		});
	};
}).play;

~r1 = Routine.new({
	loop{
		(2..5).do({
			Synth.new(\gs, [
				\buf, b,
				\sync, 1,
				\dens, [0.25, 0.5, 1, 2, 4, 8].choose,
				\dur, exprand(0.001, 0.025),
				\pos, [0.1, 0.206, 0.398, 0.877].choose,
				\posSpeed, 0,
				\rate, [-2, 0, 12].choose.midiratio;
				\panHz, exprand(0.1, 1),
				\panRand, 0.8,
				\atk, 3, \sus, 1, \rel, 3,
				\amp, exprand(0.25, 0.6),
			]);
		});
		exprand(0.5, 4).round(0.5).wait;
	};
}).play;

~r2 = Routine.new({
	loop{
		Synth.new(\gs, [
			\buf, b,
			\sync, 1,
			\dens, exprand(0.2, 1),
			\dur, exprand(0.5, 2),
			\pos, rrand(0.0, 1.0),
			\posSpeed, rrand(-0.9, 0.9),
			\rate, rrand(-10.0, -2.0).midiratio.neg,
			\panHz, 0.1,
			\panRand, 0.5,
			\amp, exprand(0.15, 0.4),
			\atk, 4, \sus, 0, \rel, 4,
		]);
		exprand(4, 15).wait;
	};
}).play;
)

(
~r0.stop;
~r1.stop;
~r2.stop;
)