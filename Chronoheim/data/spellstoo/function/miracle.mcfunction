execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run scoreboard players operation miracleCooldown player1spells = miracleCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run scoreboard players operation miracleCooldown player2spells = miracleCD spellStats
scoreboard players set spellnumber2 spells 17
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function chtoo:spellgivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function chtoo:spellgivetargetsp3reverse








