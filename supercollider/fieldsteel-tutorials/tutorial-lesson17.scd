//1. server config

s = Server.local;

s.options.outDevice_("Built-in Output");
s.options.numOutputBusChannels_(2);
s.options.inDevice_("Built-in Microph");
s.options.numInputBusChannels_(2);
s.options.sampleRate_(44100);

s.options.memSize_(2.pow(20));

ServerBoot.removeAll;
ServerTree.removeAll;
ServerQuit.removeAll;

//2. initialize global variables
~out = 0;

~path = PathName(thisProcess.nowExecutingPath).parentPath++"buffers/";

//3. define piece-specific functions

~makeBuffers = {
    (
        b = Dictionary.new;
        PathName(~path).entries.do{
            arg subfolder;
            b.add(
                subfolder.folderName.asSymbol ->
                Array.fill(
                    subfolder.entries.size,
                    {
                        arg i;
                        Buffer.read(s, subfolder.entries[i].fullPath);
                    }
                )
            );
        };
    );
};

~makeBusses = {
    ~bus = Dictionary.new;
    ~bus.add(\reverb -> Bus.audio(s, 2));
};

~cleanup = {
  s.newBusAllocators;
  ServerBoot.removeAll;
  ServerTree.removeAll;
  ServerQuit.removeAll;
};

//4. register functions with ServerBoot/Quit/Tree
ServerBoot.add(~makeBuffers);
ServerBoot.add(~makeBusses);
ServerQuit.add(~cleanup);


s.boot;

b

//5. boot server
//6. anything else requiring a booted server
