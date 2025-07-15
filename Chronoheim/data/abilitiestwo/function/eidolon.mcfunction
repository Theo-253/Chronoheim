execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run scoreboard players set abilityusep3 booleans 1

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Bell Tolls!"]

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot9isatk booleans matches 1.. run scoreboard players operation cooldown slot9 = eidolonCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot10isatk booleans matches 1.. run scoreboard players operation cooldown slot10 = eidolonCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot11isatk booleans matches 1.. run scoreboard players operation cooldown slot11 = eidolonCD abilityStats

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot9isatk booleans matches 1.. run execute at @n[name=slot9,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot10isatk booleans matches 1.. run execute at @n[name=slot10,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot11isatk booleans matches 1.. run execute at @n[name=slot11,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100



execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot9isatk booleans matches 1.. if score buffDurationSlot9 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot9 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot10isatk booleans matches 1.. if score buffDurationSlot10 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot10 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot11isatk booleans matches 1.. if score buffDurationSlot11 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot11 atkmodifiers = eidolonDuration abilityStats


execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot9isatk booleans matches 1.. run scoreboard players operation attackBuffSlot9 atkmodifiers += eidolon abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot10isatk booleans matches 1.. run scoreboard players operation attackBuffSlot10 atkmodifiers += eidolonLeader abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot11isatk booleans matches 1.. run scoreboard players operation attackBuffSlot11 atkmodifiers += eidolon abilityStats


execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run function ch:turnend
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=game2] fire_resistance




execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run scoreboard players set abilityusep4 booleans 1

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used The Bell Tolls!"]

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot13isatk booleans matches 1.. run scoreboard players operation cooldown slot13 = eidolonCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot14isatk booleans matches 1.. run scoreboard players operation cooldown slot14 = eidolonCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot15isatk booleans matches 1.. run scoreboard players operation cooldown slot15 = eidolonCD abilityStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot13isatk booleans matches 1.. run execute at @n[name=slot13,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot14isatk booleans matches 1.. run execute at @n[name=slot14,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot15isatk booleans matches 1.. run execute at @n[name=slot15,type=armor_stand] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot13isatk booleans matches 1.. if score buffDurationSlot13 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot13 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot14isatk booleans matches 1.. if score buffDurationSlot14 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot14 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot15isatk booleans matches 1.. if score buffDurationSlot15 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot15 atkmodifiers = eidolonDuration abilityStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot13isatk booleans matches 1.. run scoreboard players operation attackBuffSlot13 atkmodifiers += eidolon abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot14isatk booleans matches 1.. run scoreboard players operation attackBuffSlot14 atkmodifiers += eidolonLeader abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot15isatk booleans matches 1.. run scoreboard players operation attackBuffSlot15 atkmodifiers += eidolon abilityStats


execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run function ch:turnend
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=game2] fire_resistance

scoreboard players set burn2 burn 1