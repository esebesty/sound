w = Window.new;
w.front;
w.alwaysOnTop;
w.alwaysOnTop = true;
w.alwaysOnTop_(false);
w.alwaysOnTop_(true);
w.close;

(
w = Window.new
.front
.alwaysOnTop_(true);
)

GUI.current;

Window.closeAll;

w.bounds;

w.bounds_(Rect.new(1000, 400, 200, 200));
w.close;

(
w = Window.new("gui", Rect.new(750, 50, 500, 200))
.front
.alwaysOnTop_(true);
)

Window.screenBounds;

Window.screenBounds.height;

(
w = Window.new("gui", Rect.new(
    Window.screenBounds.width / 2 - 100,
    Window.screenBounds.height / 2 - 100,
    200,
    200
))
.front
.alwaysOnTop_(true);
)

(
Window.closeAll;
w = Window.new("gui", Rect.new(750, 50, 500, 200))
.front
.alwaysOnTop_(true);

~slider = Slider.new(w.view, Rect.new(20, 20, 150, 30))
)

~slider.parent;

w.view;

w.view.children;

w.close;

~slider.visible_(false);

~slider.visible_(true);

~slider.bounds_(Rect.new(40, 40, 150, 30));

~slider.bounds_(Rect.new(40, 40, 200, 20));

~slider.enabled_(false);

~slider.enabled_(true);

~slider.remove;

(
Window.closeAll;
w = Window("gui", Rect(750, 50, 500, 200))
.front
.alwaysOnTop_(true);

~slider = Slider(w, Rect(20, 20, 150, 30))
)

~slider.value;

~slider.value_(0.8);

~slider.action;

~slider.action_({"I am a slider".postln;});

(
~slider.action_({
    arg obj;
    obj.value.postln;
});
)

~slider.value_(rrand(0.0, 1.0));

~slider.valueAction_(rrand(0.0, 1.0));

~slider.background;

~slider.background_(Color(1, 0.5, 0));

~slider.background_(Color.green);

~slider.background_(Color.magenta);

~slider.background_(Color.magenta(0.7));

~slider.background_(Color.rand);

(
~slider.action_({
    arg obj;
    w.view.background_(Color.rand);
    obj.value.postln;
});
)

(
~slider.action_({
    arg obj;
    w.view.background_(Color(obj.value * 0.3 + 0.7, 0.8, 0.4));
    obj.value.postln;
});
)


(
Window.closeAll;
w = Window.new("gui", Rect.new(750, 50, 500, 200))
.front
.alwaysOnTop_(true);

~slider = Slider(w, Rect(20, 20, 150, 30))
.background_(Color(0.2, 0.75, 0.95));
)

~slider.knobColor_(Color.black);
~slider.thumbSize_(40);

s.boot;

(
SynthDef.new(\simplebpf, {
    arg freq = 440;
    var sig;
    sig = PinkNoise.ar(1!2);
    sig = BPF.ar(sig, freq.lag(0.5), 0.2);
    Out.ar(0, sig);
}).add;
)

(
Window.closeAll;
w = Window.new("gui", Rect.new(750, 50, 500, 200))
.front
.alwaysOnTop_(true);

~slider = Slider(w, Rect(20, 20, 150, 30))
.background_(Color(0.2, 0.75, 0.95))
.action_({
    arg obj;
    var cf;
    cf = obj.value.linexp(0, 1, 100, 4000).postln;
    x.set(\freq, cf);
});
)

x = Synth.new(\simplebpf);
x.free;

(
x = Synth.new(\simplebpf,
    [
        \freq, ~slider.value.linexp(0, 1, 100, 4000)
    ]
);
)
x.free;


(
Window.closeAll;
w = Window.new("gui", Rect.new(750, 50, 500, 200))
.front
.alwaysOnTop_(true);

~slider = Slider(w, Rect(20, 20, 150, 30))
.background_(Color(0.2, 0.75, 0.95))
.action_({
    arg obj;
    var cf;
    cf = obj.value.linexp(0, 1, 100, 4000).postln;
    x.set(\freq, cf);
});

~button = Button(w, Rect(430, 20, 50, 30))
.states_([
    ["OFF", Color.black, Color.gray(0.8)],
    ["ON", Color.white, Color(0.2, 0.75, 0.95)]
])
.font_(Font("Monaco", 18))
.action_({
    arg obj;
    if(
        obj.value == 1,
        {
            x = Synth.new(\simplebpf,
                [
                    \freq, ~slider.value.linexp(0, 1, 100, 4000)
                ]
            );
        },
        {x.free}
    );
})
)


(
Window.closeAll;
w = Window.new("gui", Rect.new(750, 50, 500, 200))
.front
.alwaysOnTop_(true);

~slider = Slider(w, Rect(20, 20, 150, 30))
.background_(Color(0.2, 0.75, 0.95))
.action_({
    arg obj;
    var cf;
    cf = obj.value.linexp(0, 1, 100, 4000).postln;
    if(
        x.isPlaying,
        {x.set(\freq, cf);}
    );
});

~button = Button(w, Rect(430, 20, 50, 30))
.states_([
    ["OFF", Color.black, Color.gray(0.8)],
    ["ON", Color.white, Color(0.2, 0.75, 0.95)]
])
.font_(Font("Monaco", 18))
.action_({
    arg obj;
    if(
        obj.value == 1,
        {
            x = Synth.new(\simplebpf,
                [
                    \freq, ~slider.value.linexp(0, 1, 100, 4000)
                ]
            ).register;
        },
        {x.free}
    );
})
)

