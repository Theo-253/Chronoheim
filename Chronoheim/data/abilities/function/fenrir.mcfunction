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


