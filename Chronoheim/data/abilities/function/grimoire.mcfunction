execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Tome of Magic!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Tome of Magic!"]

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = grimoireCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = grimoireCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = grimoireCD abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = grimoireCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = grimoireCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = grimoireCD abilityStats

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run scoreboard players operation spellbuffsp1 spells = grimoire abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run scoreboard players operation spellbuffsp2 spells = grimoire abilityStats

execute if score slot1isatk booleans matches 1.. at @e[name=slot1] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot2isatk booleans matches 1.. at @e[name=slot2] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot3isatk booleans matches 1.. at @e[name=slot3] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot5isatk booleans matches 1.. at @e[name=slot5] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot6isatk booleans matches 1.. at @e[name=slot6] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot7isatk booleans matches 1.. at @e[name=slot7] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run function ch:turnend
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run effect clear @a[tag=game1] fire_resistance
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run function ch:turnend
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run effect clear @a[tag=game1] fire_resistance
scoreboard players set burn burn 1