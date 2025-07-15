execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run scoreboard players operation frostboltCooldown player3spells = frostboltCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run scoreboard players operation frostboltCooldown player4spells = frostboltCD spellStats
scoreboard players set spellnumber2 spells 6
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run function ch:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run function ch:spellgivetargetsp4