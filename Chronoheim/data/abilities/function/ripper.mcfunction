execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score side1isatk booleans matches 1 run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score side2isatk booleans matches 1 run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run function ch:abilitygivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run function ch:abilitygivetargetsp2

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run say used Execute!
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run say used Execute!

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = ripperCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = ripperCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = ripperCD abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = ripperCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = ripperCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = ripperCD abilityStats
scoreboard players set burn burn 1
scoreboard players set abilitynumber abilities 29