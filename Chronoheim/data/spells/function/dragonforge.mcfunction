execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run execute if score side1isatk booleans matches 1 run scoreboard players set abilityusep1 booleans 1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run execute if score side2isatk booleans matches 1 run scoreboard players set abilityusep2 booleans 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run function ch:abilitygivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run function ch:abilitygivetargetsp1reverse

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run say used Dragonforge!
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run say used Dragonforge!

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run scoreboard players operation dragonforgeCooldown player1spells = dragonforgeCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run scoreboard players operation dragonforgeCooldown player2spells = dragonforgeCD spellStats
scoreboard players set spellnumber spells 26