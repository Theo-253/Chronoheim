execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:38,max:38}}}}} run scoreboard players operation willOWispCooldown player1spells = willowispCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:38,max:38}}}}} run scoreboard players operation willOWispCooldown player2spells = willowispCD spellStats
scoreboard players set spellnumber spells 38

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:38,max:38}}}}} run function ch:spellgivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:38,max:38}}}}} run function ch:spellgivetargetsp2