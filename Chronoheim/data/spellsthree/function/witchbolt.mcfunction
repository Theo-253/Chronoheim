execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:10,max:10}}}}} run scoreboard players operation witchboltCooldown player5spells = witchboltCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:10,max:10}}}}} run scoreboard players operation witchboltCooldown player6spells = witchboltCD spellStats
scoreboard players set spellnumber3 spells 10
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:10,max:10}}}}} run function chthree:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:10,max:10}}}}} run function chthree:spellgivetargetsp6