execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run scoreboard players operation frostboltCooldown player5spells = frostboltCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run scoreboard players operation frostboltCooldown player6spells = frostboltCD spellStats
scoreboard players set spellnumber3 spells 6
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run function chthree:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run function chthree:spellgivetargetsp6