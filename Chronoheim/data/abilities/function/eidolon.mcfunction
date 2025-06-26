execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run scoreboard players set abilityusep1 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run say used Bell Tolls!

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation cooldown slot1 = eidolonCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation cooldown slot2 = eidolonCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation cooldown slot3 = eidolonCD abilityStats


execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot1isatk booleans matches 1.. if score buffDurationSlot1 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot1 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot2isatk booleans matches 1.. if score buffDurationSlot2 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot2 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot3isatk booleans matches 1.. if score buffDurationSlot3 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot3 atkmodifiers = eidolonDuration abilityStats


execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot1isatk booleans matches 1.. run scoreboard players operation attackBuffSlot1 atkmodifiers += eidolon abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot2isatk booleans matches 1.. run scoreboard players operation attackBuffSlot2 atkmodifiers += eidolonLeader abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot3isatk booleans matches 1.. run scoreboard players operation attackBuffSlot3 atkmodifiers += eidolon abilityStats


execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run function ch:turnend
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=game1] fire_resistance




execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run say used Bell Tolls!

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation cooldown slot5 = eidolonCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation cooldown slot6 = eidolonCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation cooldown slot7 = eidolonCD abilityStats


execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot5isatk booleans matches 1.. if score buffDurationSlot5 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot5 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot6isatk booleans matches 1.. if score buffDurationSlot6 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot6 atkmodifiers = eidolonDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot7isatk booleans matches 1.. if score buffDurationSlot7 atkmodifiers < eidolonDuration abilityStats run scoreboard players operation buffDurationSlot7 atkmodifiers = eidolonDuration abilityStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot5isatk booleans matches 1.. run scoreboard players operation attackBuffSlot5 atkmodifiers += eidolon abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot6isatk booleans matches 1.. run scoreboard players operation attackBuffSlot6 atkmodifiers += eidolonLeader abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot7isatk booleans matches 1.. run scoreboard players operation attackBuffSlot7 atkmodifiers += eidolon abilityStats


execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run function ch:turnend
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=game1] fire_resistance

scoreboard players set burn burn 1