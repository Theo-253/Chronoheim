execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:12,max:12}}}}} run scoreboard players operation embrittleCooldown player3spells = embrittleCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:12,max:12}}}}} run scoreboard players operation embrittleCooldown player4spells = embrittleCD spellStats
scoreboard players set spellnumber2 spells 12

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:12,max:12}}}}} run function ch:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:12,max:12}}}}} run function ch:spellgivetargetsp4


