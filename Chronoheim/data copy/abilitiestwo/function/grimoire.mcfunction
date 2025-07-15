execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run scoreboard players set abilityusep3 booleans 1
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run scoreboard players set abilityusep4 booleans 1

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Tome of Magic!"]
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Tome of Magic!"]

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot9isatk booleans matches 1.. run scoreboard players operation cooldown slot9 = grimoireCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot10isatk booleans matches 1.. run scoreboard players operation cooldown slot10 = grimoireCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot11isatk booleans matches 1.. run scoreboard players operation cooldown slot11 = grimoireCD abilityStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot13isatk booleans matches 1.. run scoreboard players operation cooldown slot13 = grimoireCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot14isatk booleans matches 1.. run scoreboard players operation cooldown slot14 = grimoireCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot15isatk booleans matches 1.. run scoreboard players operation cooldown slot15 = grimoireCD abilityStats

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run scoreboard players operation spellbuffsp3 spells = grimoire abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run scoreboard players operation spellbuffsp4 spells = grimoire abilityStats

execute if score slot9isatk booleans matches 1.. at @e[name=slot9] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot10isatk booleans matches 1.. at @e[name=slot10] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot11isatk booleans matches 1.. at @e[name=slot11] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot13isatk booleans matches 1.. at @e[name=slot13] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot14isatk booleans matches 1.. at @e[name=slot14] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot15isatk booleans matches 1.. at @e[name=slot15] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run function ch:turnend
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run effect clear @a[tag=game2] fire_resistance
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run function ch:turnend
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run effect clear @a[tag=game2] fire_resistance
scoreboard players set burn2 burn 1