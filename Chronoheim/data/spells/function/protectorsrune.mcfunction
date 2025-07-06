execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:16,max:16}}}}} run scoreboard players operation protectorsRuneCooldown player1spells = protectorsRuneCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:16,max:16}}}}} run scoreboard players operation protectorsRuneCooldown player2spells = protectorsRuneCD spellStats
scoreboard players set spellnumber spells 16
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:16,max:16}}}}} run function ch:spellgivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:16,max:16}}}}} run function ch:spellgivetargetsp1reverse

