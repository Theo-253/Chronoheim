execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run scoreboard players set abilityusep5 booleans 1

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Bell Tolls!"]

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation cooldown slot17 = eidolonCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation cooldown slot18 = eidolonCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation cooldown slot19 = eidolonCD abilityStats

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot17isatk booleans matches 1.. run execute at @n[name=slot17,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot18isatk booleans matches 1.. run execute at @n[name=slot18,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot19isatk booleans matches 1.. run execute at @n[name=slot19,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100



execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot17isatk booleans matches 1.. if score buffDurationSlot17 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot17 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot18isatk booleans matches 1.. if score buffDurationSlot18 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot18 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot19isatk booleans matches 1.. if score buffDurationSlot19 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot19 atkmodifiers = eidolonDuration abilityStats


execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation attackBuffSlot17 atkmodifiers += eidolon abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation attackBuffSlot18 atkmodifiers += eidolonLeader abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation attackBuffSlot19 atkmodifiers += eidolon abilityStats


execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run function ch:turnend
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=game2] fire_resistance




execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run scoreboard players set abilityusep6 booleans 1

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used The Bell Tolls!"]

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation cooldown slot21 = eidolonCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = eidolonCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = eidolonCD abilityStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot21isatk booleans matches 1.. run execute at @n[name=slot21,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. run execute at @n[name=slot23,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. run execute at @n[name=slot23,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot21isatk booleans matches 1.. if score buffDurationSlot21 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot21 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. if score buffDurationSlot22 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot22 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. if score buffDurationSlot23 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot23 atkmodifiers = eidolonDuration abilityStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation attackBuffSlot21 atkmodifiers += eidolon abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation attackBuffSlot22 atkmodifiers += eidolonLeader abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation attackBuffSlot23 atkmodifiers += eidolon abilityStats


execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run function ch:turnend
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=game2] fire_resistance

scoreboard players set burn burn3 1