QBCore = exports['qb-core']:GetCoreObject()
local IsPlayerAbleToHuff = false

RegisterNetEvent('idrp_BongModel', function(itemName)
	local ped = GetPlayerPed(PlayerId())
	local animdict = "anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@"
	local anim = "glass_hold"
	QBCore.Functions.TriggerCallback('idrp:BongItems', function(lighter)
		if lighter then
			for _, v in pairs(Config.Bong_Models) do
				if v.itemName == itemName then
					Prop_name = v.prop
					Prop_name2 = "idrp_bong_unlitlighter"
					if DoesEntityExist(ped) and not IsEntityDead(ped) then
						if IsPedOnFoot(ped) then
							if IsPlayerAbleToHuff == false then
								IsPlayerAbleToHuff = true
								while (not HasAnimDictLoaded(animdict)) do
									RequestAnimDict(animdict)
									Wait(1)
								end
								RequestModel(Prop_name)
								while not HasModelLoaded(Prop_name) do
									Wait(0)
								end
								RequestModel(Prop_name2)
								while not HasModelLoaded(Prop_name2) do
									Wait(0)
								end
								TaskPlayAnim(ped, animdict, anim, 8.00, -8.00, -1, (2 + 16 + 32), 0.00, false, false, false)
								local x, y, z = table.unpack(GetEntityCoords(ped))
								local coords = table.unpack( v.coords)		--prop placement
								local coords2 = table.unpack(v.rcoords)		--prop rotation
								Bongmodel = CreateObject(GetHashKey(Prop_name), x, y, z+0.2, true,  true, true)
								Lightermodel = CreateObject(GetHashKey(Prop_name2), x, y, z +0.2, true,  true, true)
								AttachEntityToEntity(Bongmodel, ped, GetPedBoneIndex(ped, v.bone), coords.x, coords.y, coords2.z, coords2.x, coords2.y, coords2.z, true, true, false, true, 1, true)
								AttachEntityToEntity(Lightermodel, ped, GetPedBoneIndex(ped, 58866),0.11, -0.02, 0.001, -120.0, 0.0, 0.0, true, true, false, true, 1, true)
								lib.notify({description = Config.Ox_lib.take_hit, type = 'success', position = Config.Ox_lib.position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
								--QBCore.Functions.Notify('[E] to take a Hit [G] to stash bong', 'success', 9500)		----uncomment if QBCore Notify
							else
								lib.notify({description = Config.Ox_lib.holding, type = 'error', position = Config.Ox_lib.position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
								--QBCore.Functions.Notify('You are holding your bong', 'error', 7500)		--uncomment if QBCore Notify
							end
						else
							lib.notify({description = Config.Ox_lib.no_choof, type = 'error', position = Config.Ox_lib.position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
							--QBCore.Functions.Notify('You can not choof here', 'error', 7500)		--uncomment if QBCore Notify
						end
					else
						lib.notify({description = Config.Ox_lib.dead, type = 'error',position = Config.Ox_lib.position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
						--QBCore.Functions.Notify('The dead can not use a bong', 'error', 7500)				--uncomment if QBCore Notify
					end
				end
			end
		else
			lib.notify({description = Config.Ox_lib.need_lighter, type = 'error', position = Config.Ox_lib.position, duration = Config.Ox_lib.large_duration})	--comment if ox-lib Notify
		end
	end)
end)


RegisterNetEvent("idrp:BongReset", function(source)
	local ped = GetPlayerPed(PlayerId())
	local animdict = "anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@"
	local anim = "glass_hold"
	Prop_name2 = "idrp_bong_unlitlighter"
	while (not HasAnimDictLoaded(animdict)) do
		RequestAnimDict(animdict)
	Wait(1)
	end
	RequestModel(Prop_name2)
	while not HasModelLoaded(Prop_name2) do
		Wait(0)
	end
	TaskPlayAnim(ped, animdict, anim, 8.00, -8.00, -1, (2 + 16 + 32), 0.00, false, false, false)
	local x,y,z = table.unpack(GetEntityCoords(ped))
	Lightermodel = CreateObject(GetHashKey(Prop_name2), x, y, z+0.2, true,  true, true)
	AttachEntityToEntity(Lightermodel, ped, GetPedBoneIndex(ped, 58866),0.11, -0.02, 0.001, -120.0, 0.0, 0.0, true, true, false, true, 1, true)
	lib.notify({description = Config.Ox_lib.take_hit, type = 'success', position = Config.Ox_lib.position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
	--QBCore.Functions.Notify('[E] to take a Hit [G] to stash bong', 'success', 9500)		----uncomment if QBCore Notify
end)

RegisterNetEvent("idrp:BongStop", function(source)
	if IsPlayerAbleToHuff == true then
		PlayerIsUnableToBong()
		lib.notify({description = Config.Ox_lib.stashed, type = 'success', position = Config.Ox_lib.notify_position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
		--QBCore.Functions.Notify('Bong Stashed', 'success', 7500)				--uncomment if QBCore Notify
	else
		lib.notify({description = Config.Ox_lib.not_holding, type = 'error',position = Config.Ox_lib.notify_position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
		--QBCore.Functions.Notify('You are not holding your bong', 'error', 7500)				--uncomment if QBCore Notify
			print("model")
	end
end)

RegisterNetEvent("idrp:BongHit", function()
	local ped = GetPlayerPed(PlayerId())
	local animdict = "anim@safehouse@bong"
	local anim = "bong_stage4"
	Prop_name3 = "idrp_bong_lighter"
	while (not HasAnimDictLoaded(animdict)) do
		RequestAnimDict(animdict)
		Wait(1)
	end
	DeleteObject(Lightermodel)
	SetModelAsNoLongerNeeded(Lightermodel)
	RequestModel(Prop_name3)
	while not HasModelLoaded(Prop_name3) do
		Wait(0)
	end
	TaskPlayAnim(ped, animdict, anim, 8.00, -8.00, -1, (2 + 16 + 32), 0.00, false, false, false)
	local x,y,z = table.unpack(GetEntityCoords(ped))
	LightermodelLit = CreateObject(GetHashKey(Prop_name3), x, y, z+0.2, true,  true, true)
	AttachEntityToEntity(LightermodelLit, ped, GetPedBoneIndex(ped, 58866),0.11, -0.02, 0.001, -120.0, 0.0, 0.0, true, true, false, true, 1, true)
	TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 5, "vape_sfx", 1.0)
	Wait(4500)
	TriggerServerEvent("idrp:CloudEffect", PedToNet(ped))
	DeleteObject(LightermodelLit)
	SetModelAsNoLongerNeeded(LightermodelLit)
	TriggerEvent("idrp:BongReset", 0)
end)

---Cloud SFX
Bong_cloud_bone = {20279,}
Cloud_sfx = "exp_grd_bzgas_smoke"
Cloud_dict = "core"
RegisterNetEvent("idrp:BongCloud", function(c_ped)
	for _, bones in pairs(Bong_cloud_bone) do
		if DoesEntityExist(NetToPed(c_ped)) and not IsEntityDead(NetToPed(c_ped)) then
			Cloud = UseParticleFxAsset(Cloud_dict)
			Part = StartParticleFxLoopedOnEntityBone(Cloud_sfx, NetToPed(c_ped), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), bones), Config.controls.cloud_size, false, false, false)
			Wait(Config.controls.cloud_time)
			while DoesParticleFxLoopedExist(Part) do
				StopParticleFxLooped(Part, true)
				Wait(0)
			end
			Wait(Config.controls.cloud_time*3)
			RemoveParticleFxFromEntity(NetToPed(c_ped))
			break
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		local ped = GetPlayerPed(PlayerId())
		if IsPedInAnyVehicle(ped, true) then
			PlayerIsEnteringVehicle()
		end
		if IsPlayerAbleToHuff then
			if IsControlPressed(0, Config.controls.use_bong) then
				Wait(Config.controls.activate_time)
				if IsControlPressed(0, Config.controls.use_bong) then
					TriggerEvent("idrp:BongHit", 0)
				end
				Wait(Config.controls.bong_cd)
			end
			if IsControlPressed(0, Config.controls.stash_bong) then
				Wait(Config.controls.activate_time)
				if IsControlPressed(0, Config.controls.stash_bong) then
					TriggerEvent("idrp:BongStop", source, 0)
				end
				Wait(1000)
			end
		end
		Wait(1)
	end
end)

function PlayerIsEnteringVehicle()
	IsPlayerAbleToHuff = false
	local ped = GetPlayerPed(PlayerId())
	local animdict = "anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@"
	DeleteObject(Bongmodel)
	DeleteObject(Lightermodel)
	DeleteObject(LightermodelLit)
	SetModelAsNoLongerNeeded(Bongmodel)
	SetModelAsNoLongerNeeded(Lightermodel)
	SetModelAsNoLongerNeeded(LightermodelLit)
	TaskPlayAnim(ped, animdict, "exit", 8.00, -8.00, -1, (2 + 16 + 32), 0.00, false, false, false)
end

function PlayerIsUnableToBong()
	IsPlayerAbleToHuff = false
	local ped = GetPlayerPed(PlayerId())
	DeleteObject(Bongmodel)
	DeleteObject(Lightermodel)
	DeleteObject(LightermodelLit)
	SetModelAsNoLongerNeeded(Bongmodel)
	SetModelAsNoLongerNeeded(Lightermodel)
	SetModelAsNoLongerNeeded(LightermodelLit)
	--ClearPedTasksImmediately(ped)		--commented so if sitting you do not stand when putting bong away
	ClearPedSecondaryTask(ped)
end
