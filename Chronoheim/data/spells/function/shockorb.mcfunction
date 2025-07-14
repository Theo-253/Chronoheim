execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:9,max:9}}}}} run scoreboard players operation shockOrbCooldown player3spells = shockOrbCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:9,max:9}}}}} run scoreboard players operation shockOrbCooldown player4spells = shockOrbCD spellStats
scoreboard players set spellnumber3 spells 9
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:9,max:9}}}}} run function ch:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:9,max:9}}}}} run function ch:spellgivetargetsp6

