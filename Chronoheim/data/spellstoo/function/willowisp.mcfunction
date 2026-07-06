
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:38,max:38}}}}} run scoreboard players operation willOWispCooldown player3spells = willowispCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:38,max:38}}}}} run scoreboard players operation willOWispCooldown player4spells = willowispCD spellStats
scoreboard players set spellnumber2 spells 38

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:38,max:38}}}}} run function chtoo:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:38,max:38}}}}} run function chtoo:spellgivetargetsp4