execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run scoreboard players set abilityusep5 booleans 1
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run scoreboard players set abilityusep6 booleans 1

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Tome of Magic!"]
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Tome of Magic!"]

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation cooldown slot17 = grimoireCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation cooldown slot18 = grimoireCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation cooldown slot19 = grimoireCD abilityStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation cooldown slot21 = grimoireCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot22isatk booleans matches 1.. run scoreboard players operation cooldown slot22 = grimoireCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = grimoireCD abilityStats

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run scoreboard players operation spellbuffsp5 spells = grimoire abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run scoreboard players operation spellbuffsp6 spells = grimoire abilityStats

execute if score slot17isatk booleans matches 1.. at @e[name=slot17] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot18isatk booleans matches 1.. at @e[name=slot18] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot19isatk booleans matches 1.. at @e[name=slot19] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot21isatk booleans matches 1.. at @e[name=slot21] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot22isatk booleans matches 1.. at @e[name=slot22] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score slot23isatk booleans matches 1.. at @e[name=slot23] run particle minecraft:enchant ~ ~1 ~ 0.9 0.9 0.9 0.1 400

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run function chthree:turnend
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run effect clear @a[tag=game2] fire_resistance
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run function chthree:turnend
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:17,max:17}}}}} run effect clear @a[tag=game2] fire_resistance
scoreboard players set burn3 burn 1