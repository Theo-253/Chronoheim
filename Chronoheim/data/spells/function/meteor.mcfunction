execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:7,max:7}}}}} run scoreboard players operation meteorCooldown player1spells = meteorCD spellStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:7,max:7}}}}} run scoreboard players operation meteorCooldown player2spells = meteorCD spellStats

scoreboard players set spellnumber spells 7
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:7,max:7}}}}} run function ch:spellgivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:7,max:7}}}}} run function ch:spellgivetargetsp2