execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run scoreboard players set abilityusep5 booleans 1
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run scoreboard players set abilityusep6 booleans 1

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Divine Retribution!"]
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Divine Retribution!"]

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation cooldown slot17 = gabrielCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation cooldown slot18 = gabrielCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation cooldown slot19 = gabrielCD abilityStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation cooldown slot21 = gabrielCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run execute if score slot22isatk booleans matches 1.. run scoreboard players operation cooldown slot22 = gabrielCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = gabrielCD abilityStats
scoreboard players set burn3 burn 1
scoreboard players set abilitynumber3 abilities 22

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run function chthree:abilitygivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run function chthree:abilitygivetargetsp6