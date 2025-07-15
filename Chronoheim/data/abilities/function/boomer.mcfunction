execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = boomerCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = boomerCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = boomerCD abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = boomerCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = boomerCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = boomerCD abilityStats

execute if score slot1isatk booleans matches 1.. at @e[name=slot1] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot2isatk booleans matches 1.. at @e[name=slot2] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot3isatk booleans matches 1.. at @e[name=slot3] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot5isatk booleans matches 1.. at @e[name=slot5] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot6isatk booleans matches 1.. at @e[name=slot6] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot7isatk booleans matches 1.. at @e[name=slot7] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players set slot1 hp 0
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players set slot2 hp 0
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players set slot3 hp 0

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players set slot5 hp 0
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players set slot6 hp 0
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players set slot7 hp 0

scoreboard players set burn burn 1
scoreboard players set abilitynumber abilities 25
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run function ch:abilitygivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run function ch:abilitygivetargetsp2