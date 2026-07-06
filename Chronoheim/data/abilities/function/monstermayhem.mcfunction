execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = anubisCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = anubisCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = anubisCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisDuration abilityStats > durationSlot1 shield run scoreboard players operation durationSlot1 shield = anubisDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisDuration abilityStats > durationSlot2 shield run scoreboard players operation durationSlot2 shield = anubisDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisDuration abilityStats > durationSlot3 shield run scoreboard players operation durationSlot3 shield = anubisDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisDuration abilityStats > durationSlot4 shield run scoreboard players operation durationSlot4 shield = anubisDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisSelfDuration abilityStats > durationSlot1 shield if score slot1isatk booleans matches 1 run scoreboard players operation durationSlot1 shield = anubisSelfDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisSelfDuration abilityStats > durationSlot2 shield if score slot2isatk booleans matches 1 run scoreboard players operation durationSlot2 shield = anubisSelfDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisSelfDuration abilityStats > durationSlot3 shield if score slot3isatk booleans matches 1 run scoreboard players operation durationSlot3 shield = anubisSelfDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run scoreboard players operation anubisShield saves = anubisShield abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run scoreboard players operation anubisShield saves *= anubisUsedP1 saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score slot1 hp matches 1.. run scoreboard players operation shield slot1 += anubisShield saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score slot2 hp matches 1.. run scoreboard players operation shield slot2 += anubisShield saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score slot3 hp matches 1.. run scoreboard players operation shield slot3 += anubisShield saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score slot4 hp matches 1.. run scoreboard players operation shield slot4 += anubisShield saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. if score anubisDuration abilityStats > durationSlot1 speedDebuffs run scoreboard players operation durationSlot1 speedDebuffs = anubisDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. if score anubisDuration abilityStats > durationSlot2 speedDebuffs run scoreboard players operation durationSlot2 speedDebuffs = anubisDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. if score anubisUsedP1 saves matches 1.. if score anubisDuration abilityStats > durationSlot3 speedDebuffs run scoreboard players operation durationSlot3 speedDebuffs = anubisDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. if score anubisDuration abilityStats > durationSlot4 speedDebuffs run scoreboard players operation durationSlot4 speedDebuffs = anubisDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. if score anubisSelfDuration abilityStats > durationSlot1 speedDebuffs if score slot1isatk booleans matches 1 run scoreboard players operation durationSlot1 speedDebuffs = anubisSelfDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. if score anubisSelfDuration abilityStats > durationSlot2 speedDebuffs if score slot2isatk booleans matches 1 run scoreboard players operation durationSlot2 speedDebuffs = anubisSelfDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. if score anubisSelfDuration abilityStats > durationSlot3 speedDebuffs if score slot3isatk booleans matches 1 run scoreboard players operation durationSlot3 speedDebuffs = anubisSelfDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. run scoreboard players operation speedDebuffSlot1 speedDebuffs += anubisSpDebuff abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. run scoreboard players operation speedDebuffSlot2 speedDebuffs += anubisSpDebuff abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. run scoreboard players operation speedDebuffSlot3 speedDebuffs += anubisSpDebuff abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. run scoreboard players operation speedDebuffSlot4 speedDebuffs += anubisSpDebuff abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. run scoreboard players operation speed slot1 -= anubisSpDebuff abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. run scoreboard players operation speed slot2 -= anubisSpDebuff abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. run scoreboard players operation speed slot3 -= anubisSpDebuff abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP1 saves matches 1.. run scoreboard players operation speed slot4 -= anubisSpDebuff abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute at @n[type=armor_stand,name=slot1] run particle minecraft:block_crumble{block_state:"minecraft:sand"} ~ ~1.5 ~ 0.9 0.9 0.9 0.01 100
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute at @n[type=armor_stand,name=slot2] run particle minecraft:block_crumble{block_state:"minecraft:sand"} ~ ~1.5 ~ 0.9 0.9 0.9 0.01 100
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute at @n[type=armor_stand,name=slot3] run particle minecraft:block_crumble{block_state:"minecraft:sand"} ~ ~1.5 ~ 0.9 0.9 0.9 0.01 100
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute at @n[type=armor_stand,name=slot4] run particle minecraft:block_crumble{block_state:"minecraft:sand"} ~ ~1.5 ~ 0.9 0.9 0.9 0.01 100
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUnusedP1 saves matches 0 run function ch:turnend
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUnusedP1 saves matches 0 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Wrath of the Desert!"]
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUnusedP1 saves matches 0 run effect clear @a[tag=p1] fire_resistance

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = anubisCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = anubisCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = anubisCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = anubisCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = anubisCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = anubisCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisDuration abilityStats > durationSlot5 shield run scoreboard players operation durationSlot5 shield = anubisDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisDuration abilityStats > durationSlot6 shield run scoreboard players operation durationSlot6 shield = anubisDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisDuration abilityStats > durationSlot7 shield run scoreboard players operation durationSlot7 shield = anubisDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisDuration abilityStats > durationSlot8 shield run scoreboard players operation durationSlot8 shield = anubisDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisSelfDuration abilityStats > durationSlot5 shield if score slot5isatk booleans matches 1 run scoreboard players operation durationSlot5 shield = anubisSelfDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisSelfDuration abilityStats > durationSlot6 shield if score slot6isatk booleans matches 1 run scoreboard players operation durationSlot6 shield = anubisSelfDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisSelfDuration abilityStats > durationSlot7 shield if score slot7isatk booleans matches 1 run scoreboard players operation durationSlot7 shield = anubisSelfDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run scoreboard players operation anubisShield saves = anubisShield abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run scoreboard players operation anubisShield saves *= anubisUsedP2 saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score slot5 hp matches 1.. run scoreboard players operation shield slot5 += anubisShield saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score slot6 hp matches 1.. run scoreboard players operation shield slot6 += anubisShield saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score slot7 hp matches 1.. run scoreboard players operation shield slot7 += anubisShield saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score slot8 hp matches 1.. run scoreboard players operation shield slot8 += anubisShield saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. if score anubisDuration abilityStats > durationSlot5 speedDebuffs run scoreboard players operation durationSlot5 speedDebuffs = anubisDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. if score anubisDuration abilityStats > durationSlot6 speedDebuffs run scoreboard players operation durationSlot6 speedDebuffs = anubisDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. if score anubisDuration abilityStats > durationSlot7 speedDebuffs run scoreboard players operation durationSlot7 speedDebuffs = anubisDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. if score anubisDuration abilityStats > durationSlot8 speedDebuffs run scoreboard players operation durationSlot8 speedDebuffs = anubisDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. if score anubisSelfDuration abilityStats > durationSlot5 speedDebuffs if score slot5isatk booleans matches 1 run scoreboard players operation durationSlot5 speedDebuffs = anubisSelfDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. if score anubisSelfDuration abilityStats > durationSlot6 speedDebuffs if score slot6isatk booleans matches 1 run scoreboard players operation durationSlot6 speedDebuffs = anubisSelfDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. if score anubisSelfDuration abilityStats > durationSlot7 speedDebuffs if score slot7isatk booleans matches 1 run scoreboard players operation durationSlot7 speedDebuffs = anubisSelfDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. if score anubisUsedP2 saves matches 1.. run scoreboard players operation speedDebuffSlot5 speedDebuffs += anubisSpDebuff abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. run scoreboard players operation speedDebuffSlot6 speedDebuffs += anubisSpDebuff abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. run scoreboard players operation speedDebuffSlot7 speedDebuffs += anubisSpDebuff abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. run scoreboard players operation speedDebuffSlot8 speedDebuffs += anubisSpDebuff abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. run scoreboard players operation speed slot5 -= anubisSpDebuff abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. run scoreboard players operation speed slot6 -= anubisSpDebuff abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. run scoreboard players operation speed slot7 -= anubisSpDebuff abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUsedP2 saves matches 1.. run scoreboard players operation speed slot8 -= anubisSpDebuff abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute at @n[type=armor_stand,name=slot5] run particle minecraft:block_crumble{block_state:"minecraft:sand"} ~ ~1.5 ~ 0.9 0.9 0.9 0.01 100
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute at @n[type=armor_stand,name=slot6] run particle minecraft:block_crumble{block_state:"minecraft:sand"} ~ ~1.5 ~ 0.9 0.9 0.9 0.01 100
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute at @n[type=armor_stand,name=slot7] run particle minecraft:block_crumble{block_state:"minecraft:sand"} ~ ~1.5 ~ 0.9 0.9 0.9 0.01 100
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} run execute at @n[type=armor_stand,name=slot8] run particle minecraft:block_crumble{block_state:"minecraft:sand"} ~ ~1.5 ~ 0.9 0.9 0.9 0.01 100
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUnusedP2 saves matches 0 run function ch:turnend
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUnusedP2 saves matches 0 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Wrath of the Desert!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUnusedP2 saves matches 0 run effect clear @a[tag=p2] fire_resistance
scoreboard players set burn burn 1
scoreboard players set abilitynumber abilities 42
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUnusedP1 saves matches 1.. run function ch:abilitygivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:42,max:42}}}}} if score anubisUnusedP2 saves matches 1.. run function ch:abilitygivetargetsp2




execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = barleyCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = barleyCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = barleyCD abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = barleyCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = barleyCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = barleyCD abilityStats
scoreboard players set burn burn 1
scoreboard players set abilitynumber abilities 36
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run function ch:abilitygivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run function ch:abilitygivetargetsp1reverse



execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmg saves = blinky abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot5 saves = abilityDmg saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot6 saves = abilityDmg saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot7 saves = abilityDmg saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot8 saves = abilityDmg saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot5 saves += marks slot5
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot6 saves += marks slot6
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot7 saves += marks slot7
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot8 saves += marks slot8
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot5 saves /= atkmultiplier slot5
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot6 saves /= atkmultiplier slot6
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot7 saves /= atkmultiplier slot7
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot8 saves /= atkmultiplier slot8
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= abilityDmgSlot5 saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmgSlot6 saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmgSlot7 saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot8 matches 0 run scoreboard players operation shield slot8 -= abilityDmgSlot8 saves
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot8 matches 0 if score shield slot8 matches ..0 run scoreboard players operation slot8 hp += shield slot8
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation cooldown slot5 += blinkyCDnerf abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation cooldown slot6 += blinkyCDnerf abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation cooldown slot7 += blinkyCDnerf abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot8 matches 0 if score shield slot8 matches ..0 run scoreboard players operation cooldown slot8 += blinkyCDnerf abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot2isatk booleans matches 1 if score ward slot5 matches 0 if score durationSlot5 mark < blinkyLeaderDuration abilityStats run scoreboard players operation durationSlot5 mark = blinkyLeaderDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot2isatk booleans matches 1 if score ward slot6 matches 0 if score durationSlot6 mark < blinkyLeaderDuration abilityStats run scoreboard players operation durationSlot6 mark = blinkyLeaderDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot2isatk booleans matches 1 if score ward slot7 matches 0 if score durationSlot7 mark < blinkyLeaderDuration abilityStats run scoreboard players operation durationSlot7 mark = blinkyLeaderDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot2isatk booleans matches 1 if score ward slot8 matches 0 if score durationSlot8 mark < blinkyLeaderDuration abilityStats run scoreboard players operation durationSlot8 mark = blinkyLeaderDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot2isatk booleans matches 1 if score ward slot5 matches 0 run scoreboard players operation marks slot5 += blinkyLeader abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot2isatk booleans matches 1 if score ward slot6 matches 0 run scoreboard players operation marks slot6 += blinkyLeader abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot2isatk booleans matches 1 if score ward slot7 matches 0 run scoreboard players operation marks slot7 += blinkyLeader abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot2isatk booleans matches 1 if score ward slot8 matches 0 run scoreboard players operation marks slot8 += blinkyLeader abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot8 matches 1.. run function ch:wardslot8
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} at @e[name=slot5] run particle minecraft:nautilus ~ ~1 ~ 0.6 0.6 0.6 0.5 90
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} at @e[name=slot6] run particle minecraft:nautilus ~ ~1 ~ 0.6 0.6 0.6 0.5 90
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} at @e[name=slot7] run particle minecraft:nautilus ~ ~1 ~ 0.6 0.6 0.6 0.5 90
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} at @e[name=slot8] run particle minecraft:nautilus ~ ~1 ~ 0.6 0.6 0.6 0.5 90
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players set burn burn 1
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot1isatk booleans matches 1 run scoreboard players operation cooldown slot1 = blinkyCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot2isatk booleans matches 1 run scoreboard players operation cooldown slot2 = blinkyCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot3isatk booleans matches 1 run scoreboard players operation cooldown slot3 = blinkyCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run function ch:turnend
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Eye Spy!"]
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run clear @p[tag=p1]
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run effect clear @a[tag=p1] fire_resistance

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmg saves = blinky abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot1 saves = abilityDmg saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot2 saves = abilityDmg saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot3 saves = abilityDmg saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot4 saves = abilityDmg saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot1 saves += marks slot1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot2 saves += marks slot2
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot3 saves += marks slot3
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot4 saves += marks slot4
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot1 saves /= atkmultiplier slot1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot2 saves /= atkmultiplier slot2
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot3 saves /= atkmultiplier slot3
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players operation abilityDmgSlot4 saves /= atkmultiplier slot4
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmgSlot1 saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmgSlot2 saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmgSlot3 saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= abilityDmgSlot4 saves
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation cooldown slot1 += blinkyCDnerf abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation cooldown slot2 += blinkyCDnerf abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation cooldown slot3 += blinkyCDnerf abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation cooldown slot4 += blinkyCDnerf abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot6isatk booleans matches 1 if score ward slot1 matches 0 if score durationSlot1 mark < blinkyLeaderDuration abilityStats run scoreboard players operation durationSlot1 mark = blinkyLeaderDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot6isatk booleans matches 1 if score ward slot2 matches 0 if score durationSlot2 mark < blinkyLeaderDuration abilityStats run scoreboard players operation durationSlot2 mark = blinkyLeaderDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot6isatk booleans matches 1 if score ward slot3 matches 0 if score durationSlot3 mark < blinkyLeaderDuration abilityStats run scoreboard players operation durationSlot3 mark = blinkyLeaderDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot6isatk booleans matches 1 if score ward slot4 matches 0 if score durationSlot4 mark < blinkyLeaderDuration abilityStats run scoreboard players operation durationSlot4 mark = blinkyLeaderDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot6isatk booleans matches 1 if score ward slot1 matches 0 run scoreboard players operation marks slot1 += blinkyLeader abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot6isatk booleans matches 1 if score ward slot2 matches 0 run scoreboard players operation marks slot2 += blinkyLeader abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot6isatk booleans matches 1 if score ward slot3 matches 0 run scoreboard players operation marks slot3 += blinkyLeader abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot6isatk booleans matches 1 if score ward slot4 matches 0 run scoreboard players operation marks slot4 += blinkyLeader abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} at @e[name=slot1] run particle minecraft:nautilus ~ ~1 ~ 0.6 0.6 0.6 0.5 90
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} at @e[name=slot2] run particle minecraft:nautilus ~ ~1 ~ 0.6 0.6 0.6 0.5 90
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} at @e[name=slot3] run particle minecraft:nautilus ~ ~1 ~ 0.6 0.6 0.6 0.5 90
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} at @e[name=slot4] run particle minecraft:nautilus ~ ~1 ~ 0.6 0.6 0.6 0.5 90
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players set burn burn 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run scoreboard players set abilityusep2 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot5isatk booleans matches 1 run scoreboard players operation cooldown slot5 = blinkyCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot6isatk booleans matches 1 run scoreboard players operation cooldown slot6 = blinkyCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run execute if score slot7isatk booleans matches 1 run scoreboard players operation cooldown slot7 = blinkyCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run function ch:turnend
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Eye Spy!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run clear @p[tag=p2]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:39,max:39}}}}} run effect clear @a[tag=p2] fire_resistance



execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = boogalooCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = boogalooCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = boogalooCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run execute if score slot1isatk booleans matches 1.. if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += boogaloo abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run execute if score slot2isatk booleans matches 1.. if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += boogaloo abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run execute if score slot3isatk booleans matches 1.. if score slot3bleeding booleaneffects matches 0 run scoreboard players operation slot3 hp += boogaloo abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = boogalooCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = boogalooCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = boogalooCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run execute if score slot5isatk booleans matches 1.. if score slot5bleeding booleaneffects matches 0 run scoreboard players operation slot5 hp += boogaloo abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run execute if score slot6isatk booleans matches 1.. if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += boogaloo abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run execute if score slot7isatk booleans matches 1.. if score slot7bleeding booleaneffects matches 0 run scoreboard players operation slot7 hp += boogaloo abilityStats
scoreboard players set burn burn 1
scoreboard players set abilitynumber abilities 37
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run function ch:abilitygivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:37,max:37}}}}} run function ch:abilitygivetargetsp2



execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = fenrirCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = fenrirCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = fenrirCD abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = fenrirCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = fenrirCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = fenrirCD abilityStats
scoreboard players set burn burn 1
scoreboard players set abilitynumber abilities 41
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score curse slot1 matches 3 run scoreboard players set curse slot1 0
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score curse slot2 matches 3 run scoreboard players set curse slot2 0
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score curse slot3 matches 3 run scoreboard players set curse slot3 0
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score curse slot4 matches 3 run scoreboard players set curse slot4 0
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score curse slot5 matches 3 run scoreboard players set curse slot5 0
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score curse slot6 matches 3 run scoreboard players set curse slot6 0
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score curse slot6 matches 3 run scoreboard players set curse slot7 0
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run execute if score curse slot8 matches 3 run scoreboard players set curse slot8 0
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run function ch:abilitygivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:41,max:41}}}}} run function ch:abilitygivetargetsp2



execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:34,max:34}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:34,max:34}}}}} run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:34,max:34}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = frankCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:34,max:34}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = frankCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:34,max:34}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = frankCD abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:34,max:34}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = frankCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:34,max:34}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = frankCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:34,max:34}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = frankCD abilityStats
scoreboard players set burn burn 1
scoreboard players set abilitynumber abilities 34
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:34,max:34}}}}} run function ch:abilitygivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:34,max:34}}}}} run function ch:abilitygivetargetsp1reverse


execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:43,max:43}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:43,max:43}}}}} run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:43,max:43}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = grendelCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:43,max:43}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = grendelCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:43,max:43}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = grendelCD abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:43,max:43}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = grendelCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:43,max:43}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = grendelCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:43,max:43}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = grendelCD abilityStats
scoreboard players set burn burn 1
scoreboard players set abilitynumber abilities 43
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:43,max:43}}}}} run function ch:abilitygivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:43,max:43}}}}} run function ch:abilitygivetargetsp2



execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:35,max:35}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:35,max:35}}}}} run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:35,max:35}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = steinCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:35,max:35}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = steinCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:35,max:35}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = steinCD abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:35,max:35}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = steinCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:35,max:35}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = steinCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:35,max:35}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = steinCD abilityStats
scoreboard players set burn burn 1
scoreboard players set abilitynumber abilities 35
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:35,max:35}}}}} run function ch:abilitygivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:35,max:35}}}}} run function ch:abilitygivetargetsp2



execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:40,max:40}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:40,max:40}}}}} run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:40,max:40}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = zeeboCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:40,max:40}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = zeeboCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:40,max:40}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = zeeboCD abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:40,max:40}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = zeeboCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:40,max:40}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = zeeboCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:40,max:40}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = zeeboCD abilityStats
scoreboard players set burn burn 1
scoreboard players set abilitynumber abilities 40
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:40,max:40}}}}} run function ch:abilitygivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:40,max:40}}}}} run function ch:abilitygivetargetsp2



tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"},"'s Fenrir attacked Slot 1"]
#slot 5
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves = atk slot5
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves += slot5 atkmodifiers
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves += marks slot1
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot1
execute if score character# slot5 matches 41 run scoreboard players operation shield slot1 -= atk1 saves
#slot 6
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves = atk slot6
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves += slot6 atkmodifiers
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves += marks slot1
execute if score character# slot6 matches 41 if score character# slot6 matches 36 unless score durationSlot5-1 fear matches 1.. unless score durationSlot6-1 fear matches 1.. unless score durationSlot7-1 fear matches 1.. unless score durationSlot8-1 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot1
execute if score character# slot6 matches 41 run scoreboard players operation shield slot1 -= atk1 saves
#slot 7
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves = atk slot7
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves += marks slot1
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves += slot7 atkmodifiers
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot1
execute if score character# slot7 matches 41 run scoreboard players operation shield slot1 -= atk1 saves
#slot 8
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves = atk slot8
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves += marks slot1
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves += slot8 atkmodifiers
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot1
execute if score character# slot8 matches 41 run scoreboard players operation shield slot1 -= atk1 saves

execute if score character# slot1 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot2 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot3 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves


#splash
#slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves = atk slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves += slot5 atkmodifiers
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves /= splash slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves += marks slot2
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot2
execute if score ward slot2 matches 0 run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run function ch:wardslot2
execute if score splash slot5 matches 1.. if score character# slot5 matches 41 at @e[name=slot2,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves = atk slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves += slot6 atkmodifiers
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves /= splash slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves += marks slot2
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot2
execute if score ward slot2 matches 0 run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run function ch:wardslot2
execute if score splash slot6 matches 1.. if score character# slot6 matches 41 at @e[name=slot2,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves = atk slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves += slot7 atkmodifiers
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves /= splash slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves += marks slot2
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot2
execute if score ward slot2 matches 0 run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run function ch:wardslot2
execute if score splash slot7 matches 1.. if score character# slot7 matches 41 at @e[name=slot2,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves = atk slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves += slot8 atkmodifiers
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves /= splash slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves += marks slot2
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot2
execute if score ward slot2 matches 0 run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run function ch:wardslot2
execute if score splash slot8 matches 1.. if score character# slot8 matches 41 at @e[name=slot2,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#damage + shield reset (all)
execute if score shield slot2 matches ..0 if score ward slot2 matches 0 run scoreboard players operation slot2 hp += shield slot2
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0


#lifesteal
#slot 5
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves += marks slot1
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot1
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot5
execute if score ward slot1 matches 0 if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation slot5 hp += lifesteal saves
execute if score ward slot1 matches 0 if score lifesteal slot5 matches 1.. if score character# slot5 matches 41 at @e[name=slot5,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot 6
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves += marks slot1
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot1
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot6
execute if score ward slot1 matches 0 if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation slot6 hp += lifesteal saves
execute if score ward slot1 matches 0 if score lifesteal slot6 matches 1.. if score character# slot6 matches 41 at @e[name=slot6,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves += marks slot1
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot1
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot7
execute if score ward slot1 matches 0 if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation slot7 hp += lifesteal saves
execute if score ward slot1 matches 0 if score lifesteal slot7 matches 1.. if score character# slot7 matches 41 at @e[name=slot7,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves += marks slot1
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot1
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot8
execute if score ward slot1 matches 0 if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation slot8 hp += lifesteal saves
execute if score ward slot1 matches 0 if score lifesteal slot8 matches 1.. if score character# slot8 matches 41 at @e[name=slot8,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#lifesteal + splash
#slot 5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves += marks slot2
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot2
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot5
execute if score slot2 hp matches 1.. run execute if score ward slot2 matches 0 run execute if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation slot5 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves += marks slot2
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot2
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot6
execute if score slot2 hp matches 1.. run execute if score ward slot2 matches 0 run execute if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation slot6 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves += marks slot2
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot2
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot7
execute if score slot2 hp matches 1.. run execute if score ward slot2 matches 0 run execute if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation slot7 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves += marks slot2
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot2
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot8
execute if score slot2 hp matches 1.. run execute if score ward slot2 matches 0 run execute if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation slot8 hp += lifestealsplash saves

#Special Cases
execute if score ward slot1 matches ..0 run execute if score character# slot5 matches 41 if score character# slot5 matches 29 if score slot1 hp <= ripperHpBleed abilityStats run scoreboard players operation slot1bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot1 matches ..0 run execute if score character# slot6 matches 41 if score character# slot6 matches 29 if score slot1 hp <= ripperHpBleed abilityStats run scoreboard players operation slot1bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot1 matches ..0 run execute if score character# slot7 matches 41 if score character# slot7 matches 29 if score slot1 hp <= ripperHpBleed abilityStats run scoreboard players operation slot1bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot1 matches ..0 run execute if score character# slot5 matches 41 if score character# slot5 matches -8 run scoreboard players operation slot1Disease disease += zombieDisease abilityStats
execute if score ward slot1 matches ..0 run execute if score character# slot6 matches 41 if score character# slot6 matches -8 run scoreboard players operation slot1Disease disease += zombieDisease abilityStats
execute if score ward slot1 matches ..0 run execute if score character# slot7 matches 41 if score character# slot7 matches -8 run scoreboard players operation slot1Disease disease += zombieDisease abilityStats
execute if score ward slot1 matches ..0 run execute if score character# slot8 matches 41 if score character# slot8 matches -8 run scoreboard players operation slot1Disease disease += zombieDisease abilityStats


