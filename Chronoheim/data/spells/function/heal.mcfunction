execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:2,max:2}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Heal!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:2,max:2}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Heal!"]

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:2,max:2}}}}} run scoreboard players operation healCooldown player1spells = healCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:2,max:2}}}}} run scoreboard players operation healCooldown player2spells = healCD spellStats
scoreboard players set spellnumber spells 2
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:2,max:2}}}}} run function ch:spellgivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:2,max:2}}}}} run function ch:spellgivetargetsp1reverse