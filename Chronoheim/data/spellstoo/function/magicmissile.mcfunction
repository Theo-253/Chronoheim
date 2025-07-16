execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:4,max:4}}}}} run scoreboard players operation magicMissileCooldown player3spells = magicMissileCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:4,max:4}}}}} run scoreboard players operation magicMissileCooldown player4spells = magicMissileCD spellStats
scoreboard players set spellnumber2 spells 4
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:4,max:4}}}}} run function chtoo:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:4,max:4}}}}} run function chtoo:spellgivetargetsp4