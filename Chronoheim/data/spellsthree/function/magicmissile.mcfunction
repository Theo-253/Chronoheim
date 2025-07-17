execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:4,max:4}}}}} run scoreboard players operation magicMissileCooldown player5spells = magicMissileCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:4,max:4}}}}} run scoreboard players operation magicMissileCooldown player6spells = magicMissileCD spellStats
scoreboard players set spellnumber3 spells 4
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:4,max:4}}}}} run function chthree:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:4,max:4}}}}} run function chthree:spellgivetargetsp6