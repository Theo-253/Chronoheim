execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:31,max:31}}}}} run scoreboard players operation lifeLeechCooldown player1spells = lifeLeechCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:31,max:31}}}}} run scoreboard players operation lifeLeechCooldown player2spells = lifeLeechCD spellStats
scoreboard players set spellnumber spells 31
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:31,max:31}}}}} run function ch:spellgivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:31,max:31}}}}} run function ch:spellgivetargetsp2