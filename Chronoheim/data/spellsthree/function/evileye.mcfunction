execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run scoreboard players operation evilEyeCooldown player5spells = evilEyeCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run scoreboard players operation evilEyeCooldown player6spells = evilEyeCD spellStats
scoreboard players set spellnumber3 spells 15

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run function chthree:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run function chthree:spellgivetargetsp6

