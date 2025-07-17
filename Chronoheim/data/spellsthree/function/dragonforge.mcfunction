execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run scoreboard players operation dragonforgeCooldown player5spells = dragonforgeCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run scoreboard players operation dragonforgeCooldown player6spells = dragonforgeCD spellStats
scoreboard players set spellnumber3 spells 26

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run function chthree:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run function chthree:spellgivetargetsp5reverse