execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:2,max:2}}}}} run scoreboard players operation healCooldown player3spells = healCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:2,max:2}}}}} run scoreboard players operation healCooldown player4spells = healCD spellStats
scoreboard players set spellnumber3 spells 2
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:2,max:2}}}}} run function ch:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:2,max:2}}}}} run function ch:spellgivetargetsp5reverse