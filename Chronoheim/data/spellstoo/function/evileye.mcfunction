execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run scoreboard players operation evilEyeCooldown player3spells = evilEyeCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run scoreboard players operation evilEyeCooldown player4spells = evilEyeCD spellStats
scoreboard players set spellnumber2 spells 15

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run function chtoo:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run function chtoo:spellgivetargetsp4

