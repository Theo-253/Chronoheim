execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:19,max:19}}}}} run scoreboard players operation wardCooldown player3spells = wardCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:19,max:19}}}}} run scoreboard players operation wardCooldown player4spells = wardCD spellStats
scoreboard players set spellnumber2 spells 19
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:19,max:19}}}}} run function ch:spellgivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:19,max:19}}}}} run function ch:spellgivetargetsp3reverse