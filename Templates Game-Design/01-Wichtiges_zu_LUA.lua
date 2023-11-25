-------------------------------------------
---------------- Templates ----------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
------------ Lua 
-------------------------------------------

--- Wichtige Erklärungen
--- 1. Auskommentieren
-- Auskommentieren Zeile - wenn in einer Zeile bei .lua zwei Bindestriche kommen -- wird der Rest der Zeile NICHT als Code gelesen
--[[ Wenn ganze Bereiche über mehrere Zeilen hinweg
auskommentiert werden sollen
dann sieht das 
so aus
]]

--- 2. Textformatierung
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