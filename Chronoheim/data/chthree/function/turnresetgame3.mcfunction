execute if score attackIsOngoingGame3 booleans matches 0 run execute if score speed slot24 matches ..-10000 if score speed slot23 matches ..-10000 if score speed slot22 matches ..-10000 run execute if score speed slot21 matches ..-10000 run execute if score speed slot20 matches ..-10000 run execute if score speed slot19 matches ..-10000 run execute if score speed slot18 matches ..-10000 run execute if score speed slot17 matches ..-10000 run scoreboard players set attackIsOngoingGame3 booleans 1

execute if score slot17 hp matches 1.. run scoreboard players operation speed slot17 = maxspeed slot17
execute if score slot18 hp matches 1.. run scoreboard players operation speed slot18 = maxspeed slot18
execute if score slot19 hp matches 1.. run scoreboard players operation speed slot19 = maxspeed slot19
execute if score slot20 hp matches 1.. run scoreboard players operation speed slot20 = maxspeed slot20
execute if score slot21 hp matches 1.. run scoreboard players operation speed slot21 = maxspeed slot21
execute if score slot22 hp matches 1.. run scoreboard players operation speed slot22 = maxspeed slot22
execute if score slot23 hp matches 1.. run scoreboard players operation speed slot23 = maxspeed slot23
execute if score slot24 hp matches 1.. run scoreboard players operation speed slot24 = maxspeed slot24


scoreboard players operation speed slot17 -= speedDebuffSlot17 speedDebuffs
scoreboard players operation speed slot17 += speedBuffSlot17 speedBuffs
scoreboard players operation speed slot18 -= speedDebuffSlot18 speedDebuffs
scoreboard players operation speed slot18 += speedBuffSlot18 speedBuffs
scoreboard players operation speed slot19 -= speedDebuffSlot19 speedDebuffs
scoreboard players operation speed slot19 += speedBuffSlot19 speedBuffs
scoreboard players operation speed slot21 -= speedDebuffSlot21 speedDebuffs
scoreboard players operation speed slot21 += speedBuffSlot21 speedBuffs
scoreboard players operation speed slot22 -= speedDebuffSlot22 speedDebuffs
scoreboard players operation speed slot22 += speedBuffSlot22 speedBuffs
scoreboard players operation speed slot23 -= speedDebuffSlot23 speedDebuffs
scoreboard players operation speed slot23 += speedBuffSlot23 speedBuffs
scoreboard players operation speed slot20 -= speedDebuffSlot20 speedDebuffs
scoreboard players operation speed slot20 += speedBuffSlot20 speedBuffs
scoreboard players operation speed slot24 -= speedDebuffSlot16 speedDebuffs
scoreboard players operation speed slot24 += speedBuffSlot16 speedBuffs

#Double atk resets
scoreboard players set useddoubleatk slot17 0
scoreboard players set useddoubleatk slot18 0
scoreboard players set useddoubleatk slot19 0
scoreboard players set useddoubleatk slot20 0
scoreboard players set useddoubleatk slot21 0
scoreboard players set useddoubleatk slot22 0
scoreboard players set useddoubleatk slot23 0
scoreboard players set useddoubleatk slot24 0


#Misc
scoreboard players set flintatkswap booleans 0
scoreboard players set attackIsOngoingGame3 booleans 1
scoreboard players set abilityusep5 booleans 0
scoreboard players set abilityusep6 booleans 0
scoreboard players add suddenDeath3 deaths 1
execute if score suddenDeath3 deaths matches 20 run title @a[tag=game3] actionbar "Sudden Death is now active! Healing and Shields are disabled."
execute if score side5spinball abilities matches -2 run scoreboard players set side5spinball abilities -1
execute if score side6spinball abilities matches -2 run scoreboard players set side6spinball abilities -1

function chthree:spellphasep6