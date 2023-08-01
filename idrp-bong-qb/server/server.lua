local QBCore = exports['qb-core']:GetCoreObject()

--Bong items
for _, v in pairs(Config.Bong_Models) do
	QBCore.Functions.CreateUseableItem(v.itemName, function(source, item)
		local Player = QBCore.Functions.GetPlayer(source)
		if Player.Functions.GetItemBySlot(item.slot) then
			TriggerClientEvent('idrp_BongModel', source, v.itemName)
		end
	end)
end

--Cloud SFX
RegisterServerEvent("idrp:CloudEffect", function(entity)
	TriggerClientEvent("idrp:BongCloud", -1, entity)
end)

QBCore.Functions.CreateCallback('idrp:BongItems', function(source, cb)
	local Player = QBCore.Functions.GetPlayer(source)
	local lighter = Player.Functions.GetItemByName('idrp_bong_unlitlighter')
	if lighter then
		return cb(true)
	elseif not lighter then
		lib.notify({description = Config.Ox_lib.need_ligher, type = 'error', position = Config.Ox_lib.position})
		return cb(false)
	end
end)



--still working out how to call to a table for multiple strains of weed, as long as you have required item and amount you can take a toke

--[[QBCore.Functions.CreateCallback('idrp:BongWeed', function(source, cb)
	for _, v in pairs(Config.Weed) do
		local Player = QBCore.Functions.GetPlayer(source)
		if Player.Functions.GetItemByName(v.itemName) then
			Player.Functions.RemoveItem(v.itemName, 1)
			return cb(true)
		else
			return cb(false)
		end
	end
end)]]--

