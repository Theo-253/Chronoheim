execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:10,max:10}}}}} run scoreboard players operation witchboltCooldown player1spells = witchboltCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:10,max:10}}}}} run scoreboard players operation witchboltCooldown player2spells = witchboltCD spellStats
scoreboard players set spellnumber spells 10
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:10,max:10}}}}} run function ch:spellgivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:10,max:10}}}}} run function ch:spellgivetargetsp2