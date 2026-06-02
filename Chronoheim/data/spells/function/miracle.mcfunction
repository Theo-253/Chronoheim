execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run scoreboard players operation miracleCooldown player1spells = miracleCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run scoreboard players operation miracleCooldown player2spells = miracleCD spellStats
scoreboard players set spellnumber spells 17
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function ch:spellgivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function ch:spellgivetargetsp1reverse




