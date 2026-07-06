execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:35,max:35}}}}} run scoreboard players operation slimedCooldown player5spells = slimedCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:35,max:35}}}}} run scoreboard players operation slimedCooldown player6spells = slimedCD spellStats
scoreboard players set spellnumber3 spells 35

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:35,max:35}}}}} run function chthree:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:35,max:35}}}}} run function chthree:spellgivetargetsp6