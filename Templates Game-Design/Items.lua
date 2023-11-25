-------------------------------------------
---------------- Templates ----------------
-------------------------------------------
-------------------------------------------
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
