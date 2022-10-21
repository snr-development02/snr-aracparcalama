QBCore = nil 

Citizen.CreateThread(function()
   while QBCore == nil do
   	TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
   	Citizen.Wait(30)
   end
end)



RegisterServerEvent('soner:aracparcalama:items')
AddEventHandler('soner:aracparcalama:items', function(cabin, house)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local luck = math.random(1, 100)
    local itemFound = true
    local itemCount = 1

    if itemFound then
        for i = 1, itemCount, 1 do
            local randomItem = Config.TarihiItemler["type"]math.random(1, 2)
            local itemInfo = QBCore.Shared.Items[randomItem]
            if luck == 100 then
                randomItem = "battery"
                itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 80 and luck <= 100 then
				randomItem = "airbag"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 60 and luck <= 80 then
				randomItem = "lowradio"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 40 and luck <= 60 then
				randomItem = "speaker"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 20 and luck <= 40 then
				randomItem = "highradio"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 0 and luck <= 20 then
                randomItem = "kapi"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
            end
            Citizen.Wait(500)
        end
    end
end)




--============================== NPC ALICI ==============================--
QBCore = nil
local DISCORDS_NAME = "Arac Parçalama"
local DISCORDS_IMAGE = ""

RegisterServerEvent('soner:aracparcalama')
AddEventHandler('soner:aracparcalama', function(item, miktar)
    local xPlayer = QBCore.Functions.GetPlayer(source)

    for k,v in pairs(Config.Detaylar[item].GerekliItemler) do
        if xPlayer.Functions.GetItemByName(v.Esya).amount >= miktar then
            paramiktar = Config.Detaylar[item].VerilenEsya.Miktar * miktar
			xPlayer.Functions.RemoveItem(v.Esya, miktar)
			xPlayer.Functions.AddMoney('cash', paramiktar)
			TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['cash'],'add', paramiktar)
			TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[v.Esya],'remove', miktar)

            sendToDiscord("ARAC PARÇA SATIŞ", " **"..getPlayerInfo(source).."** kişisi toptancıya **".. miktar .. "x " ..item .."** sattı, **" .. paramiktar .. "$** kazandı.", 16744576, Config.NPCLOG)
			TriggerClientEvent("QBCore:Notify", source, ''.. miktar ..'x '.. item .. ' sattın, ' .. paramiktar .. '$ kazandın.', "success")
        else
			TriggerClientEvent("QBCore:Notify", source, 'Üzerinizde '..miktar..'x ' ..item..' yok!', "error")
        end
    end
end)

function sendToDiscord(name, message, color, selam)
	local connect = {
		  {
			  ["color"] = color,
			  ["title"] = "**".. name .."**",
			  ["description"] = message,
			  ["footer"] = {
			  ["text"] = os.date('!%Y-%m-%d - %H:%M:%S') .. " - SNR DEVELOPMENT",
			  },
		  }
	  }
	PerformHttpRequest(selam, function(err, text, headers) end, 'POST', json.encode({username = DISCORDS_NAME, embeds = connect, avatar_url = DISCORDS_IMAGE}), { ['Content-Type'] = 'application/json' })
end

function getPlayerInfo(player)
	local _player = player
	local infoString = GetPlayerName(_player) .. " (" .. _player .. ")"
	-- if Config.BilgileriPaylas then
		for k,v in pairs(GetPlayerIdentifiers(_player)) do
			if string.sub(v, 1, string.len("discord:")) == "discord:" then
				infoString = infoString .. "\n<@" .. string.gsub(v,"discord:","") .. ">"
			else
				infoString = infoString .. "\n" .. v
			end
		end
	-- end
	return infoString
end