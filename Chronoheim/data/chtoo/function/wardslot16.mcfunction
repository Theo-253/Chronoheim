execute if score ward slot16 matches 1 run scoreboard players set ward slot16 0
execute if score ward slot16 matches 1 at @e[name=slot16,type=armor_stand] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score ward slot16 matches 2 at @e[name=slot16,type=armor_stand] run particle minecraft:bubble_pop ~ ~1 ~ 0.9 0.9 0.9 0.0001 200
execute if score ward slot16 matches 3 at @e[name=slot16,type=armor_stand] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score ward slot16 matches 2 run execute if score slot9isatk booleans matches 1 run scoreboard players set slot9 stun 1
execute if score ward slot16 matches 2 run execute if score slot10isatk booleans matches 1 run scoreboard players set slot10 stun 1
execute if score ward slot16 matches 2 run execute if score slot11isatk booleans matches 1 run scoreboard players set slot11 stun 1
execute if score ward slot16 matches 2 run execute if score slot12isatk booleans matches 1 run scoreboard players set slot12 stun 1
execute if score ward slot16 matches 2 run execute if score slot13isatk booleans matches 1 run scoreboard players set slot13 stun 1
execute if score ward slot16 matches 2 run execute if score slot14isatk booleans matches 1 run scoreboard players set slot14 stun 1
execute if score ward slot16 matches 2 run execute if score slot15isatk booleans matches 1 run scoreboard players set slot15 stun 1
execute if score ward slot16 matches 2 run execute if score slot16isatk booleans matches 1 run scoreboard players set slot16 stun 1
execute if score ward slot16 matches 2 run scoreboard players set ward slot16 0
