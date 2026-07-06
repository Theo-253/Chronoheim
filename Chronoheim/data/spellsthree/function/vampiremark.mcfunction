execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:36,max:36}}}}} run scoreboard players operation vampireMarkCooldown player5spells = vampiremarkCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:36,max:36}}}}} run scoreboard players operation vampireMarkCooldown player6spells = vampiremarkCD spellStats
scoreboard players set spellnumber3 spells 36

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:36,max:36}}}}} run function chthree:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:36,max:36}}}}} run function chthree:spellgivetargetsp5reverse
