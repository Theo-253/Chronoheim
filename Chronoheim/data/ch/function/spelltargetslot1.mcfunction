effect clear @a[tag=game1] strength
execute if score spellnumber spells matches 1 run say yo 

execute if score spellnumber spells matches 26 run execute if score durationSlot1 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot1 shield = dragonforgeDuration spellStats 
execute if score spellnumber spells matches 26 run scoreboard players operation shield slot1 += dragonforge spellStats
execute if score spellnumber spells matches 26 run execute if score alivep1 deaths matches 1 run scoreboard players operation shield slot1 += dragonforge spellStats


#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0
clear @p[tag=p2]
effect clear @p[tag=p2]
function ch:turnend