#damage + shield reset (all)
execute if score shield slot1 matches ..0 if score ward slot1 matches 0 run scoreboard players operation slot1 hp += shield slot1
execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute at @e[name=slot1,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100



#basic attack functions
tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"},"'s Fenrir attacked Slot 2"]
#slot 5
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves = atk slot5
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves += slot5 atkmodifiers
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves += marks slot2
execute if score character# slot5 matches 41 if score character# slot5 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot2
execute if score character# slot5 matches 41 run scoreboard players operation shield slot2 -= atk1 saves
#slot 6
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves = atk slot6
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves += slot6 atkmodifiers
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves += marks slot2
execute if score character# slot6 matches 41 if score character# slot6 matches 36 run execute unless score durationSlot5-2 fear matches 1.. unless score durationSlot6-2 fear matches 1.. unless score durationSlot7-2 fear matches 1.. unless score durationSlot8-2 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot6 matches 41 if score character# slot6 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot2
execute if score character# slot6 matches 41 run scoreboard players operation shield slot2 -= atk1 saves
#slot 7
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves = atk slot7
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves += marks slot2
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves += slot7 atkmodifiers
execute if score character# slot7 matches 41 if score character# slot7 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot2
execute if score character# slot7 matches 41 run scoreboard players operation shield slot2 -= atk1 saves
#slot 8
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves = atk slot8
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves += marks slot2
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves += slot8 atkmodifiers
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot2
execute if score character# slot8 matches 41 run scoreboard players operation shield slot2 -= atk1 saves

execute if score character# slot1 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot2 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot3 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves



#splash
#slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage1 saves = atk slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage1 saves += slot5 atkmodifiers
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage1 saves += marks slot1
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot1
execute if score ward slot1 matches 0 run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation shield slot1 -= splashdamage1 saves
execute if score ward slot1 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run function ch:wardslot1
execute if score splash slot5 matches 1.. if score character# slot5 matches 41 at @e[name=slot1,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage1 saves = atk slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage1 saves += slot5 atkmodifiers
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage1 saves += marks slot3
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot3
execute if score ward slot3 matches 0 run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation shield slot3 -= splashdamage1 saves
execute if score ward slot3 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run function ch:wardslot3
execute if score splash slot5 matches 1.. if score character# slot5 matches 41 at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage1 saves = atk slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage1 saves += slot6 atkmodifiers
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage1 saves += marks slot1
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot1
execute if score ward slot1 matches 0 run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation shield slot1 -= splashdamage1 saves
execute if score ward slot1 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run function ch:wardslot1
execute if score splash slot6 matches 1.. if score character# slot6 matches 41 at @e[name=slot1,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage1 saves = atk slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage1 saves += slot6 atkmodifiers
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage1 saves += marks slot3
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot3
execute if score ward slot3 matches 0 run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation shield slot3 -= splashdamage1 saves
execute if score ward slot3 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run function ch:wardslot3
execute if score splash slot6 matches 1.. if score character# slot6 matches 41 at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage1 saves = atk slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage1 saves += slot7 atkmodifiers
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage1 saves += marks slot1
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot1
execute if score ward slot1 matches 0 run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation shield slot1 -= splashdamage1 saves
execute if score ward slot1 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run function ch:wardslot1
execute if score splash slot7 matches 1.. if score character# slot7 matches 41 at @e[name=slot1,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage1 saves = atk slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage1 saves += slot7 atkmodifiers
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage1 saves += marks slot3
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot3
execute if score ward slot3 matches 0 run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation shield slot3 -= splashdamage1 saves
execute if score ward slot3 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run function ch:wardslot3
execute if score splash slot7 matches 1.. if score character# slot7 matches 41 at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage1 saves = atk slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage1 saves += slot8 atkmodifiers
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage1 saves += marks slot1
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot1
execute if score ward slot1 matches 0 run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation shield slot1 -= splashdamage1 saves
execute if score ward slot1 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run function ch:wardslot1
execute if score splash slot8 matches 1.. if score character# slot8 matches 41 at @e[name=slot1,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage1 saves = atk slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage1 saves += slot8 atkmodifiers
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage1 saves += marks slot3
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot3
execute if score ward slot3 matches 0 run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation shield slot3 -= splashdamage1 saves
execute if score ward slot3 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run function ch:wardslot3
execute if score splash slot8 matches 1.. if score character# slot8 matches 41 at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#damage + shield reset (all)
execute if score shield slot1 matches ..0 if score ward slot1 matches 0 run scoreboard players operation slot1 hp += shield slot1
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot3 matches ..0 if score ward slot3 matches 0 run scoreboard players operation slot3 hp += shield slot3
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0

#lifesteal
#slot 5
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal1 saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal1 saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal1 saves += marks slot2
execute if score lifesteal slot5 matches 1.. if score character# slot5 matches 41 if score character# slot5 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal1 saves /= atkmultiplier slot2
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal1 saves /= lifesteal slot5
execute if score ward slot2 matches 0 if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation slot5 hp += lifesteal1 saves
execute if score ward slot2 matches 0 if score lifesteal slot5 matches 1.. if score character# slot5 matches 41 at @e[name=slot5,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal1 saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal1 saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal1 saves += marks slot2
execute if score lifesteal slot6 matches 1.. if score character# slot6 matches 41 if score character# slot6 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal1 saves /= atkmultiplier slot2
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal1 saves /= lifesteal slot6
execute if score ward slot2 matches 0 if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation slot6 hp += lifesteal1 saves
execute if score ward slot2 matches 0 if score lifesteal slot6 matches 1.. if score character# slot6 matches 41 at @e[name=slot6,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal1 saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal1 saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal1 saves += marks slot2
execute if score lifesteal slot7 matches 1.. if score character# slot7 matches 41 if score character# slot7 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal1 saves /= atkmultiplier slot2
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal1 saves /= lifesteal slot7
execute if score ward slot2 matches 0 if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation slot7 hp += lifesteal1 saves
execute if score ward slot2 matches 0 if score lifesteal slot7 matches 1.. if score character# slot7 matches 41 at @e[name=slot7,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal1 saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal1 saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal1 saves += marks slot2
execute if score lifesteal slot5 matches 1.. if score character# slot5 matches 41 if score character# slot5 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal1 saves /= atkmultiplier slot2
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal1 saves /= lifesteal slot8
execute if score ward slot2 matches 0 if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation slot8 hp += lifesteal1 saves
execute if score ward slot2 matches 0 if score lifesteal slot8 matches 1.. if score character# slot8 matches 41 at @e[name=slot8,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#lifesteal + splash
#slot 5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash1 saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot1
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot1
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot5
execute if score slot1 hp matches 1.. run execute if score ward slot1 matches 0 run execute if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation slot5 hp += lifestealsplash1 saves
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash1 saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot3
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot3
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot5
execute if score slot3 hp matches 1.. run execute if score ward slot3 matches 0 run execute if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation slot5 hp += lifestealsplash1 saves
#slot 6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash1 saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot1
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot1
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot6
execute if score slot1 hp matches 1.. run execute if score ward slot1 matches 0 run execute if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation slot6 hp += lifestealsplash1 saves
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash1 saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot3
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot3
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot6
execute if score slot3 hp matches 1.. run execute if score ward slot3 matches 0 run execute if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation slot6 hp += lifestealsplash1 saves
#slot 7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash1 saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot1
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot1
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot7
execute if score slot1 hp matches 1.. run execute if score ward slot1 matches 0 run execute if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation slot7 hp += lifestealsplash1 saves
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash1 saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot3
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot3
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot7
execute if score slot3 hp matches 1.. run execute if score ward slot3 matches 0 run execute if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation slot7 hp += lifestealsplash1 saves
#slot 8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash1 saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot1
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot1
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot8
execute if score slot1 hp matches 1.. run execute if score ward slot1 matches 0 run execute if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation slot8 hp += lifestealsplash1 saves
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash1 saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot3
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot3
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot8
execute if score slot3 hp matches 1.. run execute if score ward slot3 matches 0 run execute if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation slot8 hp += lifestealsplash1 saves

#Special Cases
execute if score ward slot2 matches ..0 run execute if score character# slot5 matches 41 if score character# slot5 matches 29 if score slot2 hp <= ripperHpBleed abilityStats run scoreboard players operation slot2bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot2 matches ..0 run execute if score character# slot6 matches 41 if score character# slot6 matches 29 if score slot2 hp <= ripperHpBleed abilityStats run scoreboard players operation slot2bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot2 matches ..0 run execute if score character# slot7 matches 41 if score character# slot7 matches 29 if score slot2 hp <= ripperHpBleed abilityStats run scoreboard players operation slot2bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot2 matches ..0 run execute if score character# slot5 matches 41 if score character# slot5 matches -8 run scoreboard players operation slot2Disease disease += zombieDisease abilityStats
execute if score ward slot2 matches ..0 run execute if score character# slot6 matches 41 if score character# slot6 matches -8 run scoreboard players operation slot2Disease disease += zombieDisease abilityStats
execute if score ward slot2 matches ..0 run execute if score character# slot7 matches 41 if score character# slot7 matches -8 run scoreboard players operation slot2Disease disease += zombieDisease abilityStats
execute if score ward slot2 matches ..0 run execute if score character# slot8 matches 41 if score character# slot8 matches -8 run scoreboard players operation slot2Disease disease += zombieDisease abilityStats

#damage + shield reset (all)
execute if score shield slot2 matches ..0 if score ward slot2 matches 0 run scoreboard players operation slot2 hp += shield slot2
execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute at @e[name=slot2,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100




#basic attack functions
tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"},"'s Fenrir attacked Slot 3"]
#slot 5
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves = atk slot5
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves += slot5 atkmodifiers
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves += marks slot3
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot3
execute if score character# slot5 matches 41 run scoreboard players operation shield slot3 -= atk1 saves
#slot 6
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves = atk slot6
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves += slot6 atkmodifiers
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves += marks slot3
execute if score character# slot6 matches 41 if score character# slot6 matches 36 run execute unless score durationSlot5-3 fear matches 1.. unless score durationSlot6-3 fear matches 1.. unless score durationSlot7-3 fear matches 1.. unless score durationSlot8-3 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot3
execute if score character# slot6 matches 41 run scoreboard players operation shield slot3 -= atk1 saves
#slot 7
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves = atk slot7
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves += marks slot3
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves += slot7 atkmodifiers
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot3
execute if score character# slot7 matches 41 run scoreboard players operation shield slot3 -= atk1 saves
#slot 8
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves = atk slot8
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves += marks slot3
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves += slot8 atkmodifiers
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot3
execute if score character# slot8 matches 41 run scoreboard players operation shield slot3 -= atk1 saves

execute if score character# slot1 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot2 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot3 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves


#splash
#slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves = atk slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves += slot5 atkmodifiers
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves /= splash slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves += marks slot2
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot2
execute if score ward slot2 matches 0 run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run function ch:wardslot2
execute if score splash slot5 matches 1.. if score character# slot5 matches 41 at @e[name=slot2,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves = atk slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves += slot5 atkmodifiers
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves /= splash slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves += marks slot4
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot4
execute if score ward slot4 matches 0 run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation shield slot4 -= splashdamage saves
execute if score ward slot4 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run function ch:wardslot4
execute if score splash slot5 matches 1.. if score character# slot5 matches 41 at @e[name=slot4,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves = atk slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves += slot6 atkmodifiers
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves /= splash slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves += marks slot2
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot2
execute if score ward slot2 matches 0 run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run function ch:wardslot2
execute if score splash slot6 matches 1.. if score character# slot6 matches 41 at @e[name=slot2,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves = atk slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves += slot6 atkmodifiers
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves /= splash slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves += marks slot4
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot4
execute if score ward slot4 matches 0 run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation shield slot4 -= splashdamage saves
execute if score ward slot4 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run function ch:wardslot4
execute if score splash slot6 matches 1.. if score character# slot6 matches 41 at @e[name=slot4,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves = atk slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves += slot7 atkmodifiers
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves /= splash slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves += marks slot2
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot2
execute if score ward slot2 matches 0 run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run function ch:wardslot2
execute if score splash slot7 matches 1.. if score character# slot7 matches 41 at @e[name=slot2,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves = atk slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves += slot7 atkmodifiers
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves /= splash slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves += marks slot4
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot4
execute if score ward slot4 matches 0 run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation shield slot4 -= splashdamage saves
execute if score ward slot4 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run function ch:wardslot4
execute if score splash slot7 matches 1.. if score character# slot7 matches 41 at @e[name=slot4,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves = atk slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves += slot8 atkmodifiers
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves /= splash slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves += marks slot2
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot2
execute if score ward slot2 matches 0 run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation shield slot2 -= splashdamage saves
execute if score ward slot2 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run function ch:wardslot2
execute if score splash slot8 matches 1.. if score character# slot8 matches 41 at @e[name=slot2,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves = atk slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves += slot8 atkmodifiers
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves /= splash slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves += marks slot4
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot4
execute if score ward slot4 matches 0 run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation shield slot4 -= splashdamage saves
execute if score ward slot4 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run function ch:wardslot4
execute if score splash slot8 matches 1.. if score character# slot8 matches 41 at @e[name=slot4,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#damage + shield reset (all)
execute if score shield slot2 matches ..0 if score ward slot2 matches 0 run scoreboard players operation slot2 hp += shield slot2
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot4 matches ..0 if score ward slot4 matches 0 run scoreboard players operation slot4 hp += shield slot4
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0


#lifesteal
#slot 5
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves += marks slot3
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot3
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot5
execute if score ward slot3 matches 0 if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation slot5 hp += lifesteal saves
execute if score ward slot3 matches 0 if score lifesteal slot5 matches 1.. if score character# slot5 matches 41 at @e[name=slot5,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves += marks slot3
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot3
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot6
execute if score ward slot3 matches 0 if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation slot6 hp += lifesteal saves
execute if score ward slot3 matches 0 if score lifesteal slot6 matches 1.. if score character# slot6 matches 41 at @e[name=slot6,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves += marks slot3
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot3
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot7
execute if score ward slot3 matches 0 if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation slot7 hp += lifesteal saves
execute if score ward slot3 matches 0 if score lifesteal slot7 matches 1.. if score character# slot7 matches 41 at @e[name=slot7,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot 8
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves += marks slot3
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot3
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot8
execute if score ward slot3 matches 0 if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation slot8 hp += lifesteal saves
execute if score ward slot3 matches 0 if score lifesteal slot8 matches 1.. if score character# slot8 matches 41 at @e[name=slot8,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal + splash
#slot 5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves += marks slot2
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot2
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot5
execute if score slot2 hp matches 1.. run execute if score ward slot2 matches 0 run execute if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation slot5 hp += lifestealsplash saves
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves += marks slot4
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot4
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot5
execute if score slot4 hp matches 1.. run execute if score ward slot4 matches 0 run execute if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation slot5 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves += marks slot2
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot2
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot6
execute if score slot2 hp matches 1.. run execute if score ward slot2 matches 0 run execute if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation slot6 hp += lifestealsplash saves
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves += marks slot4
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot4
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot6
execute if score slot4 hp matches 1.. run execute if score ward slot4 matches 0 run execute if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation slot6 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves += marks slot2
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot2
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot7
execute if score slot2 hp matches 1.. run execute if score ward slot2 matches 0 run execute if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation slot7 hp += lifestealsplash saves
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves += marks slot4
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot4
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot7
execute if score slot4 hp matches 1.. run execute if score ward slot4 matches 0 run execute if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation slot7 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves += marks slot2
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot2
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot8
execute if score slot2 hp matches 1.. run execute if score ward slot2 matches 0 run execute if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation slot8 hp += lifestealsplash saves
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves += marks slot4
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot4
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot8
execute if score slot4 hp matches 1.. run execute if score ward slot4 matches 0 run execute if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation slot8 hp += lifestealsplash saves

#Special Cases
execute if score ward slot3 matches ..0 run execute if score character# slot5 matches 41 if score character# slot5 matches 29 if score slot3 hp <= ripperHpBleed abilityStats run scoreboard players operation slot3bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot3 matches ..0 run execute if score character# slot6 matches 41 if score character# slot6 matches 29 if score slot3 hp <= ripperHpBleed abilityStats run scoreboard players operation slot3bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot3 matches ..0 run execute if score character# slot7 matches 41 if score character# slot7 matches 29 if score slot3 hp <= ripperHpBleed abilityStats run scoreboard players operation slot3bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot3 matches ..0 run execute if score character# slot5 matches 41 if score character# slot5 matches -8 run scoreboard players operation slot3Disease disease += zombieDisease abilityStats
execute if score ward slot3 matches ..0 run execute if score character# slot6 matches 41 if score character# slot6 matches -8 run scoreboard players operation slot3Disease disease += zombieDisease abilityStats
execute if score ward slot3 matches ..0 run execute if score character# slot7 matches 41 if score character# slot7 matches -8 run scoreboard players operation slot3Disease disease += zombieDisease abilityStats
execute if score ward slot3 matches ..0 run execute if score character# slot8 matches 41 if score character# slot8 matches -8 run scoreboard players operation slot3Disease disease += zombieDisease abilityStats


#damage + shield reset (all)
execute if score shield slot3 matches ..0 if score ward slot3 matches 0 run scoreboard players operation slot3 hp += shield slot3
execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100



#basic attack functions
tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"},"'s Fenrir attacked Slot 4"]
#slot 5
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves = atk slot5
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves += slot5 atkmodifiers
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves += marks slot4
execute if score character# slot5 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot4
execute if score character# slot5 matches 41 run scoreboard players operation shield slot4 -= atk1 saves
#slot 6
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves = atk slot6
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves += slot6 atkmodifiers
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves += marks slot4
execute if score character# slot6 matches 41 if score character# slot6 matches 36 run execute unless score durationSlot5-4 fear matches 1.. unless score durationSlot6-4 fear matches 1.. unless score durationSlot7-4 fear matches 1.. unless score durationSlot8-4 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot6 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot4
execute if score character# slot6 matches 41 run scoreboard players operation shield slot4 -= atk1 saves
#slot 7
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves = atk slot7
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves += marks slot4
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves += slot7 atkmodifiers
execute if score character# slot7 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot4
execute if score character# slot7 matches 41 run scoreboard players operation shield slot4 -= atk1 saves
#slot 8
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves = atk slot8
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves += marks slot4
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves += slot8 atkmodifiers
execute if score character# slot8 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot4
execute if score character# slot8 matches 41 run scoreboard players operation shield slot4 -= atk1 saves

execute if score character# slot1 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot2 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot3 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves



#splash
#slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves = atk slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves += slot5 atkmodifiers
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves /= splash slot5
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves += marks slot3
execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot3
execute if score ward slot3 matches 0 run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation shield slot3 -= splashdamage saves
execute if score ward slot3 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run function ch:wardslot3
execute if score splash slot5 matches 1.. if score character# slot5 matches 41 at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves = atk slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves += slot6 atkmodifiers
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves /= splash slot6
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves += marks slot3
execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot3
execute if score ward slot3 matches 0 run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation shield slot3 -= splashdamage saves
execute if score ward slot3 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run function ch:wardslot3
execute if score splash slot6 matches 1.. if score character# slot6 matches 41 at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves = atk slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves += slot7 atkmodifiers
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves /= splash slot7
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves += marks slot3
execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot3
execute if score ward slot3 matches 0 run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation shield slot3 -= splashdamage saves
execute if score ward slot3 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run function ch:wardslot3
execute if score splash slot7 matches 1.. if score character# slot7 matches 41 at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves = atk slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves += slot8 atkmodifiers
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves /= splash slot8
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves += marks slot3
execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot3
execute if score ward slot3 matches 0 run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation shield slot3 -= splashdamage saves
execute if score ward slot3 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run function ch:wardslot3
execute if score splash slot8 matches 1.. if score character# slot8 matches 41 at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#damage + shield reset (all)
execute if score shield slot3 matches ..0 if score ward slot3 matches 0 run scoreboard players operation slot3 hp += shield slot3
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0


#lifesteal
#slot 5
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves += marks slot4
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot4
execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot5
execute if score ward slot4 matches 0 if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation slot5 hp += lifesteal saves
execute if score ward slot4 matches 0 if score lifesteal slot5 matches 1.. if score character# slot5 matches 41 at @e[name=slot5,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves += marks slot4
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot4
execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot6
execute if score ward slot4 matches 0 if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation slot6 hp += lifesteal saves
execute if score ward slot4 matches 0 if score lifesteal slot6 matches 1.. if score character# slot6 matches 41 at @e[name=slot6,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves += marks slot4
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot4
execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot7
execute if score ward slot4 matches 0 if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation slot7 hp += lifesteal saves
execute if score ward slot4 matches 0 if score lifesteal slot7 matches 1.. if score character# slot7 matches 41 at @e[name=slot7,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves += marks slot4
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot4
execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot8
execute if score ward slot4 matches 0 if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation slot8 hp += lifesteal saves
execute if score ward slot4 matches 0 if score lifesteal slot8 matches 1.. if score character# slot8 matches 41 at @e[name=slot8,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#Special Cases
execute if score ward slot4 matches ..0 run execute if score character# slot5 matches 41 if score character# slot5 matches 29 if score slot4 hp <= ripperHpBleed abilityStats run scoreboard players operation slot4bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot4 matches ..0 run execute if score character# slot6 matches 41 if score character# slot6 matches 29 if score slot4 hp <= ripperHpBleed abilityStats run scoreboard players operation slot4bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot4 matches ..0 run execute if score character# slot7 matches 41 if score character# slot7 matches 29 if score slot4 hp <= ripperHpBleed abilityStats run scoreboard players operation slot4bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot4 matches ..0 run execute if score character# slot5 matches 41 if score character# slot5 matches -8 run scoreboard players operation slot4Disease disease += zombieDisease abilityStats
execute if score ward slot4 matches ..0 run execute if score character# slot6 matches 41 if score character# slot6 matches -8 run scoreboard players operation slot4Disease disease += zombieDisease abilityStats
execute if score ward slot4 matches ..0 run execute if score character# slot7 matches 41 if score character# slot7 matches -8 run scoreboard players operation slot4Disease disease += zombieDisease abilityStats
execute if score ward slot4 matches ..0 run execute if score character# slot8 matches 41 if score character# slot8 matches -8 run scoreboard players operation slot4Disease disease += zombieDisease abilityStats


#damage + shield reset (all)
execute if score shield slot4 matches ..0 if score ward slot4 matches 0 run scoreboard players operation slot4 hp += shield slot4
execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0
execute at @e[name=slot4,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

#lifesteal + splash
#slot 5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves += marks slot3
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot3
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot5
execute if score slot3 hp matches 1.. run execute if score ward slot3 matches 0 run execute if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation slot5 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves += marks slot3
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot3
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot6
execute if score slot3 hp matches 1.. run execute if score ward slot3 matches 0 run execute if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation slot6 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves += marks slot3
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot3
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot7
execute if score slot3 hp matches 1.. run execute if score ward slot3 matches 0 run execute if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation slot7 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves += marks slot3
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot3
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot8
execute if score slot3 hp matches 1.. run execute if score ward slot3 matches 0 run execute if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score character# slot8 matches 41 run scoreboard players operation slot8 hp += lifestealsplash saves




#basic attack functions
tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"},"'s Fenrir attacked Slot 5"]
#slot 5
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves = atk slot1
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves += slot1 atkmodifiers
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves += marks slot5
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot5
execute if score character# slot1 matches 41 run scoreboard players operation shield slot5 -= atk1 saves
#slot 6
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves = atk slot2
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves += slot2 atkmodifiers
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves += marks slot5
execute if score character# slot2 matches 41 if score character# slot2 matches 36 run execute unless score durationSlot1-5 fear matches 1.. unless score durationSlot2-5 fear matches 1.. unless score durationSlot3-5 fear matches 1.. unless score durationSlot4-5 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot2 matches 41 run scoreboard players operation shield slot5 -= atk1 saves
#slot 7
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves = atk slot3
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves += marks slot5
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves += slot3 atkmodifiers
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot5
execute if score character# slot3 matches 41 run scoreboard players operation shield slot5 -= atk1 saves
#slot 8
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves = atk slot4
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves += marks slot5
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves += slot4 atkmodifiers
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot5
execute if score character# slot4 matches 41 run scoreboard players operation shield slot5 -= atk1 saves

execute if score character# slot5 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves
execute if score character# slot6 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves
execute if score character# slot7 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves

#splash
#slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves = atk slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves += slot1 atkmodifiers
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves /= splash slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves += marks slot6
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot6
execute if score ward slot6 matches 0 run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation shield slot6 -= splashdamage saves
execute if score ward slot6 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run function ch:wardslot6
execute if score splash slot1 matches 1.. if score character# slot1 matches 41 at @e[name=slot6,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves = atk slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves += slot2 atkmodifiers
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves /= splash slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves += marks slot6
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot6
execute if score ward slot6 matches 0 run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation shield slot6 -= splashdamage saves
execute if score ward slot6 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run function ch:wardslot6
execute if score splash slot2 matches 1.. if score character# slot2 matches 41 at @e[name=slot6,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves = atk slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves += slot3 atkmodifiers
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves /= splash slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves += marks slot6
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot6
execute if score ward slot6 matches 0 run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation shield slot6 -= splashdamage saves
execute if score ward slot6 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run function ch:wardslot6
execute if score splash slot3 matches 1.. if score character# slot3 matches 41 at @e[name=slot6,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves = atk slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves += slot4 atkmodifiers
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves /= splash slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves += marks slot6
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot6
execute if score ward slot6 matches 0 run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation shield slot6 -= splashdamage saves
execute if score ward slot6 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run function ch:wardslot6
execute if score splash slot4 matches 1.. if score character# slot4 matches 41 at @e[name=slot6,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#damage + shield reset (all)
execute if score shield slot6 matches ..0 if score ward slot6 matches 0 run scoreboard players operation slot6 hp += shield slot6
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0




#lifesteal
#slot 5
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves += marks slot5
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot5
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot1
execute if score ward slot5 matches 0 if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation slot1 hp += lifesteal saves
execute if score ward slot5 matches 0 if score lifesteal slot1 matches 1.. if score character# slot1 matches 41 at @e[name=slot1,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves += marks slot5
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot5
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot2
execute if score ward slot5 matches 0 if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation slot2 hp += lifesteal saves
execute if score ward slot5 matches 0 if score lifesteal slot2 matches 1.. if score character# slot2 matches 41 at @e[name=slot2,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves += marks slot5
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot5
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot3
execute if score ward slot5 matches 0 if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation slot3 hp += lifesteal saves
execute if score ward slot5 matches 0 if score lifesteal slot3 matches 1.. if score character# slot3 matches 41 at @e[name=slot3,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves += marks slot5
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot5
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot4
execute if score ward slot5 matches 0 if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation slot4 hp += lifesteal saves
execute if score ward slot5 matches 0 if score lifesteal slot4 matches 1.. if score character# slot4 matches 41 at @e[name=slot4,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal + splash
#slot 5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves += marks slot6
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot6
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot1
execute if score slot6 hp matches 1.. run execute if score ward slot6 matches 0 run execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation slot1 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves += marks slot6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot2
execute if score slot6 hp matches 1.. run execute if score ward slot6 matches 0 run execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation slot2 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves += marks slot6
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot6
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot3
execute if score slot6 hp matches 1.. run execute if score ward slot6 matches 0 run execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation slot3 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves += marks slot6
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot6
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot4
execute if score slot6 hp matches 1.. run execute if score ward slot6 matches 0 run execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation slot4 hp += lifestealsplash saves

#Special Cases
execute if score ward slot5 matches ..0 run execute if score character# slot1 matches 41 if score character# slot1 matches 29 if score slot5 hp <= ripperHpBleed abilityStats run scoreboard players operation slot5bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot5 matches ..0 run execute if score character# slot2 matches 41 if score character# slot2 matches 29 if score slot5 hp <= ripperHpBleed abilityStats run scoreboard players operation slot5bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot5 matches ..0 run execute if score character# slot3 matches 41 if score character# slot3 matches 29 if score slot5 hp <= ripperHpBleed abilityStats run scoreboard players operation slot5bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot5 matches ..0 run execute if score character# slot1 matches 41 if score character# slot1 matches -8 run scoreboard players operation slot5Disease disease += zombieDisease abilityStats
execute if score ward slot5 matches ..0 run execute if score character# slot2 matches 41 if score character# slot2 matches -8 run scoreboard players operation slot5Disease disease += zombieDisease abilityStats
execute if score ward slot5 matches ..0 run execute if score character# slot3 matches 41 if score character# slot3 matches -8 run scoreboard players operation slot5Disease disease += zombieDisease abilityStats
execute if score ward slot5 matches ..0 run execute if score character# slot4 matches 41 if score character# slot4 matches -8 run scoreboard players operation slot5Disease disease += zombieDisease abilityStats

#damage + shield reset (all)
execute if score shield slot5 matches ..0 if score ward slot5 matches 0 run scoreboard players operation slot5 hp += shield slot5
execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute at @e[name=slot5,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100




#basic attack functions
tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"},"'s Fenrir attacked Slot 6"]
#slot 1
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves = atk slot1
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves += slot1 atkmodifiers
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves += marks slot6
execute if score character# slot1 matches 41 if score character# slot1 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot6
execute if score character# slot1 matches 41 run scoreboard players operation shield slot6 -= atk1 saves
#slot 2
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves = atk slot2
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves += slot2 atkmodifiers
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves += marks slot6
execute if score character# slot2 matches 41 if score character# slot2 matches 36 run execute unless score durationSlot1-6 fear matches 1.. unless score durationSlot2-6 fear matches 1.. unless score durationSlot3-6 fear matches 1.. unless score durationSlot4-6 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot2 matches 41 if score character# slot2 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot6
execute if score character# slot2 matches 41 run scoreboard players operation shield slot6 -= atk1 saves
#slot 3
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves = atk slot3
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves += marks slot6
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves += slot3 atkmodifiers
execute if score character# slot3 matches 41 if score character# slot3 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot6
execute if score character# slot3 matches 41 run scoreboard players operation shield slot6 -= atk1 saves
#slot 4
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves = atk slot4
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves += marks slot6
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves += slot4 atkmodifiers
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot6
execute if score character# slot4 matches 41 run scoreboard players operation shield slot6 -= atk1 saves

execute if score character# slot5 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves
execute if score character# slot6 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves
execute if score character# slot7 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves


#splash
#slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves = atk slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves += slot1 atkmodifiers
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves /= splash slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves += marks slot5
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot5
execute if score ward slot5 matches 0 run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation shield slot5 -= splashdamage saves
execute if score ward slot5 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run function ch:wardslot5
execute if score splash slot1 matches 1.. if score character# slot1 matches 41 at @e[name=slot5,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves = atk slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves += slot1 atkmodifiers
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves /= splash slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves += marks slot7
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score ward slot7 matches 0 run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run function ch:wardslot7
execute if score splash slot1 matches 1.. if score character# slot1 matches 41 at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves = atk slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves += slot2 atkmodifiers
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves /= splash slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves += marks slot5
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot5
execute if score ward slot5 matches 0 run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation shield slot5 -= splashdamage saves
execute if score ward slot5 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run function ch:wardslot5
execute if score splash slot2 matches 1.. if score character# slot2 matches 41 at @e[name=slot5,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves = atk slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves += slot2 atkmodifiers
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves /= splash slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves += marks slot7
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score ward slot7 matches 0 run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run function ch:wardslot7
execute if score splash slot2 matches 1.. if score character# slot2 matches 41 at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves = atk slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves += slot3 atkmodifiers
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves /= splash slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves += marks slot5
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot5
execute if score ward slot5 matches 0 run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation shield slot5 -= splashdamage saves
execute if score ward slot5 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run function ch:wardslot5
execute if score splash slot3 matches 1.. if score character# slot3 matches 41 at @e[name=slot5,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves = atk slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves += slot3 atkmodifiers
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves /= splash slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves += marks slot7
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score ward slot7 matches 0 run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run function ch:wardslot7
execute if score splash slot3 matches 1.. if score character# slot3 matches 41 at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves = atk slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves += slot4 atkmodifiers
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves /= splash slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves += marks slot5
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot5
execute if score ward slot5 matches 0 run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation shield slot5 -= splashdamage saves
execute if score ward slot5 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run function ch:wardslot5
execute if score splash slot4 matches 1.. if score character# slot4 matches 41 at @e[name=slot5,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves = atk slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves += slot4 atkmodifiers
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves /= splash slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves += marks slot7
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score ward slot7 matches 0 run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run function ch:wardslot7
execute if score splash slot4 matches 1.. if score character# slot4 matches 41 at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#damage + shield reset (all)
execute if score shield slot5 matches ..0 if score ward slot5 matches 0 run scoreboard players operation slot5 hp += shield slot5
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score shield slot7 matches ..0 if score ward slot7 matches 0 run scoreboard players operation slot7 hp += shield slot7
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0


#lifesteal
#slot 1
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves += marks slot6
execute if score lifesteal slot1 matches 1.. if score character# slot1 matches 41 if score character# slot1 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot6
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot1
execute if score ward slot6 matches 0 if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation slot1 hp += lifesteal saves
execute if score ward slot6 matches 0 if score lifesteal slot1 matches 1.. if score character# slot1 matches 41 at @e[name=slot1,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 2
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves += marks slot6
execute if score lifesteal slot2 matches 1.. if score character# slot2 matches 41 if score character# slot2 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot6
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot2
execute if score ward slot6 matches 0 if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation slot2 hp += lifesteal saves
execute if score ward slot6 matches 0 if score lifesteal slot2 matches 1.. if score character# slot2 matches 41 at @e[name=slot2,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 3
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves += marks slot6
execute if score lifesteal slot3 matches 1.. if score character# slot3 matches 41 if score character# slot3 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot6
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot3
execute if score ward slot6 matches 0 if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation slot3 hp += lifesteal saves
execute if score ward slot6 matches 0 if score lifesteal slot3 matches 1.. if score character# slot3 matches 41 at @e[name=slot3,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 4
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves += marks slot6
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot6
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot4
execute if score ward slot6 matches 0 if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation slot4 hp += lifesteal saves
execute if score ward slot6 matches 0 if score lifesteal slot4 matches 1.. if score character# slot4 matches 41 at @e[name=slot4,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal + splash
#slot 5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves += marks slot5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot1
execute if score slot5 hp matches 1.. run execute if score ward slot5 matches 0 run execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation slot1 hp += lifestealsplash saves
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot1
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation slot1 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves += marks slot5
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot5
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot2
execute if score slot5 hp matches 1.. run execute if score ward slot5 matches 0 run execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation slot2 hp += lifestealsplash saves
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot2
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation slot2 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves += marks slot5
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot5
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot3
execute if score slot5 hp matches 1.. run execute if score ward slot5 matches 0 run execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation slot3 hp += lifestealsplash saves
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot3
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation slot3 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves += marks slot5
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot5
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot4
execute if score slot5 hp matches 1.. run execute if score ward slot5 matches 0 run execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation slot4 hp += lifestealsplash saves
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot4
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation slot4 hp += lifestealsplash saves

#Special Cases
execute if score ward slot6 matches ..0 run execute if score character# slot1 matches 41 if score character# slot1 matches 29 if score slot6 hp <= ripperHpBleed abilityStats run scoreboard players operation slot6bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot6 matches ..0 run execute if score character# slot2 matches 41 if score character# slot2 matches 29 if score slot6 hp <= ripperHpBleed abilityStats run scoreboard players operation slot6bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot6 matches ..0 run execute if score character# slot3 matches 41 if score character# slot3 matches 29 if score slot6 hp <= ripperHpBleed abilityStats run scoreboard players operation slot6bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot6 matches ..0 run execute if score character# slot1 matches 41 if score character# slot1 matches -8 run scoreboard players operation slot6Disease disease += zombieDisease abilityStats
execute if score ward slot6 matches ..0 run execute if score character# slot2 matches 41 if score character# slot2 matches -8 run scoreboard players operation slot6Disease disease += zombieDisease abilityStats
execute if score ward slot6 matches ..0 run execute if score character# slot3 matches 41 if score character# slot3 matches -8 run scoreboard players operation slot6Disease disease += zombieDisease abilityStats
execute if score ward slot6 matches ..0 run execute if score character# slot4 matches 41 if score character# slot4 matches -8 run scoreboard players operation slot6Disease disease += zombieDisease abilityStats

#damage + shield reset (all)
execute if score shield slot6 matches ..0 if score ward slot6 matches 0 run scoreboard players operation slot6 hp += shield slot6
execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute at @e[name=slot6,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100




#basic attack functions
tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"},"'s Fenrir attacked Slot 7"]
#slot 5
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves = atk slot1
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves += slot1 atkmodifiers
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves += marks slot7
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot7
execute if score character# slot1 matches 41 run scoreboard players operation shield slot7 -= atk1 saves
#slot 6
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves = atk slot2
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves += slot2 atkmodifiers
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves += marks slot7
execute if score character# slot2 matches 41 if score character# slot2 matches 36 run execute unless score durationSlot1-7 fear matches 1.. unless score durationSlot2-7 fear matches 1.. unless score durationSlot3-7 fear matches 1.. unless score durationSlot4-7 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot7
execute if score character# slot2 matches 41 run scoreboard players operation shield slot7 -= atk1 saves
#slot 7
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves = atk slot3
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves += marks slot7
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves += slot3 atkmodifiers
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot7
execute if score character# slot3 matches 41 run scoreboard players operation shield slot7 -= atk1 saves
#slot 8
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves = atk slot4
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves += marks slot7
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves += slot4 atkmodifiers
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot7
execute if score character# slot4 matches 41 run scoreboard players operation shield slot7 -= atk1 saves

execute if score character# slot5 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves
execute if score character# slot6 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves
execute if score character# slot7 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves

#splash
#slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves = atk slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves += slot1 atkmodifiers
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves /= splash slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves += marks slot6
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot6
execute if score ward slot6 matches 0 run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation shield slot6 -= splashdamage saves
execute if score ward slot6 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run function ch:wardslot6
execute if score splash slot1 matches 1.. if score character# slot1 matches 41 at @e[name=slot6,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves = atk slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves += slot1 atkmodifiers
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves /= splash slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves += marks slot8
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot8
execute if score ward slot8 matches 0 run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation shield slot8 -= splashdamage saves
execute if score ward slot8 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run function ch:wardslot8
execute if score splash slot1 matches 1.. if score character# slot1 matches 41 at @e[name=slot8,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves = atk slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves += slot2 atkmodifiers
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves /= splash slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves += marks slot6
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot6
execute if score ward slot6 matches 0 run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation shield slot6 -= splashdamage saves
execute if score ward slot6 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run function ch:wardslot6
execute if score splash slot2 matches 1.. if score character# slot2 matches 41 at @e[name=slot6,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves = atk slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves += slot2 atkmodifiers
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves /= splash slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves += marks slot8
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot8
execute if score ward slot8 matches 0 run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation shield slot8 -= splashdamage saves
execute if score ward slot8 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run function ch:wardslot8
execute if score splash slot2 matches 1.. if score character# slot2 matches 41 at @e[name=slot8,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves = atk slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves += slot3 atkmodifiers
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves /= splash slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves += marks slot6
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot6
execute if score ward slot6 matches 0 run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation shield slot6 -= splashdamage saves
execute if score ward slot6 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run function ch:wardslot6
execute if score splash slot3 matches 1.. if score character# slot3 matches 41 at @e[name=slot6,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves = atk slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves += slot3 atkmodifiers
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves /= splash slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves += marks slot8
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot8
execute if score ward slot8 matches 0 run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation shield slot8 -= splashdamage saves
execute if score ward slot8 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run function ch:wardslot8
execute if score splash slot3 matches 1.. if score character# slot3 matches 41 at @e[name=slot8,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves = atk slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves += slot4 atkmodifiers
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves /= splash slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves += marks slot6
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot6
execute if score ward slot6 matches 0 run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation shield slot6 -= splashdamage saves
execute if score ward slot6 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run function ch:wardslot6
execute if score splash slot4 matches 1.. if score character# slot4 matches 41 at @e[name=slot6,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves = atk slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves += slot4 atkmodifiers
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves /= splash slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves += marks slot8
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot8
execute if score ward slot8 matches 0 run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation shield slot8 -= splashdamage saves
execute if score ward slot8 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run function ch:wardslot8
execute if score splash slot4 matches 1.. if score character# slot4 matches 41 at @e[name=slot8,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#damage + shield reset (all)
execute if score shield slot6 matches ..0 if score ward slot6 matches 0 run scoreboard players operation slot6 hp += shield slot6
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute if score shield slot8 matches ..0 if score ward slot8 matches 0 run scoreboard players operation slot8 hp += shield slot8
execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0


#lifesteal
#slot 5
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves += marks slot7
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot7
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot1
execute if score ward slot7 matches 0 if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation slot1 hp += lifesteal saves
execute if score ward slot7 matches 0 if score lifesteal slot1 matches 1.. if score character# slot1 matches 41 at @e[name=slot1,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves += marks slot7
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot7
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot2
execute if score ward slot7 matches 0 if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation slot2 hp += lifesteal saves
execute if score ward slot7 matches 0 if score lifesteal slot2 matches 1.. if score character# slot2 matches 41 at @e[name=slot2,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves += marks slot7
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot7
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot3
execute if score ward slot7 matches 0 if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation slot3 hp += lifesteal saves
execute if score ward slot7 matches 0 if score lifesteal slot3 matches 1.. if score character# slot3 matches 41 at @e[name=slot3,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves += marks slot7
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot7
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot4
execute if score ward slot7 matches 0 if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation slot4 hp += lifesteal saves
execute if score ward slot7 matches 0 if score lifesteal slot4 matches 1.. if score character# slot4 matches 41 at @e[name=slot4,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal + splash
#slot 5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves += marks slot6
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot6
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot1
execute if score slot6 hp matches 1.. run execute if score ward slot6 matches 0 run execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation slot1 hp += lifestealsplash saves
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves += marks slot8
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot8
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot1
execute if score slot8 hp matches 1.. run execute if score ward slot8 matches 0 run execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation slot1 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves += marks slot6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot2
execute if score slot6 hp matches 1.. run execute if score ward slot6 matches 0 run execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation slot2 hp += lifestealsplash saves
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves += marks slot8
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot8
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot2
execute if score slot8 hp matches 1.. run execute if score ward slot8 matches 0 run execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation slot2 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves += marks slot6
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot6
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot3
execute if score slot6 hp matches 1.. run execute if score ward slot6 matches 0 run execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation slot3 hp += lifestealsplash saves
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves += marks slot8
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot8
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot3
execute if score slot8 hp matches 1.. run execute if score ward slot8 matches 0 run execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation slot3 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves += marks slot6
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot6
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot4
execute if score slot6 hp matches 1.. run execute if score ward slot6 matches 0 run execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation slot4 hp += lifestealsplash saves
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves += marks slot8
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot8
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot4
execute if score slot8 hp matches 1.. run execute if score ward slot8 matches 0 run execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation slot4 hp += lifestealsplash saves

#Special Cases
execute if score ward slot7 matches ..0 run execute if score character# slot1 matches 41 if score character# slot1 matches 29 if score slot7 hp <= ripperHpBleed abilityStats run scoreboard players operation slot7bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot7 matches ..0 run execute if score character# slot2 matches 41 if score character# slot2 matches 29 if score slot7 hp <= ripperHpBleed abilityStats run scoreboard players operation slot7bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot7 matches ..0 run execute if score character# slot3 matches 41 if score character# slot3 matches 29 if score slot7 hp <= ripperHpBleed abilityStats run scoreboard players operation slot7bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot7 matches ..0 run execute if score character# slot1 matches 41 if score character# slot1 matches -8 run scoreboard players operation slot7Disease disease += zombieDisease abilityStats
execute if score ward slot7 matches ..0 run execute if score character# slot2 matches 41 if score character# slot2 matches -8 run scoreboard players operation slot7Disease disease += zombieDisease abilityStats
execute if score ward slot7 matches ..0 run execute if score character# slot3 matches 41 if score character# slot3 matches -8 run scoreboard players operation slot7Disease disease += zombieDisease abilityStats
execute if score ward slot7 matches ..0 run execute if score character# slot4 matches 41 if score character# slot4 matches -8 run scoreboard players operation slot7Disease disease += zombieDisease abilityStats

#damage + shield reset (all)
execute if score shield slot7 matches ..0 if score ward slot7 matches 0 run scoreboard players operation slot7 hp += shield slot7
execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
execute at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100




#basic attack functions
tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"},"'s Fenrir attacked Slot 8"]
#slot 5
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves = atk slot1
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves += slot1 atkmodifiers
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves += marks slot8
execute if score character# slot1 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot8
execute if score character# slot1 matches 41 run scoreboard players operation shield slot8 -= atk1 saves
#slot 6
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves = atk slot2
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves += slot2 atkmodifiers
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves += marks slot8
execute if score character# slot2 matches 41 if score character# slot2 matches 36 run execute unless score durationSlot1-8 fear matches 1.. unless score durationSlot2-8 fear matches 1.. unless score durationSlot3-8 fear matches 1.. unless score durationSlot4-8 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot2 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot8
execute if score character# slot2 matches 41 run scoreboard players operation shield slot8 -= atk1 saves
#slot 7
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves = atk slot3
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves += marks slot8
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves += slot3 atkmodifiers
execute if score character# slot3 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot8
execute if score character# slot3 matches 41 run scoreboard players operation shield slot8 -= atk1 saves
#slot 8
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves = atk slot4
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves += marks slot8
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves += slot4 atkmodifiers
execute if score character# slot4 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot8
execute if score character# slot4 matches 41 run scoreboard players operation shield slot8 -= atk1 saves

execute if score character# slot5 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves
execute if score character# slot6 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves
execute if score character# slot7 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves

#splash
#slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves = atk slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves += slot1 atkmodifiers
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves /= splash slot1
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves += marks slot7
execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score ward slot7 matches 0 run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run function ch:wardslot7
execute if score splash slot1 matches 1.. if score character# slot1 matches 41 at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves = atk slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves += slot2 atkmodifiers
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves /= splash slot2
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves += marks slot7
execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score ward slot7 matches 0 run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run function ch:wardslot7
execute if score splash slot2 matches 1.. if score character# slot2 matches 41 at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves = atk slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves += slot3 atkmodifiers
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves /= splash slot3
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves += marks slot7
execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score ward slot7 matches 0 run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run function ch:wardslot7
execute if score splash slot3 matches 1.. if score character# slot3 matches 41 at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves = atk slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves += slot4 atkmodifiers
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves /= splash slot4
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves += marks slot7
execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score ward slot7 matches 0 run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run function ch:wardslot7
execute if score splash slot4 matches 1.. if score character# slot4 matches 41 at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#damage + shield reset (all)
execute if score shield slot7 matches ..0 if score ward slot7 matches 0 run scoreboard players operation slot7 hp += shield slot7
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0


#lifesteal
#slot 5
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves += marks slot8
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot8
execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot1
execute if score ward slot8 matches 0 if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation slot1 hp += lifesteal saves
execute if score ward slot8 matches 0 if score lifesteal slot1 matches 1.. if score character# slot1 matches 41 at @e[name=slot1,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves += marks slot8
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot8
execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot2
execute if score ward slot8 matches 0 if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation slot2 hp += lifesteal saves
execute if score ward slot8 matches 0 if score lifesteal slot2 matches 1.. if score character# slot2 matches 41 at @e[name=slot2,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves += marks slot8
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot8
execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot3
execute if score ward slot8 matches 0 if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation slot3 hp += lifesteal saves
execute if score ward slot8 matches 0 if score lifesteal slot3 matches 1.. if score character# slot3 matches 41 at @e[name=slot3,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves += marks slot8
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot8
execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot4
execute if score ward slot8 matches 0 if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation slot4 hp += lifesteal saves
execute if score ward slot8 matches 0 if score lifesteal slot4 matches 1.. if score character# slot4 matches 41 at @e[name=slot4,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal + splash
#slot 5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot1
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation slot1 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot2
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation slot2 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot3
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation slot3 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot4
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score character# slot4 matches 41 run scoreboard players operation slot4 hp += lifestealsplash saves

#Special Cases
execute if score ward slot8 matches ..0 run execute if score character# slot1 matches 41 if score character# slot1 matches 29 if score slot8 hp <= ripperHpBleed abilityStats run scoreboard players operation slot8bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot8 matches ..0 run execute if score character# slot2 matches 41 if score character# slot2 matches 29 if score slot8 hp <= ripperHpBleed abilityStats run scoreboard players operation slot8bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot8 matches ..0 run execute if score character# slot3 matches 41 if score character# slot3 matches 29 if score slot8 hp <= ripperHpBleed abilityStats run scoreboard players operation slot8bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot8 matches ..0 run execute if score character# slot1 matches 41 if score character# slot1 matches -8 run scoreboard players operation slot8Disease disease += zombieDisease abilityStats
execute if score ward slot8 matches ..0 run execute if score character# slot2 matches 41 if score character# slot2 matches -8 run scoreboard players operation slot8Disease disease += zombieDisease abilityStats
execute if score ward slot8 matches ..0 run execute if score character# slot3 matches 41 if score character# slot3 matches -8 run scoreboard players operation slot8Disease disease += zombieDisease abilityStats
execute if score ward slot8 matches ..0 run execute if score character# slot4 matches 41 if score character# slot4 matches -8 run scoreboard players operation slot8Disease disease += zombieDisease abilityStats

#damage + shield reset (all)
execute if score shield slot8 matches ..0 if score ward slot8 matches 0 run scoreboard players operation slot8 hp += shield slot8
execute if score ward slot8 matches 1.. run function ch:wardslot8
execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0
execute at @e[name=slot8,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100




execute if score fenrirattack saves matches 1 run execute if score character# slot1 matches 41 run scoreboard players operation fenrirhpsave saves = slot1 hp
execute if score fenrirattack saves matches 1 run execute if score character# slot2 matches 41 run scoreboard players operation fenrirhpsave saves = slot2 hp
execute if score fenrirattack saves matches 1 run execute if score character# slot3 matches 41 run scoreboard players operation fenrirhpsave saves = slot3 hp
execute if score fenrirattack saves matches 2 run execute if score character# slot5 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot5 hp
execute if score fenrirattack saves matches 2 run execute if score character# slot6 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot6 hp
execute if score fenrirattack saves matches 2 run execute if score character# slot7 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot7 hp

execute if score character# slot1 matches 41 if score slot1 hp >= maxhp slot1 run scoreboard players set fenrircancel saves 1
execute if score character# slot2 matches 41 if score slot2 hp >= maxhp slot2 run scoreboard players set fenrircancel saves 1
execute if score character# slot3 matches 41 if score slot3 hp >= maxhp slot3 run scoreboard players set fenrircancel saves 1

execute if score character# slot5 matches 41 if score slot5 hp >= maxhp slot5 run scoreboard players set fenrircancel saves 2
execute if score character# slot6 matches 41 if score slot6 hp >= maxhp slot6 run scoreboard players set fenrircancel saves 2
execute if score character# slot7 matches 41 if score slot7 hp >= maxhp slot7 run scoreboard players set fenrircancel saves 2

execute unless score fenrircancel saves matches 1 if score fenrirattack saves matches 1 if score curse slot5 matches 3 run function abilities:fenrirattackslot5
execute unless score fenrircancel saves matches 1 if score fenrirattack saves matches 1 if score curse slot6 matches 3 run function abilities:fenrirattackslot6
execute unless score fenrircancel saves matches 1 if score fenrirattack saves matches 1 if score curse slot7 matches 3 run function abilities:fenrirattackslot7
execute unless score fenrircancel saves matches 1 if score fenrirattack saves matches 1 if score curse slot8 matches 3 run function abilities:fenrirattackslot8

execute unless score fenrircancel saves matches 2 if score fenrirattack saves matches 2 if score curse slot1 matches 3 run function abilities:fenrirattackslot1
execute unless score fenrircancel saves matches 2 if score fenrirattack saves matches 2 if score curse slot2 matches 3 run function abilities:fenrirattackslot2
execute unless score fenrircancel saves matches 2 if score fenrirattack saves matches 2 if score curse slot3 matches 3 run function abilities:fenrirattackslot3
execute unless score fenrircancel saves matches 2 if score fenrirattack saves matches 2 if score curse slot4 matches 3 run function abilities:fenrirattackslot4

scoreboard players set fenrircancel saves 0