execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:32,max:32}}}}} run scoreboard players operation decimateCooldown player1spells = decimateCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:32,max:32}}}}} run scoreboard players operation decimateCooldown player2spells = decimateCD spellStats
scoreboard players set spellnumber spells 32
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:32,max:32}}}}} run function ch:spellgivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:32,max:32}}}}} run function ch:spellgivetargetsp2