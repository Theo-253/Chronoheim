execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run scoreboard players set abilityusep5 booleans 1

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Bell Tolls!"]

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation cooldown slot17 = eidolonCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation cooldown slot18 = eidolonCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation cooldown slot19 = eidolonCD abilityStats

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot17isatk booleans matches 1.. run execute at @n[name=slot17,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot18isatk booleans matches 1.. run execute at @n[name=slot18,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot19isatk booleans matches 1.. run execute at @n[name=slot19,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100



execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot17isatk booleans matches 1.. if score buffDurationSlot17 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot17 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot18isatk booleans matches 1.. if score buffDurationSlot10 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot10 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot19isatk booleans matches 1.. if score buffDurationSlot11 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot11 atkmodifiers = eidolonDuration abilityStats


execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation attackBuffSlot17 atkmodifiers += eidolon abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation attackBuffSlot10 atkmodifiers += eidolonLeader abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation attackBuffSlot11 atkmodifiers += eidolon abilityStats


execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run function chthree:turnend
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=game2] fire_resistance




execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run scoreboard players set abilityusep6 booleans 1

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used The Bell Tolls!"]

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation cooldown slot21 = eidolonCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot22isatk booleans matches 1.. run scoreboard players operation cooldown slot22 = eidolonCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = eidolonCD abilityStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot21isatk booleans matches 1.. run execute at @n[name=slot21,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot22isatk booleans matches 1.. run execute at @n[name=slot22,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. run execute at @n[name=slot23,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot21isatk booleans matches 1.. if score buffDurationSlot13 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot13 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot22isatk booleans matches 1.. if score buffDurationSlot14 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot14 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. if score buffDurationSlot15 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot15 atkmodifiers = eidolonDuration abilityStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation attackBuffSlot13 atkmodifiers += eidolon abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot22isatk booleans matches 1.. run scoreboard players operation attackBuffSlot14 atkmodifiers += eidolonLeader abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation attackBuffSlot15 atkmodifiers += eidolon abilityStats


execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run function chthree:turnend
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=game2] fire_resistance

scoreboard players set burn3 burn 1