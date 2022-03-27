local Client = {}; do
    for _, Modules in pairs(getgc(true)) do
        if (type(Modules) == "table") then
            if (rawget(Modules, "send")) then
                Client.Network = Modules;
            end
            if (rawget(Modules, "basecframe")) then
                Client.Camera = Modules;
            end
            if (rawget(Modules, "gammo")) then
                Client.GameLogic = Modules;
            end
            if (rawget(Modules, "setmovementmode")) then
                Client.Character = Modules;
            end
            if (rawget(Modules, "getbodyparts")) then
                Client.Replication = Modules;
                Client.Chartable = debug.getupvalue(Client.Replication.getbodyparts, 1);
                Client.Getupdater = debug.getupvalue(Client.Replication.getupdater, 1);
                Client.Characters = debug.getupvalue(Client.Replication.getplayerhit, 1);
            end
            if (rawget(Modules, "breakwindow")) then
                Client.Windows = Modules;
            end
            if (rawget(Modules, "firehitmarker")) then
                Client.Effects = Modules;
            end
        elseif (type(Modules) == "function") then
            local Name = debug.getinfo(Modules).name
            if (Name == "loadgun") then
                Client.Getgun = Modules;
            end
            if (Name == "loadknife") then
                Client.Getknife = Modules;
            end
        end
        if (type(Client.Network) == "table" and type(Client.Camera) == "table" and type(Client.GameLogic) == "table" and type(Client.Character) == "table" and type(Client.Replication) == "table" and type(Client.Getupdater) == "table" and type(Client.Characters) == "table" and type(Client.Windows) == "table" and type(Client.Effects) == "table" type(Client.Getgun) == "function" and type(Client.Getknife) == "function") then
            break
        end
    end
end
Client.GunModules = game:GetService("ReplicatedStorage").GunModules:Clone();
return Client;
