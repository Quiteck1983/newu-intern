-------------------------------------------
---------------- Templates ----------------
-------------------------------------------
-------------------------------------------

-- Auskommentieren Zeile - wenn in einer Zeile bei .lua zwei Bindestriche kommen -- wird der Rest der Zeile NICHT als Code gelesen
--[[ Wenn ganze Bereiche über mehrere Zeilen hinweg
auskommentiert werden sollen
dann sieht das 
so aus
]]
-------------------------------------------
------------ qb-doorlock
-------------------------------------------
--- Wichtige Erklärungen
{ -- Tür Clubhaus
    objName = "v_ilev_lostdoor",    -- Propname der Tür
    objYaw = 265.0,
    objCoords = vector3(981.15, -103.26, 74.99),    -- Koordinaten der Tür
    textCoords = vector3(981.15, -103.26, 74.99),   -- Einfach die selbe wie oben
    authorizedGangs = {'lostmc'},   -- Das wäre der Gang-Name Alternativen wären folgende: (Aber immer nur eine Option wählen!!!!)
        authorizedJobs = { 'police'},   -- Autorrisiert die Tür an einen Job
        authorizedJobs = { ['police']=0, ['bcso']=0, ['sasp']=0 }   -- Jobs und Ränge (das mit den Rängen ist bei Gangs genauso)
        authorizedCitizenIDs = { 'ABC123', 'DEF456' }   -- Autorisiert bestimmte CharIDs (Char, nicht User)
        items = {'item_1','item_2'},    -- Setzt bestimmte Items voraus. Wenn mehrere eingetragen werden, MÜSSEN alle vorhanden sein  
    locked = true,      -- true/false - Gibt den Standart-Zustand der Tür an (nach Server-Restart)
    pickable = false,   -- true/false - Gibt an, ob die Tür geknackt werden kann
    distance = 2.0,     -- Distanz zum öffnen/schließen
    size = 2
},
--- Folgendes ist ein Beispiel für eine Einzeltür/tor
{ -- Gouverneur  Office
    objName = "ex_p_mp_door_apart_door_black",
    objYaw = 265.0,
    objCoords = vector3(-1292.257, -568.2955, 41.33635),
    textCoords = vector3(-1292.257, -568.2955, 41.33635),
    authorizedJobs = {'gov'},
    locking = false,
    locked = true,
    pickable = false,
    distance = 2.0,
    size = 2
}, 
--- Folgendes ist ein Beispiel für eine Doppeltür
{ -- Eingang
    textCoords = vector3(-1285.097, -568.3997, 30.70686),
    authorizedJobs = {'gov'},
    locking = false,
    locked = false,
    pickable = false,
    distance = 2.5,
    doors = {{
        objName = "fluorine4305_cityholl_maindoor01_r",
        objYaw = 355.0,
        objCoords = vector3(-1285.097, -568.3997, 30.70686)
    }, {
        objName = "fluorine4305_cityholl_maindoor01_l",
        objYaw = 355.0,
        objCoords = vector3(-1286.863, -566.2954, 30.70686)
    }}
},
-------------------------------------------
------------ qb-core // shared/items
-------------------------------------------
--- Im folgenden ein Beispiel für ein Items
["kaese"] = {       -- Registername
    ["name"] = "kaese",     -- Itemname (KEINE Umlaute verwenden)
    ["label"] = "KÃ¤se",    -- Itemname, wie er im Inventar angezeigt wird
    ["weight"] = 20,        -- Itemgewicht
    ["type"] = "item",      -- Itemtyp
    ["image"] = "kaese.png",    -- Name des Bildes
    ["unique"] = false,     -- false/true - Gibt an, ob es ein einzigartiges Item ist. Bei false werden Items gestackt. Wichjtig bei Items, die Metadaten bekommen, wie Ausweise oder Waffen, auf true zu setzen
    ["useable"] = true,     -- true/false - Gibt an, ob das Item nutzbar ist
    ["shouldClose"] = false, -- True/false - Gibt an, ob das Nutzen des Items das Inventar schließt
    ["combinable"] = nil,   -- Kombiniert Items zusammen, um irgenwas anderes draus zu machen (Quasi Handcraftring) Dazu aber später mehr
    ["description"] = ""    -- Itembeschreibung. Wird im Inventar angezeigt
},
--[[
    KÃ¤se sieht ja ziemlich komisch aus.
    Lua nutzt eine Formatierung für Umlaute. Wenn ihr diese einfach normal schreibt, werden diese als ? angezeigt
    Überall dort, wo etwas im Spiel angezeigt werden soll, im Falle der Items wären das "label" und "description", MÜSST ihr mit den Formatierungen arbeiten
        ä: Ã¤
        ö: Ã¶
        ü: Ã¼
        ß: ÃŸ
        Ä: Ã„
        Ö: Ã-
        Ü: Ãœ
]]
