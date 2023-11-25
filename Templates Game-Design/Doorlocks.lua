-------------------------------------------
---------------- Templates ----------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
------------ qb-doorlock
-------------------------------------------
--- Wichtige Erklärungen
{ -- TÃ¼r Clubhaus
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
