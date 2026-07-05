execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:40,max:40}}}}} run scoreboard players operation darkRitualCooldown player1spells = darkpowerCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:40,max:40}}}}} run scoreboard players operation darkRitualCooldown player2spells = darkpowerCD spellStats
scoreboard players set spellnumber spells 40
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:40,max:40}}}}} run scoreboard players operation darkritual player1spells += darkpowerScale spellStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:40,max:40}}}}} run scoreboard players operation darkritual player2spells += darkpowerScale spellStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:40,max:40}}}}} run function ch:spellgivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:40,max:40}}}}} run function ch:spellgivetargetsp1reverse





