execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:38,max:38}}}}} run scoreboard players operation willOWispCooldown player5spells = willowispCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:38,max:38}}}}} run scoreboard players operation willOWispCooldown player6spells = willowispCD spellStats
scoreboard players set spellnumber3 spells 38

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:38,max:38}}}}} run function chthree:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:38,max:38}}}}} run function chthree:spellgivetargetsp6