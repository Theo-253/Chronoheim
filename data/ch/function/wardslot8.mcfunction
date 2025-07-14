execute if score ward slot8 matches 1 run scoreboard players set ward slot8 0
execute if score ward slot1 matches 1 at @e[name=slot8,type=armor_stand] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score ward slot1 matches 2 at @e[name=slot8,type=armor_stand] run particle minecraft:bubble_pop ~ ~1 ~ 0.9 0.9 0.9 0.0001 200
execute if score ward slot1 matches 3 at @e[name=slot8,type=armor_stand] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score ward slot8 matches 2 run execute if score slot1isatk booleans matches 1 run scoreboard players set slot1 stun 1
execute if score ward slot8 matches 2 run execute if score slot2isatk booleans matches 1 run scoreboard players set slot2 stun 1
execute if score ward slot8 matches 2 run execute if score slot3isatk booleans matches 1 run scoreboard players set slot3 stun 1
execute if score ward slot8 matches 2 run execute if score slot4isatk booleans matches 1 run scoreboard players set slot4 stun 1
execute if score ward slot8 matches 2 run execute if score slot5isatk booleans matches 1 run scoreboard players set slot5 stun 1
execute if score ward slot8 matches 2 run execute if score slot6isatk booleans matches 1 run scoreboard players set slot6 stun 1
execute if score ward slot8 matches 2 run execute if score slot7isatk booleans matches 1 run scoreboard players set slot7 stun 1
execute if score ward slot8 matches 2 run execute if score slot8isatk booleans matches 1 run scoreboard players set slot8 stun 1
execute if score ward slot8 matches 2 run scoreboard players set ward slot8 0
