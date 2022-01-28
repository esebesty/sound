//1. server config

s = Server.local;

s.options.outDevice_("Built-in Output");
s.options.numOutputBusChannels_(2);
s.options.inDevice_("Built-in Microph");
s.options.numInputBusChannels_(2);
s.options.sampleRate_(44100);

s.options.memSize_(2.pow(20));


//2. initialize global variables
~out = 0;

//3. define piece-specific functions
//4. register functions with ServerBoot/Quit/Tree
//5. boot server
//6. anything else requiring a booted server
