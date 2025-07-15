execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:8,max:8}}}}} run scoreboard players operation shieldCooldown player3spells = shieldCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:8,max:8}}}}} run scoreboard players operation shieldCooldown player4spells = shieldCD spellStats
scoreboard players set spellnumber2 spells 8

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:8,max:8}}}}} run function ch:spellgivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:8,max:8}}}}} run function ch:spellgivetargetsp3reverse