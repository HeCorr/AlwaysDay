G_Plugin = nil
G_Server = nil

function Initialize(Plugin)
	Plugin:SetName("AlwyasDay")
	Plugin:SetVersion(1)

	G_Plugin = Plugin
	G_Server = cRoot:Get():GetServer()

	cPluginManager:AddHook(cPluginManager.HOOK_WORLD_TICK, OnWorldTick);

	LOG("Initialised " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
	return true
end

function OnDisable()
	LOG(G_Plugin:GetName() .. " is shutting down...")
end

function OnWorldTick(World)
	if G_Server:GetNumPlayers() > 0 then
		if World:GetDimension() == dimOverworld then
			World:SetTimeOfDay(6000)
		end
	end
end
