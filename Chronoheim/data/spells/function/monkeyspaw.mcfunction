execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:43,max:43}}}}} run scoreboard players operation monkeysPawCooldown player1spells = monkeyspawCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:43,max:43}}}}} run scoreboard players operation monkeysPawCooldown player2spells = monkeyspawCD spellStats
scoreboard players set spellnumber spells 43
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:43,max:43}}}}} run function ch:spellgivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:43,max:43}}}}} run function ch:spellgivetargetsp1reverse