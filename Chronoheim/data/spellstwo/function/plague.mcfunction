execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run scoreboard players operation plagueCooldown player3spells = plagueCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run scoreboard players operation plagueCooldown player4spells = plagueCD spellStats
scoreboard players set spellnumber2 spells 21
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run function ch:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run function ch:spellgivetargetsp4
