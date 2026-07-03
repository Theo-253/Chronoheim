execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:35,max:35}}}}} run scoreboard players operation slimedCooldown player1spells = slimedCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:35,max:35}}}}} run scoreboard players operation slimedCooldown player2spells = slimedCD spellStats
scoreboard players set spellnumber spells 35

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:35,max:35}}}}} run function ch:spellgivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:35,max:35}}}}} run function ch:spellgivetargetsp2