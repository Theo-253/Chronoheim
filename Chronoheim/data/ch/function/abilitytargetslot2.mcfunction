effect clear @a[tag=game1] strength
execute if score abilitynumber abilities matches 12 run scoreboard players set cooldown slot2 3
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players set durationSlot2 SpeedDebuffs 3
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players set speedDebuffSlot2 SpeedDebuffs 1000





#This goes at the bottom
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
clear @p[tag=p2]
function ch:turnend
#Make sure to add burn to your abilities
