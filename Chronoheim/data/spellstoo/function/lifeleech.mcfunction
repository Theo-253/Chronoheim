execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:31,max:31}}}}} run scoreboard players operation lifeLeechCooldown player1spells = lifeLeechCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:31,max:31}}}}} run scoreboard players operation lifeLeechCooldown player2spells = lifeLeechCD spellStats
scoreboard players set spellnumber spells 31
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:31,max:31}}}}} run function chtoo:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:31,max:31}}}}} run function chtoo:spellgivetargetsp4