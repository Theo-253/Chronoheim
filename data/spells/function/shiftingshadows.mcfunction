execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:28,max:28}}}}} run scoreboard players operation shiftingShadowsCooldown player1spells = shiftingShadowsCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:28,max:28}}}}} run scoreboard players operation shiftingShadowsCooldown player2spells = shiftingShadowsCD spellStats
scoreboard players set spellnumber spells 28
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:28,max:28}}}}} run function ch:spellgivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:28,max:28}}}}} run function ch:spellgivetargetsp1reverse

