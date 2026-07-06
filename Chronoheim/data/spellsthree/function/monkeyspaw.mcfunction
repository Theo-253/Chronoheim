execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:43,max:43}}}}} run scoreboard players operation monkeysPawCooldown player5spells = monkeyspawCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:43,max:43}}}}} run scoreboard players operation monkeysPawCooldown player6spells = monkeyspawCD spellStats
scoreboard players set spellnumber3 spells 43
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:43,max:43}}}}} run function chthree:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:43,max:43}}}}} run function chthree:spellgivetargetsp5reverse