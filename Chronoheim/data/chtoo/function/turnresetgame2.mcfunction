execute if score attackIsOngoingGame2 booleans matches 0 run execute if score speed slot16 matches ..-10000 if score speed slot15 matches ..-10000 if score speed slot14 matches ..-10000 run execute if score speed slot13 matches ..-10000 run execute if score speed slot12 matches ..-10000 run execute if score speed slot11 matches ..-10000 run execute if score speed slot10 matches ..-10000 run execute if score speed slot9 matches ..-10000 run scoreboard players set attackIsOngoingGame2 booleans 1

execute if score slot9 hp matches 1.. run scoreboard players operation speed slot9 = maxspeed slot9
execute if score slot10 hp matches 1.. run scoreboard players operation speed slot10 = maxspeed slot10
execute if score slot11 hp matches 1.. run scoreboard players operation speed slot11 = maxspeed slot11
execute if score slot12 hp matches 1.. run scoreboard players operation speed slot12 = maxspeed slot12
execute if score slot13 hp matches 1.. run scoreboard players operation speed slot13 = maxspeed slot13
execute if score slot14 hp matches 1.. run scoreboard players operation speed slot14 = maxspeed slot14
execute if score slot15 hp matches 1.. run scoreboard players operation speed slot15 = maxspeed slot15
execute if score slot16 hp matches 1.. run scoreboard players operation speed slot16 = maxspeed slot16

scoreboard players operation speed slot9 -= speedDebuffSlot9 speedDebuffs
scoreboard players operation speed slot9 += speedBuffSlot9 speedBuffs
scoreboard players operation speed slot10 -= speedDebuffSlot10 speedDebuffs
scoreboard players operation speed slot10 += speedBuffSlot10 speedBuffs
scoreboard players operation speed slot11 -= speedDebuffSlot11 speedDebuffs
scoreboard players operation speed slot11 += speedBuffSlot11 speedBuffs
scoreboard players operation speed slot13 -= speedDebuffSlot13 speedDebuffs
scoreboard players operation speed slot13 += speedBuffSlot13 speedBuffs
scoreboard players operation speed slot14 -= speedDebuffSlot14 speedDebuffs
scoreboard players operation speed slot14 += speedBuffSlot14 speedBuffs
scoreboard players operation speed slot15 -= speedDebuffSlot15 speedDebuffs
scoreboard players operation speed slot15 += speedBuffSlot15 speedBuffs
scoreboard players operation speed slot12 -= speedDebuffSlot12 speedDebuffs
scoreboard players operation speed slot12 += speedBuffSlot12 speedBuffs
scoreboard players operation speed slot16 -= speedDebuffSlot16 speedDebuffs
scoreboard players operation speed slot16 += speedBuffSlot16 speedBuffs

#Double atk resets
scoreboard players set useddoubleatk slot9 0
scoreboard players set useddoubleatk slot10 0
scoreboard players set useddoubleatk slot11 0
scoreboard players set useddoubleatk slot12 0
scoreboard players set useddoubleatk slot13 0
scoreboard players set useddoubleatk slot14 0
scoreboard players set useddoubleatk slot15 0
scoreboard players set useddoubleatk slot16 0


#Misc
scoreboard players set flintatkswap booleans 0
scoreboard players set attackIsOngoingGame2 booleans 1
scoreboard players set abilityusep3 booleans 0
scoreboard players set abilityusep4 booleans 0
scoreboard players add suddenDeath2 deaths 1
execute if score suddenDeath2 deaths matches 20 run title @a[tag=game2] actionbar "Sudden Death is now active! Healing and Shields are disabled."
execute if score side3spinball abilities matches -2 run scoreboard players set side3spinball abilities -1
execute if score side4spinball abilities matches -2 run scoreboard players set side4spinball abilities -1

function chtoo:spellphasep4