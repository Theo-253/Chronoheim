effect clear @a[tag=game1] strength
execute if score abilitynumber abilities matches 12 run scoreboard players operation cooldown slot2 = aceSetCooldown abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation durationSlot2 SpeedDebuffs = aceLeaderDuration abilitystats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation speedDebuffSlot2 SpeedDebuffs = aceLeader abilityStats





#This goes at the bottom
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
clear @p[tag=p2]
effect clear @p[tag=p2]
function ch:turnend
#Make sure to add burn to your abilities
