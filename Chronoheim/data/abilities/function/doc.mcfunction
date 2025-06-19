#Player 1
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} if score slot1 hp matches 1.. run scoreboard players operation durationSlot1 regen = docDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} if score slot2 hp matches 1.. run scoreboard players operation durationSlot2 regen = docDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} if score slot3 hp matches 1.. run scoreboard players operation durationSlot3 regen = docDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} if score slot4 hp matches 1.. run scoreboard players operation durationSlot4 regen = docDuration abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation slot1Regen regen = docRegen abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation slot2Regen regen = docRegen abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation slot3Regen regen = docRegen abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation slot4Regen regen = docRegen abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation cooldown slot1 = docCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation cooldown slot2 = docCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation cooldown slot3 = docCD abilityStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run function ch:turnend
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run say used The Doctor is in!
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run effect clear @a[tag=game1] fire_resistance

#Player 2
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} if score slot5 hp matches 1.. run scoreboard players operation durationslot5 regen = docDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} if score slot6 hp matches 1.. run scoreboard players operation durationslot6 regen = docDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} if score slot7 hp matches 1.. run scoreboard players operation durationslot7 regen = docDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} if score slot8 hp matches 1.. run scoreboard players operation durationslot8 regen = docDuration abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation slot5Regen regen = docRegen abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation slot6Regen regen = docRegen abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation slot7Regen regen = docRegen abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation slot8Regen regen = docRegen abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players set abilityusep2 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation cooldown slot5 = docCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation cooldown slot6 = docCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run scoreboard players operation cooldown slot7 = docCD abilityStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run function ch:turnend
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run say used The Doctor is in!
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:20,max:20}}}}} run effect clear @a[tag=game1] fire_resistance

scoreboard players set burn burn 1






