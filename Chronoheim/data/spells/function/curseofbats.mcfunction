execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:42,max:42}}}}} run scoreboard players operation curseOfBatsCooldown player1spells = curseofbatsCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:42,max:42}}}}} run scoreboard players operation curseOfBatsCooldown player2spells = curseofbatsCD spellStats
scoreboard players set spellnumber spells 42

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:42,max:42}}}}} run function ch:spellgivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:42,max:42}}}}} run function ch:spellgivetargetsp2