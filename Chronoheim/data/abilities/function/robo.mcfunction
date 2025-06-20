execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:5,max:5}}}}} run execute if score side1isatk booleans matches 1 run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:5,max:5}}}}} run execute if score side2isatk booleans matches 1 run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:5,max:5}}}}} run function ch:abilitygivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:5,max:5}}}}} run function ch:abilitygivetargetsp1reverse

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:5,max:5}}}}} run say used Force Field!
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:5,max:5}}}}} run say used Force Field!

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:5,max:5}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = roboCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:5,max:5}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = roboCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:5,max:5}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = roboCD abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:5,max:5}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = roboCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:5,max:5}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = roboCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:5,max:5}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = roboCD abilityStats
scoreboard players set burn burn 1
scoreboard players set abilitynumber abilities 5