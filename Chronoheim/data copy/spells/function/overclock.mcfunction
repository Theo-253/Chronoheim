execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:27,max:27}}}}} run scoreboard players operation overclockCooldown player3spells = overclockCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:27,max:27}}}}} run scoreboard players operation overclockCooldown player4spells = overclockCD spellStats
scoreboard players set spellnumber2 spells 27
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:27,max:27}}}}} run function ch:spellgivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:27,max:27}}}}} run function ch:spellgivetargetsp3reverse