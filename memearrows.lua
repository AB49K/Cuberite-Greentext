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
		return false, ('@a' .. Message) --returns false, and the new message with light green selected instead of broadcasting like earlier
	else								--This will make it compatible with other chat plugins and formats.
		end
end

function string.starts(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end
