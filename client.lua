QBCore = nil 

Citizen.CreateThread(function()
   while QBCore == nil do
   	TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
   	Citizen.Wait(30)
   end
end)

RegisterNetEvent('soner:aracparcalama:parcala')
AddEventHandler('soner:aracparcalama:parcala', function()
    if not topluyormu then
        topluyormu = true
        local cSCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)

		TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_WELDING", 0, false)
        QBCore.Functions.Progressbar("accessing_atm", "Araçı Parçalıyorsun...", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            if not cancelled then
                ClearPedTasks(PlayerPedId())
                TriggerServerEvent('soner:aracparcalama:items')
                topluyormu = false
            else
            end
        end)
    end
end)


Citizen.CreateThread(function()  --BLİP DETAYLARI
    for _, info in pairs(Config.Blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


--=========================== TARGET SİDE =====================--


exports["qb-target"]:AddBoxZone(
    "AracTarget",
    vector3(2372.060, 3067.457, 48.152),
    2,
    2,
    {
        name = "AracTarget",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget2",
    vector3(2364.362, 3067.791, 48.130),
    2,
    2,
    {
        name = "AracTarget2",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget3",
    vector3(2361.792, 3069.537, 48.130),
    2,
    2,
    {
        name = "AracTarget3",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget4",
    vector3(2361.701, 3066.689, 48.130),
    2,
    2,
    {
        name = "AracTarget4",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget5",
    vector3(2359.318, 3069.386, 48.130),
    2,
    2,
    {
        name = "AracTarget5",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget6",
    vector3(2359.250, 3067.140, 48.130),
    2,
    2,
    {
        name = "AracTarget6",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget7",
    vector3(2356.725, 3067.071, 48.130),
    2,
    2,
    {
        name = "AracTarget7",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget8",
    vector3(2344.027, 3066.268, 48.130),
    2,
    2,
    {
        name = "AracTarget8",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget9",
    vector3(2345.141, 3069.811, 48.130),
    2,
    2,
    {
        name = "AracTarget9",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget10",
    vector3(2344.285, 3063.885, 48.130),
    2,
    2,
    {
        name = "AracTarget10",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget11",
    vector3(2341.979, 3064.954, 48.130),
    2,
    2,
    {
        name = "AracTarget11",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget12",
    vector3(2354.603, 3029.054, 47.710),
    2,
    2,
    {
        name = "AracTarget12",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget13",
    vector3(2356.725, 3067.071, 48.130),
    2,
    2,
    {
        name = "AracTarget13",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget14",
    vector3(2356.697, 3029.061, 47.710),
    2,
    2,
    {
        name = "AracTarget14",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget15",
    vector3(2359.897, 3037.851, 47.710),
    2,
    2,
    {
        name = "AracTarget15",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget16",
    vector3(2359.607, 3035.816, 47.710),
    2,
    2,
    {
        name = "AracTarget16",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget17",
    vector3(2362.833, 3039.634, 47.590),
    2,
    2,
    {
        name = "AracTarget17",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget19",
    vector3(2370.595, 3081.283, 47.890),
    2,
    2,
    {
        name = "AracTarget19",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)



exports["qb-target"]:AddBoxZone(
    "AracTarget20",
    vector3(2407.221, 3119.276, 47.890),
    2,
    2,
    {
        name = "AracTarget20",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget21",
    vector3(2410.444, 3122.885, 48.370),
    2,
    2,
    {
        name = "AracTarget21",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget22",
    vector3(2412.045, 3119.048, 48.370),
    2,
    2,
    {
        name = "AracTarget22",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget23",
    vector3(2415.529, 3117.923, 47.770),
    2,
    2,
    {
        name = "AracTarget23",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget24",
    vector3(2414.069, 3115.141, 47.770),
    2,
    2,
    {
        name = "AracTarget24",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget25",
    vector3(2409.520, 3114.516, 47.590),
    2,
    2,
    {
        name = "AracTarget25",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget26",
    vector3(2414.451, 3125.250, 47.710),
    2,
    2,
    {
        name = "AracTarget26",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget27",
    vector3(2415.409, 3122.700, 47.710),
    2,
    2,
    {
        name = "AracTarget27",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget28",
    vector3(2399.440, 3142.115, 47.590),
    2,
    2,
    {
        name = "AracTarget28",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget29",
    vector3(2412.142, 3147.999, 47.770),
    2,
    2,
    {
        name = "AracTarget29",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget30",
    vector3(2415.876, 3151.321, 47.770),
    2,
    2,
    {
        name = "AracTarget30",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget31",
    vector3(2413.456, 3156.379, 48.370),
    2,
    2,
    {
        name = "AracTarget31",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget32",
    vector3(2414.071, 3153.164, 48.310),
    2,
    2,
    {
        name = "AracTarget32",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget33",
    vector3(2411.165, 3153.209, 48.310),
    2,
    2,
    {
        name = "AracTarget33",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget34",
    vector3(2403.114, 3149.897, 47.830),
    2,
    2,
    {
        name = "AracTarget34",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)

exports["qb-target"]:AddBoxZone(
    "AracTarget35",
    vector3(2402.975, 3153.530, 47.890),
    2,
    2,
    {
        name = "AracTarget35",
        heading = 118.60,
        debugPoly = false,
        minZ = 18.669,
        maxZ = 999.87834
    },
    {
        options = {
            {
                type = "Client",
                event = "soner:aracparcalama:parcala",
                icon = "fas fa-circle",
                label = "Aracı Kaynak Makinesi İle Parçalamaya Başla"
            }
        },
        distance = 3.5
    }
)


--======================== ALICI NPC ========================--

QBCore = nil
PlayerData = {}
menu = false

Citizen.CreateThread(function()
	while QBCore == nil do
		TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
		Citizen.Wait(0)
	end

	while QBCore.Functions.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUptade')
AddEventHandler('QBCore:Client:OnJobUptade', function(job)
    PlayerData.job = job
end)

RegisterNetEvent('soner:client:aracparcalamanpc')
AddEventHandler('soner:client:aracparcalamanpc', function(playerData, actv)
    if Config.MeslekOlsunmu == true then
    if PlayerData.job and PlayerData.job.name == Config.MeslekIsim then
    toptancimenuac()
    Citizen.Wait(120000)
    QBCore.UI.Menu.CloseAll()
    SetNuiFocus(false, false)
    else
        QBCore.Functions.Notify(Config.MesleksizBildirim, "error")
    end
else
    toptancimenuac()
    Citizen.Wait(120000)
    QBCore.UI.Menu.CloseAll()
    SetNuiFocus(false, false)
end
end)


function toptancimenuac()
    QBCore.UI.Menu.CloseAll()
    local elements = {}

    for k,v in pairs(Config.Detaylar) do
        table.insert(elements, {label = v.VerilenEsya.labeltarih, value = k})
    end

	QBCore.UI.Menu.Open('default', GetCurrentResourceName(), 'toptanci_default', {
		title = '',
		align = 'top-left',
        elements = elements
    },function(data, menu)
		if data.current.value then
            QBCore.UI.Menu.Open('dialog', GetCurrentResourceName(), 'toptanci_dialog',
            {
                title = "Ne kadar dönüştüreceksin? (max10)"
            },
            function(data3, menu3)
                local yazilanmiktar = tonumber(data3.value)
                if yazilanmiktar < 11 then
                    TriggerServerEvent('soner:aracparcalama', data.current.value, yazilanmiktar)
                    menu3.close()
                else
                    QBCore.Functions.Notify("Hatalı Miktar!", "error")
                end
            end, function(data3, menu3)
                menu3.close()
                menuacik = false
            end)
        else
            menu.close()
		end
    end, function(data, menu)
        menu.close()
	end)
end



exports['qb-target']:AddTargetModel("a_m_y_clubcust_02", {  --0xD71FE131
    options = {
        {
            type = "client",
            event = "soner:client:aracparcalamanpc",
            icon = "fas fa-shopping-cart",
            label = "Araç Parça Alıcısı",
        },
    },
    distance = 3.5,
})

Citizen.CreateThread(function()
    if Config.NPCOlsunmu == true then
        RequestModel(Config.NPCKodu)
        while not HasModelLoaded(Config.NPCKodu) do
            Wait(1)
        end
    
        sonerbeysdodoko = CreatePed(1, Config.NPCKodu, Config.NPCKonumu.x, Config.NPCKonumu.y, Config.NPCKonumu.z-1, Config.NPCKonumu.h, false, true)
        SetBlockingOfNonTemporaryEvents(sonerbeysdodoko, true)
        SetPedDiesWhenInjured(sonerbeysdodoko, false)
        SetPedCanPlayAmbientAnims(sonerbeysdodoko, true)
        SetPedCanRagdollFromPlayerImpact(sonerbeysdodoko, false)
        SetEntityInvincible(sonerbeysdodoko, true)
        FreezeEntityPosition(sonerbeysdodoko, true)
        TaskStartScenarioInPlace(sonerbeysdodoko, "WORLD_HUMAN_CLIPBOARD", 0, true);
    end
end)
