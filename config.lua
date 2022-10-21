


--===================== ALICI NPC ============================--
Config = {
    Detaylar = {
        ["Batarya"] = {
            GerekliItemler = {
                {Esya = 'battery', Miktar = 1}
            },
            VerilenEsya = {Item = 'cash', labeltarih = 'Batarya', Miktar = 500}
        },
        ["Hava Yastığı"] = {
            GerekliItemler = {
                {Esya = 'airbag', Miktar = 1}
            },
            VerilenEsya = {Item = 'cash', labeltarih = 'Hava Yastığı', Miktar = 500}
        },
        ["Düşük Kalite Araç Radyosu"] = {
            GerekliItemler = {
                {Esya = 'lowradio', Miktar = 1}
            },
            VerilenEsya = {Item = 'cash', labeltarih = 'Araç Radyosu', Miktar = 500}
        },
        ["Araç Höporlörü"] = {
            GerekliItemler = {
                {Esya = 'speaker', Miktar = 1}
            },
            VerilenEsya = {Item = 'cash', labeltarih = 'Araç Höporlörü', Miktar = 500}
        },
        ["Yüksek Kalite Araç Radyosu"] = {
            GerekliItemler = {
                {Esya = 'highradio', Miktar = 1}
            },
            VerilenEsya = {Item = 'cash', labeltarih = 'Yüksek Kalite Araç Radyosu', Miktar = 500}
        },
        ["Araç Kapısı"] = {
            GerekliItemler = {
                {Esya = 'kapi', Miktar = 1}
            },
            VerilenEsya = {Item = 'cash', labeltarih = 'Araç Kapısı', Miktar = 500}
        }
    }
}

Config.NPCOlsunmu = true -- npc olup olmayacagı
Config.NPCKodu = "a_m_y_clubcust_02" -- npc hash kodu
Config.NPCKonumu = { x = -2021.37, y = -365.736, z = 48.106, h = 280.08 }

Config.MesleksizBildirim = "Seni tanıdığımı düşünmüyorum."
Config.MeslekOlsunmu = true --Meslek sorgusu aç/kapat(true/false)
Config.MeslekIsim = "drivers" --NPC'yi açan meslek
Config.NPCLOG = "WEBHOOK"
--============================================================--







--============================================================--
Config.Blips = { -- BLIPLER
    {title="Araç Hurdalığı", colour=1, id=256 , x = 2950.405, y = 2785.190, z = 40.754},
}
--============================================================--







--============================================================--
Config.TarihiItemler = {  --SERVER.LUA EKLEMENİZ LAZIM
    ["battery"] = {},
    ["airbag"] = {},
    ["lowradio"] = {},
    ["speaker"] = {},
    ["highradio"] = {},
    ["kapi"] = {},
}
--============================================================--