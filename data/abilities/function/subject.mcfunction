execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," Used Mutate!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," Used Mutate!"]

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = subjectCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = subjectLeaderCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = subjectCD abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = subjectCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = subjectLeaderCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = subjectCD abilityStats

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp += subject abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp += subject abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp += subject abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot5isatk booleans matches 1 run scoreboard players operation slot5 hp += subject abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot6isatk booleans matches 1 run scoreboard players operation slot6 hp += subject abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot7isatk booleans matches 1 run scoreboard players operation slot7 hp += subject abilityStats

execute if score slot1isatk booleans matches 1.. at @e[name=slot1] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot2isatk booleans matches 1.. at @e[name=slot2] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot3isatk booleans matches 1.. at @e[name=slot3] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot5isatk booleans matches 1.. at @e[name=slot5] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot6isatk booleans matches 1.. at @e[name=slot6] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot7isatk booleans matches 1.. at @e[name=slot7] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run function ch:turnend
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run effect clear @a[tag=game1] fire_resistance
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run function ch:turnend
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run effect clear @a[tag=game1] fire_resistance
scoreboard players set burn burn 1