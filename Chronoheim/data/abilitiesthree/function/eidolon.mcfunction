scoreboard players set burn3 burn 1
scoreboard players set abilitynumber3 abilities 28

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run scoreboard players set abilityusep5 booleans 1

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used The Bell Tolls!"]
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used The Bell Tolls!"]

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation cooldown slot17 = eidolonCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation cooldown slot18 = eidolonCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation cooldown slot19 = eidolonCD abilityStats

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot17isatk booleans matches 1.. run execute at @n[name=slot17,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100







execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run scoreboard players set abilityusep6 booleans 1

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation cooldown slot21 = eidolonCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot22isatk booleans matches 1.. run scoreboard players operation cooldown slot22 = eidolonCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = eidolonCD abilityStats

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run function chthree:abilitygivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run function chthree:abilitygivetargetsp6

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=game3] fire_resistance
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=game3] fire_resistance