(
SynthDef.new(\simplebpf, {
    arg freq = 440, rq = 0.2;
    var sig;
    sig = PinkNoise.ar(1!2);
    sig = BPF.ar(
        sig,
        freq.lag(0.5),
        rq.lag(0.5),
        1 / rq.sqrt.lag(0.5)
    );
    Out.ar(0, sig);
}).add;
)

(
Window.closeAll;
w = Window.new("gui", Rect.new(750, 50, 500, 200))
.front
.alwaysOnTop_(true);

~slider = Slider(w, Rect(20, 20, 150, 30))
.background_(Color(0.2, 0.75, 0.95))
.action_({
    arg obj;
    var cf;
    cf = obj.value.linexp(0, 1, 100, 4000).postln;
    if(
        x.isPlaying,
        {x.set(\freq, cf);}
    );
});

~knob = Knob(w, Rect(180, 20, 30, 30))
.action_({
    arg obj;
    var qual;
    qual = obj.value.linexp(0, 1, 1, 100).reciprocal;
    if(
        x.isPlaying,
        {x.set(\rq, qual)}
    );
});

~button = Button(w, Rect(430, 20, 50, 30))
.states_([
    ["OFF", Color.black, Color.gray(0.8)],
    ["ON", Color.white, Color(0.2, 0.75, 0.95)]
])
.font_(Font("Monaco", 18))
.action_({
    arg obj;
    if(
        obj.value == 1,
        {
            x = Synth.new(\simplebpf,
                [
                    \freq, ~slider.value.linexp(0, 1, 100, 4000),
                    \rq, ~knob.value.linexp(0, 1, 1, 100).reciprocal
                ]
            ).register;
        },
        {x.free}
    );
})
)


(
Window.closeAll;
w = Window.new("gui", Rect.new(750, 50, 500, 200))
.front
.alwaysOnTop_(true);

~slider = Slider(w, Rect(20, 20, 150, 30))
.background_(Color(0.2, 0.75, 0.95))
.action_({
    arg obj;
    var cf;
    cf = obj.value.linexp(0, 1, 100, 4000).postln;
    if(
        x.isPlaying,
        {x.set(\freq, cf);}
    );
    ~numberBox.value_(obj.value.linexp(0, 1, 100, 4000));
});

~numberBox = NumberBox(w, Rect(180, 20, 80, 30))
.value_(100)
.clipLo_(100)
.clipHi_(4000)
.font_(Font("Monaco", 16))
.decimals_(2)
.action_({
    arg obj;
    ~slider.valueAction_(obj.value.explin(100, 4000, 0, 1))
});

~freqLabel = StaticText(w, Rect(180, 50, 80, 20))
.string_("freq")
.font_(Font("Monaco", 14))
.align_(\center);

~knob = Knob(w, Rect(270, 20, 30, 30))
.action_({
    arg obj;
    var qual;
    qual = obj.value.linexp(0, 1, 1, 100).reciprocal;
    if(
        x.isPlaying,
        {x.set(\rq, qual)}
    );
});

~button = Button(w, Rect(430, 20, 50, 30))
.states_([
    ["OFF", Color.black, Color.gray(0.8)],
    ["ON", Color.white, Color(0.2, 0.75, 0.95)]
])
.font_(Font("Monaco", 18))
.action_({
    arg obj;
    if(
        obj.value == 1,
        {
            x = Synth.new(\simplebpf,
                [
                    \freq, ~slider.value.linexp(0, 1, 100, 4000),
                    \rq, ~knob.value.linexp(0, 1, 1, 100).reciprocal
                ]
            ).register;
        },
        {x.free}
    );
})
)

(
~obj.remove;
~obj = PopUpMenu(w, Rect(20, 100, 120, 30))
.items_(["", "one", "two", "three"]);
)

(
~obj.remove;
~obj = RangeSlider(w, Rect(20, 100, 120, 30));
)

(
~obj.remove;
~obj = TextField(w, Rect(20, 100, 120, 30));
)

(
~obj.remove;
~obj = TextView(w, Rect(20, 100, 120, 80));
)

(
~obj.remove;
~obj = Slider2D(w, Rect(20, 100, 120, 80));
)

(
~obj.remove;
~obj = MultiSliderView(w, Rect(20, 100, 120, 80))
.size_(9);
)

(
Window.closeAll;
w = Window("flow", Rect(850, 50, 400, 400))
.front
.alwaysOnTop_(true);

w.view.decorator_(FlowLayout(w.bounds, Point(15, 15), Point(7, 7)));
)

Knob(w, 40@40);

w.view.decorator.nextLine;
20.do{Knob(w, 40@40)};

w.view.children.collect(_.value_(rrand(0.0, 1.0)));

w.view.children.collect(_.remove);

w.view.decorator.reset;

Knob(w, 40@40);

w.close;

(
Window.closeAll;
w = Window("nested", Rect(750, 50, 500, 500))
.front
.alwaysOnTop_(true);

w.view.decorator_(FlowLayout(w.bounds, 30@30, 30@30));

c = Array.fill(4, {
    arg view;
    view = CompositeView(w, 200@200)
    .background_(Color.rand);

    view.decorator_(FlowLayout(view.bounds, 5@5, 5@5));
});

Array.fill(5, {Slider(c[0], 30@150)});
Array.fill(8, {Knob(c[1], 40@40)});
)

c[0].children[2].value_(0.5);
c[1].children.collect(_.value_(0.75));

Window.closeAll;