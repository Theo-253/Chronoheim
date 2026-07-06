execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:43,max:43}}}}} run scoreboard players operation monkeysPawCooldown player3spells = monkeyspawCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:43,max:43}}}}} run scoreboard players operation monkeysPawCooldown player4spells = monkeyspawCD spellStats
scoreboard players set spellnumber2 spells 43
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:43,max:43}}}}} run function chtoo:spellgivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:43,max:43}}}}} run function chtoo:spellgivetargetsp3reverse