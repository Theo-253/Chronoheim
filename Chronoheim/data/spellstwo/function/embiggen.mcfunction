execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:13,max:13}}}}} run scoreboard players operation embiggenCooldown player3spells = embiggenCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:13,max:13}}}}} run scoreboard players operation embiggenCooldown player4spells = embiggenCD spellStats
scoreboard players set spellnumber2 spells 13
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:13,max:13}}}}} run function ch:spellgivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:13,max:13}}}}} run function ch:spellgivetargetsp3reverse
