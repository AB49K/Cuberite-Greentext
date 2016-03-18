PLUGIN = nil

function Initialize(Plugin)
	Plugin:SetName("MemeArrows")
	Plugin:SetVersion(1)
	PLUGIN = Plugin 
	cPluginManager:AddHook(cPluginManager.HOOK_CHAT, MemeArrow);
	LOG("Initialised " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
	return true
end

function OnDisable()
	LOG(PLUGIN:GetName() .. " is shutting down...")
end

function MemeArrow(Player, Message)
	if string.starts(Message, ">") then
		cRoot:Get():BroadcastChat('<'.. Player:GetName() .. '> @2' .. Message)
		return true
	else
		end
end

function string.starts(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end
