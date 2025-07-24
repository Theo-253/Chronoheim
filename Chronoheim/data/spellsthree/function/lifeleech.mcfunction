execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:31,max:31}}}}} run scoreboard players operation lifeLeechCooldown player1spells = lifeLeechCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:31,max:31}}}}} run scoreboard players operation lifeLeechCooldown player2spells = lifeLeechCD spellStats
scoreboard players set spellnumber spells 31
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:31,max:31}}}}} run function chthree:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:31,max:31}}}}} run function chthree:spellgivetargetsp6