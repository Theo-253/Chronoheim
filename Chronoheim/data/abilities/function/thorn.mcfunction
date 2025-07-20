scoreboard players set burn burn 1
execute if score slot1isatk booleans matches 1.. at @e[name=slot1] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score slot2isatk booleans matches 1.. at @e[name=slot2] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score slot3isatk booleans matches 1.. at @e[name=slot3] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score slot5isatk booleans matches 1.. at @e[name=slot5] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score slot6isatk booleans matches 1.. at @e[name=slot6] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score slot7isatk booleans matches 1.. at @e[name=slot7] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 200

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot1isatk booleans matches 1 run scoreboard players operation durationSlot1 wards = thornDuration abilityStats 
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot2isatk booleans matches 1 run scoreboard players operation durationSlot2 wards = thornDuration abilityStats 
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot3isatk booleans matches 1 run scoreboard players operation durationSlot3 wards = thornDuration abilityStats 
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot1isatk booleans matches 1 run scoreboard players set ward slot1 3 
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot2isatk booleans matches 1 run scoreboard players set ward slot2 3 
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot3isatk booleans matches 1 run scoreboard players set ward slot3 3 
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Crown of Thorns!"]
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = thornCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = thornCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = thornCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot2isatk booleans matches 0 run function ch:turnend
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot2isatk booleans matches 1 run function ch:basicattackstartp1
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run effect clear @a[tag=p1] fire_resistance

## P2
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot5isatk booleans matches 1 run scoreboard players operation durationSlot5 wards = thornDuration abilityStats 
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot6isatk booleans matches 1 run scoreboard players operation durationSlot6 wards = thornDuration abilityStats 
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot7isatk booleans matches 1 run scoreboard players operation durationSlot7 wards = thornDuration abilityStats 
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot5isatk booleans matches 1 run scoreboard players set ward slot5 3 
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot6isatk booleans matches 1 run scoreboard players set ward slot6 3 
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot7isatk booleans matches 1 run scoreboard players set ward slot7 3 
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Crown of Thorns!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = thornCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = thornCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = thornCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run scoreboard players set abilityusep2 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot6isatk booleans matches 0 run function ch:turnend
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot6isatk booleans matches 1 run function ch:basicattackstartp2
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run effect clear @a[tag=p2] fire_resistance





