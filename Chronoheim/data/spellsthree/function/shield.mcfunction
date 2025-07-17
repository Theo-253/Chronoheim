execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:8,max:8}}}}} run scoreboard players operation shieldCooldown player5spells = shieldCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:8,max:8}}}}} run scoreboard players operation shieldCooldown player6spells = shieldCD spellStats
scoreboard players set spellnumber3 spells 8

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:8,max:8}}}}} run function chthree:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:8,max:8}}}}} run function chthree:spellgivetargetsp5reverse