execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:36,max:36}}}}} run scoreboard players operation vampireMarkCooldown player1spells = vampiremarkCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:36,max:36}}}}} run scoreboard players operation vampireMarkCooldown player2spells = vampiremarkCD spellStats
scoreboard players set spellnumber spells 36

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:36,max:36}}}}} run function ch:spellgivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:36,max:36}}}}} run function ch:spellgivetargetsp1reverse