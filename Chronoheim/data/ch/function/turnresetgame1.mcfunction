execute if score attackIsOngoingGame1 booleans matches 0 run execute if score speed slot8 matches ..-10000 if score speed slot7 matches ..-10000 if score speed slot6 matches ..-10000 run execute if score speed slot5 matches ..-10000 run execute if score speed slot4 matches ..-10000 run execute if score speed slot3 matches ..-10000 run execute if score speed slot2 matches ..-10000 run execute if score speed slot1 matches ..-10000 run scoreboard players set attackIsOngoingGame1 booleans 1

execute if score slot1 hp matches 1.. run scoreboard players operation speed slot1 = maxspeed slot1
execute if score slot2 hp matches 1.. run scoreboard players operation speed slot2 = maxspeed slot2
execute if score slot3 hp matches 1.. run scoreboard players operation speed slot3 = maxspeed slot3
execute if score slot4 hp matches 1.. run scoreboard players operation speed slot4 = maxspeed slot4
execute if score slot5 hp matches 1.. run scoreboard players operation speed slot5 = maxspeed slot5
execute if score slot6 hp matches 1.. run scoreboard players operation speed slot6 = maxspeed slot6
execute if score slot7 hp matches 1.. run scoreboard players operation speed slot7 = maxspeed slot7
execute if score slot8 hp matches 1.. run scoreboard players operation speed slot8 = maxspeed slot8

scoreboard players operation speed slot1 -= speedDebuffSlot1 speedDebuffs
scoreboard players operation speed slot1 += speedBuffSlot1 speedBuffs
scoreboard players operation speed slot2 -= speedDebuffSlot2 speedDebuffs
scoreboard players operation speed slot2 += speedBuffSlot2 speedBuffs
scoreboard players operation speed slot3 -= speedDebuffSlot3 speedDebuffs
scoreboard players operation speed slot3 += speedBuffSlot3 speedBuffs
scoreboard players operation speed slot5 -= speedDebuffSlot5 speedDebuffs
scoreboard players operation speed slot5 += speedBuffSlot5 speedBuffs
scoreboard players operation speed slot6 -= speedDebuffSlot6 speedDebuffs
scoreboard players operation speed slot6 += speedBuffSlot6 speedBuffs
scoreboard players operation speed slot7 -= speedDebuffSlot7 speedDebuffs
scoreboard players operation speed slot7 += speedBuffSlot7 speedBuffs
scoreboard players operation speed slot4 -= speedDebuffSlot4 speedDebuffs
scoreboard players operation speed slot4 += speedBuffSlot4 speedBuffs
scoreboard players operation speed slot8 -= speedDebuffSlot8 speedDebuffs
scoreboard players operation speed slot8 += speedBuffSlot8 speedBuffs

#Double atk resets
scoreboard players set useddoubleatk slot1 0
scoreboard players set useddoubleatk slot2 0
scoreboard players set useddoubleatk slot3 0
scoreboard players set useddoubleatk slot4 0
scoreboard players set useddoubleatk slot5 0
scoreboard players set useddoubleatk slot6 0
scoreboard players set useddoubleatk slot7 0
scoreboard players set useddoubleatk slot8 0


#Misc
scoreboard players set flintatkswap booleans 0
scoreboard players set attackIsOngoingGame1 booleans 1
scoreboard players set abilityusep1 booleans 0
scoreboard players set abilityusep2 booleans 0
scoreboard players add suddenDeath deaths 1
execute if score suddenDeath deaths matches 20 run title @a[tag=game1] actionbar "Sudden Death is now active! Healing and Shields are disabled."
execute if score side1spinball abilities matches -2 run scoreboard players set side1spinball abilities -1
execute if score side2spinball abilities matches -2 run scoreboard players set side2spinball abilities -1

function ch:spellphasep2