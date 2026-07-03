execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:34,max:34}}}}} run scoreboard players operation cannibalizeCooldown player1spells = cannibalizeCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:34,max:34}}}}} run scoreboard players operation cannibalizeCooldown player2spells = cannibalizeCD spellStats
scoreboard players set spellnumber spells 34
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:34,max:34}}}}} run function ch:spellgivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:34,max:34}}}}} run function ch:spellgivetargetsp1reverse