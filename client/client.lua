Core = exports["cs_lib"]:GetLib()

Citizen.CreateThread(function()
	Citizen.Wait(2000)
	for k, conf in pairs(Config.Repair) do
		local blip = AddBlipForCoord(conf.x, conf.y, conf.z)
		SetBlipSprite (blip, 446)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.6)
		SetBlipColour (blip, 4)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName(Config.Language[Config.Locale]['blipname'])
		EndTextCommandSetBlipName(blip)
	end
end)

Citizen.CreateThread(function()
    for k, conf in pairs(Config.Repair) do

		local options = {
			{
				
				icon = 'fa-solid fa-wrench',
				label = Config.Language[Config.Locale]['fix'],
				distance = 2,
				canInteract = function(vehicle)
					local coords = GetEntityCoords(vehicle)
					local distance = #(coords - vec3(conf.x, conf.y, conf.z))

					if distance < 5 then
						return true
					end
				end,
				onSelect = function(data)
					local vehicle = data.entity

					Core.TriggerCallback('cs_autorepair:checkmoney', function(qtty)
						if qtty >= Config.money then

							local alert = lib.alertDialog({
								header = Config.Language[Config.Locale]['header'],
								content = Config.Language[Config.Locale]['areyousure']..Config.money.."$", 
								centered = true,
								cancel = true,
							})
				
							if alert == 'confirm' then
								if Config.disableinventory then
									LocalPlayer.state.invBusy = true
								end
								Core.Progressbar('repair_inprogress', 'car', Config.Language[Config.Locale]['repairinprogress'], Config.RepairingTime, false, false, {
									disableMovement = false,
									disableMouse = false, 
									disableCombat = false
								}, {}, {}, {}, function()
									--Finish Here
									SetVehicleBodyHealth(vehicle, 1000.0)
									SetVehicleDeformationFixed(vehicle)
									SetVehicleFixed(vehicle)
									SetVehicleEngineOn(vehicle, true, true, true)
									TriggerServerEvent('cs_autorepair:removemoney', Config.money)
									if Config.disableinventory then
										LocalPlayer.state.invBusy = false
									end
								end, function ()
								end)
							end
						else
							Core.Notification(Config.Language[Config.Locale]['notenoughmoney'])
						end
					end, 'money')
				end
			}
		}
		exports.ox_target:addGlobalVehicle(options)
    end
end)

RegisterNetEvent("Flyx:confirmpayment")
AddEventHandler("Flyx:confirmpayment", function(target, faktura, id, job)
	local alert = lib.alertDialog({
		header = Config.Language[Config.Locale]['invoiceheader'],
		content = Config.Language[Config.Locale]['invoicemessage'] ..faktura.."$",
		centered = true,
		cancel = true,
	})

	if alert == 'confirm' then
		if Config.Cashregister then
			TriggerServerEvent('cs_cashregister:SendBill', target, faktura, id, job)
		else
			TriggerServerEvent('cs_autorepair:sendbill', target, faktura, id, job)
		end
	end
end)