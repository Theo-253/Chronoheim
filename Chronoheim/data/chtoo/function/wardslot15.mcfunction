execute if score ward slot15 matches 1 run scoreboard players set ward slot15 0
execute if score ward slot15 matches 1 at @e[name=slot15,type=armor_stand] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score ward slot15 matches 2 at @e[name=slot15,type=armor_stand] run particle minecraft:bubble_pop ~ ~1 ~ 0.9 0.9 0.9 0.0001 200
execute if score ward slot15 matches 3 at @e[name=slot15,type=armor_stand] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score ward slot15 matches 2 run execute if score slot9isatk booleans matches 1 run scoreboard players set slot9 stun 1
execute if score ward slot15 matches 2 run execute if score slot10isatk booleans matches 1 run scoreboard players set slot10 stun 1
execute if score ward slot15 matches 2 run execute if score slot11isatk booleans matches 1 run scoreboard players set slot11 stun 1
execute if score ward slot15 matches 2 run execute if score slot12isatk booleans matches 1 run scoreboard players set slot12 stun 1
execute if score ward slot15 matches 2 run execute if score slot13isatk booleans matches 1 run scoreboard players set slot13 stun 1
execute if score ward slot15 matches 2 run execute if score slot14isatk booleans matches 1 run scoreboard players set slot14 stun 1
execute if score ward slot15 matches 2 run execute if score slot15isatk booleans matches 1 run scoreboard players set slot15 stun 1
execute if score ward slot15 matches 2 run execute if score slot16isatk booleans matches 1 run scoreboard players set slot16 stun 1
execute if score ward slot15 matches 2 run scoreboard players set ward slot15 0
execute if score ward slot15 matches 3 run execute if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot15 matches 3 run execute if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot9
execute if score ward slot15 matches 3 run execute if score slot9isatk booleans matches 1 run scoreboard players operation shield slot9 -= abilityDmg saves
execute if score ward slot15 matches 3 run execute if score slot9isatk booleans matches 1 if score shield slot9 matches ..0 run scoreboard players operation slot9 hp += shield slot9 
execute if score ward slot15 matches 3 run execute if score slot9isatk booleans matches 1 if score shield slot9 matches ..0 run scoreboard players set shield slot9 0
execute if score ward slot15 matches 3 run execute if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot15 matches 3 run execute if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot10
execute if score ward slot15 matches 3 run execute if score slot10isatk booleans matches 1 run scoreboard players operation shield slot10 -= abilityDmg saves
execute if score ward slot15 matches 3 run execute if score slot10isatk booleans matches 1 if score shield slot10 matches ..0 run scoreboard players operation slot10 hp += shield slot10 
execute if score ward slot15 matches 3 run execute if score slot10isatk booleans matches 1 if score shield slot10 matches ..0 run scoreboard players set shield slot10 0
execute if score ward slot15 matches 3 run execute if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot15 matches 3 run execute if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot11
execute if score ward slot15 matches 3 run execute if score slot11isatk booleans matches 1 run scoreboard players operation shield slot11 -= abilityDmg saves
execute if score ward slot15 matches 3 run execute if score slot11isatk booleans matches 1 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11 
execute if score ward slot15 matches 3 run execute if score slot11isatk booleans matches 1 if score shield slot11 matches ..0 run scoreboard players set shield slot11 0
execute if score ward slot15 matches 3 run execute if score slot12isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot15 matches 3 run execute if score slot12isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot12
execute if score ward slot15 matches 3 run execute if score slot12isatk booleans matches 1 run scoreboard players operation shield slot12 -= abilityDmg saves
execute if score ward slot15 matches 3 run execute if score slot12isatk booleans matches 1 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12 
execute if score ward slot15 matches 3 run execute if score slot12isatk booleans matches 1 if score shield slot12 matches ..0 run scoreboard players set shield slot12 0
execute if score ward slot15 matches 3 run execute if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot15 matches 3 run execute if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot13
execute if score ward slot15 matches 3 run execute if score slot13isatk booleans matches 1 run scoreboard players operation shield slot13 -= abilityDmg saves
execute if score ward slot15 matches 3 run execute if score slot13isatk booleans matches 1 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13 
execute if score ward slot15 matches 3 run execute if score slot13isatk booleans matches 1 if score shield slot13 matches ..0 run scoreboard players set shield slot13 0
execute if score ward slot15 matches 3 run execute if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot15 matches 3 run execute if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot14
execute if score ward slot15 matches 3 run execute if score slot14isatk booleans matches 1 run scoreboard players operation shield slot14 -= abilityDmg saves
execute if score ward slot15 matches 3 run execute if score slot14isatk booleans matches 1 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14 
execute if score ward slot15 matches 3 run execute if score slot14isatk booleans matches 1 if score shield slot14 matches ..0 run scoreboard players set shield slot14 0
execute if score ward slot15 matches 3 run execute if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot15 matches 3 run execute if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot13
execute if score ward slot15 matches 3 run execute if score slot15isatk booleans matches 1 run scoreboard players operation shield slot15 -= abilityDmg saves
execute if score ward slot15 matches 3 run execute if score slot15isatk booleans matches 1 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15 
execute if score ward slot15 matches 3 run execute if score slot15isatk booleans matches 1 if score shield slot15 matches ..0 run scoreboard players set shield slot15 0
execute if score ward slot15 matches 3 run execute if score slot16isatk booleans matches 1 run scoreboard players operation abilityDmg saves = thorn abilityStats
execute if score ward slot15 matches 3 run execute if score slot16isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot16
execute if score ward slot15 matches 3 run execute if score slot16isatk booleans matches 1 run scoreboard players operation shield slot16 -= abilityDmg saves
execute if score ward slot15 matches 3 run execute if score slot16isatk booleans matches 1 if score shield slot16 matches ..0 run scoreboard players operation slot16 hp += shield slot16 
execute if score ward slot15 matches 3 run execute if score slot16isatk booleans matches 1 if score shield slot16 matches ..0 run scoreboard players set shield slot16 0
