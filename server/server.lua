Core = exports["cs_lib"]:GetLib()


Core.RegisterCallback('cs_autorepair:checkmoney', function(source, cb, item)
	cb(Core.GetTotalMoney(source, 'bank'))
end)

RegisterNetEvent("cs_autorepair:removemoney", function(money)
	local _source = source
	Core.SubMoney(_source, 'bank', money)
end)

RegisterServerEvent('cs_autorepair:sendbill')
AddEventHandler('cs_autorepair:sendbill', function(target, payment, id, job)
    local xPlayer = Core.GetId(id)
	local xTarget = Core.GetId(target)
    local payment = tostring(payment)
    if payment ~= nil then
        Core.SubMoney(xTarget, 'bank', payment)
        Core.SocietyAddMoney(job, payment)
        Core.Notification(xPlayer.source, Config.Language[Config.Locale]['paid']..payment.."$")
        Core.Notification(xTarget.source, Config.Language[Config.Locale]['paid_target']..payment.."$")
    end
end)