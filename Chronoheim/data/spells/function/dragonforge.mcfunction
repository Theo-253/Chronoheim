execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run scoreboard players operation dragonforgeCooldown player1spells = dragonforgeCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run scoreboard players operation dragonforgeCooldown player2spells = dragonforgeCD spellStats
scoreboard players set spellnumber spells 26

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run function ch:spellgivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run function ch:spellgivetargetsp1reverse