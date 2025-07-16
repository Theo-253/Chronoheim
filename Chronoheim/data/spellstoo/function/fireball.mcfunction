execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:1,max:1}}}}} run scoreboard players operation fireballCooldown player3spells = fireballCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:1,max:1}}}}} run scoreboard players operation fireballCooldown player4spells = fireballCD spellStats
scoreboard players set spellnumber2 spells 1

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:1,max:1}}}}} run function chtoo:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:1,max:1}}}}} run function chtoo:spellgivetargetsp4