execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:35,max:35}}}}} run scoreboard players operation slimedCooldown player3spells = slimedCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:35,max:35}}}}} run scoreboard players operation slimedCooldown player4spells = slimedCD spellStats
scoreboard players set spellnumber2 spells 35

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:35,max:35}}}}} run function chtoo:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:35,max:35}}}}} run function chtoo:spellgivetargetsp4