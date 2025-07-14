execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run scoreboard players set abilityusep3 booleans 1
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run scoreboard players set abilityusep4 booleans 1

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," Used Mutate!"]
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," Used Mutate!"]

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot9isatk booleans matches 1.. run scoreboard players operation cooldown slot9 = subjectCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot10isatk booleans matches 1.. run scoreboard players operation cooldown slot10 = subjectLeaderCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot11isatk booleans matches 1.. run scoreboard players operation cooldown slot11 = subjectCD abilityStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot13isatk booleans matches 1.. run scoreboard players operation cooldown slot13 = subjectCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot14isatk booleans matches 1.. run scoreboard players operation cooldown slot14 = subjectLeaderCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot15isatk booleans matches 1.. run scoreboard players operation cooldown slot15 = subjectCD abilityStats

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot9isatk booleans matches 1 run scoreboard players operation slot9 hp += subject abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot10isatk booleans matches 1 run scoreboard players operation slot10 hp += subject abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot11isatk booleans matches 1 run scoreboard players operation slot11 hp += subject abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot13isatk booleans matches 1 run scoreboard players operation slot13 hp += subject abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot14isatk booleans matches 1 run scoreboard players operation slot14 hp += subject abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot15isatk booleans matches 1 run scoreboard players operation slot15 hp += subject abilityStats

execute if score slot9isatk booleans matches 1.. at @e[name=slot9] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot10isatk booleans matches 1.. at @e[name=slot10] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot11isatk booleans matches 1.. at @e[name=slot11] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot13isatk booleans matches 1.. at @e[name=slot13] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot14isatk booleans matches 1.. at @e[name=slot14] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot15isatk booleans matches 1.. at @e[name=slot15] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run function ch:turnend
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run effect clear @a[tag=game2] fire_resistance
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run function ch:turnend
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run effect clear @a[tag=game2] fire_resistance
scoreboard players set burn burn2 1