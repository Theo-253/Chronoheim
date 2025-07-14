execute if score ward slot21 matches 1 run scoreboard players set ward slot21 0
execute if score ward slot17 matches 1 at @e[name=slot21,type=armor_stand] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score ward slot17 matches 2 at @e[name=slot21,type=armor_stand] run particle minecraft:bubble_pop ~ ~1 ~ 0.9 0.9 0.9 0.0001 200
execute if score ward slot17 matches 3 at @e[name=slot21,type=armor_stand] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score ward slot21 matches 2 run execute if score slot17isatk booleans matches 1 run scoreboard players set slot17 stun 1
execute if score ward slot21 matches 2 run execute if score slot18isatk booleans matches 1 run scoreboard players set slot18 stun 1
execute if score ward slot21 matches 2 run execute if score slot19isatk booleans matches 1 run scoreboard players set slot19 stun 1
execute if score ward slot21 matches 2 run execute if score slot20isatk booleans matches 1 run scoreboard players set slot20 stun 1
execute if score ward slot21 matches 2 run execute if score slot21isatk booleans matches 1 run scoreboard players set slot21 stun 1
execute if score ward slot21 matches 2 run execute if score slot23isatk booleans matches 1 run scoreboard players set slot23 stun 1
execute if score ward slot21 matches 2 run execute if score slot23isatk booleans matches 1 run scoreboard players set slot23 stun 1
execute if score ward slot21 matches 2 run execute if score slot24isatk booleans matches 1 run scoreboard players set slot24 stun 1
execute if score ward slot21 matches 2 run scoreboard players set ward slot21 0
execute if score ward slot21 matches 3 run execute if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot21 matches 3 run execute if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot17
execute if score ward slot21 matches 3 run execute if score slot17isatk booleans matches 1 run scoreboard players operation shield slot17 -= abilityDmg saves
execute if score ward slot21 matches 3 run execute if score slot17isatk booleans matches 1 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17 
execute if score ward slot21 matches 3 run execute if score slot17isatk booleans matches 1 if score shield slot17 matches ..0 run scoreboard players set shield slot17 0
execute if score ward slot21 matches 3 run execute if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot21 matches 3 run execute if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot18
execute if score ward slot21 matches 3 run execute if score slot18isatk booleans matches 1 run scoreboard players operation shield slot18 -= abilityDmg saves
execute if score ward slot21 matches 3 run execute if score slot18isatk booleans matches 1 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18 
execute if score ward slot21 matches 3 run execute if score slot18isatk booleans matches 1 if score shield slot18 matches ..0 run scoreboard players set shield slot18 0
execute if score ward slot21 matches 3 run execute if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot21 matches 3 run execute if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot19
execute if score ward slot21 matches 3 run execute if score slot19isatk booleans matches 1 run scoreboard players operation shield slot19 -= abilityDmg saves
execute if score ward slot21 matches 3 run execute if score slot19isatk booleans matches 1 if score shield slot19 matches ..0 run scoreboard players operation slot19 hp += shield slot19 
execute if score ward slot21 matches 3 run execute if score slot19isatk booleans matches 1 if score shield slot19 matches ..0 run scoreboard players set shield slot19 0
execute if score ward slot21 matches 3 run execute if score slot20isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot21 matches 3 run execute if score slot20isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot20
execute if score ward slot21 matches 3 run execute if score slot20isatk booleans matches 1 run scoreboard players operation shield slot20 -= abilityDmg saves
execute if score ward slot21 matches 3 run execute if score slot20isatk booleans matches 1 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20 
execute if score ward slot21 matches 3 run execute if score slot20isatk booleans matches 1 if score shield slot20 matches ..0 run scoreboard players set shield slot20 0
execute if score ward slot21 matches 3 run execute if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot21 matches 3 run execute if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot21
execute if score ward slot21 matches 3 run execute if score slot21isatk booleans matches 1 run scoreboard players operation shield slot21 -= abilityDmg saves
execute if score ward slot21 matches 3 run execute if score slot21isatk booleans matches 1 if score shield slot21 matches ..0 run scoreboard players operation slot21 hp += shield slot21 
execute if score ward slot21 matches 3 run execute if score slot21isatk booleans matches 1 if score shield slot21 matches ..0 run scoreboard players set shield slot21 0
execute if score ward slot21 matches 3 run execute if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot21 matches 3 run execute if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot23
execute if score ward slot21 matches 3 run execute if score slot23isatk booleans matches 1 run scoreboard players operation shield slot23 -= abilityDmg saves
execute if score ward slot21 matches 3 run execute if score slot23isatk booleans matches 1 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23 
execute if score ward slot21 matches 3 run execute if score slot23isatk booleans matches 1 if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score ward slot21 matches 3 run execute if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot21 matches 3 run execute if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot21
execute if score ward slot21 matches 3 run execute if score slot23isatk booleans matches 1 run scoreboard players operation shield slot23 -= abilityDmg saves
execute if score ward slot21 matches 3 run execute if score slot23isatk booleans matches 1 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23 
execute if score ward slot21 matches 3 run execute if score slot23isatk booleans matches 1 if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score ward slot21 matches 3 run execute if score slot24isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot21 matches 3 run execute if score slot24isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot24
execute if score ward slot21 matches 3 run execute if score slot24isatk booleans matches 1 run scoreboard players operation shield slot24 -= abilityDmg saves
execute if score ward slot21 matches 3 run execute if score slot24isatk booleans matches 1 if score shield slot24 matches ..0 run scoreboard players operation slot24 hp += shield slot24 
execute if score ward slot21 matches 3 run execute if score slot24isatk booleans matches 1 if score shield slot24 matches ..0 run scoreboard players set shield slot24 0
