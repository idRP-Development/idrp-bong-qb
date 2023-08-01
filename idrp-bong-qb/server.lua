local QBCore = exports['qb-core']:GetCoreObject()

--Bong items
for _, v in pairs(Config.Bong_Models) do
	QBCore.Functions.CreateUseableItem(v.itemName, function(source, item)
		local Player = QBCore.Functions.GetPlayer(source)
		if Player.Functions.GetItemBySlot(item.slot) then
			TriggerClientEvent('idrp_BongModel', source, v.itemName)
			print('looking for next bit')
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
	print('found lighter')
end)
