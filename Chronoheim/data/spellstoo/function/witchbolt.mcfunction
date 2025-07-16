execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:10,max:10}}}}} run scoreboard players operation witchboltCooldown player3spells = witchboltCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:10,max:10}}}}} run scoreboard players operation witchboltCooldown player4spells = witchboltCD spellStats
scoreboard players set spellnumber2 spells 10
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:10,max:10}}}}} run function chtoo:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:10,max:10}}}}} run function chtoo:spellgivetargetsp4