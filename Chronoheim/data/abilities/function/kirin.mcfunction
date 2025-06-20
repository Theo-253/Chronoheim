execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score side1isatk booleans matches 1 run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score side2isatk booleans matches 1 run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run function ch:abilitygivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run function ch:abilitygivetargetsp1reverse

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run say used Mythical Empowerment!
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run say used Mythical Empowerment!

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = kirinCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = kirinCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = kirinCD abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = kirinCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = kirinCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = kirinCD abilityStats
scoreboard players set burn burn 1
scoreboard players set abilitynumber abilities 8