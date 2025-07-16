execute if score ward slot24 matches 1 run scoreboard players set ward slot24 0
execute if score ward slot24 matches 1 at @e[name=slot24,type=armor_stand] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score ward slot24 matches 2 at @e[name=slot24,type=armor_stand] run particle minecraft:bubble_pop ~ ~1 ~ 0.9 0.9 0.9 0.0001 200
execute if score ward slot24 matches 3 at @e[name=slot24,type=armor_stand] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score ward slot24 matches 2 run execute if score slot17isatk booleans matches 1 run scoreboard players set slot17 stun 1
execute if score ward slot24 matches 2 run execute if score slot18isatk booleans matches 1 run scoreboard players set slot18 stun 1
execute if score ward slot24 matches 2 run execute if score slot19isatk booleans matches 1 run scoreboard players set slot19 stun 1
execute if score ward slot24 matches 2 run execute if score slot20isatk booleans matches 1 run scoreboard players set slot20 stun 1
execute if score ward slot24 matches 2 run execute if score slot21isatk booleans matches 1 run scoreboard players set slot21 stun 1
execute if score ward slot24 matches 2 run execute if score slot23isatk booleans matches 1 run scoreboard players set slot23 stun 1
execute if score ward slot24 matches 2 run execute if score slot23isatk booleans matches 1 run scoreboard players set slot23 stun 1
execute if score ward slot24 matches 2 run execute if score slot24isatk booleans matches 1 run scoreboard players set slot24 stun 1
execute if score ward slot24 matches 2 run scoreboard players set ward slot24 0
