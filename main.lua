G_Plugin = nil

function Initialize(Plugin)
	Plugin:SetName("AlwyasDay")
	Plugin:SetVersion(1)

	G_Plugin = Plugin

	LOG("Initialised " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
	return true
end

function OnDisable()
	LOG(G_Plugin:GetName() .. " is shutting down...")
end

