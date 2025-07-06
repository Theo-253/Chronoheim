execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Plague!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Plague!"]

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run scoreboard players operation plagueCooldown player1spells = plagueCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run scoreboard players operation plagueCooldown player2spells = plagueCD spellStats
scoreboard players set spellnumber spells 21
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run function ch:spellgivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run function ch:spellgivetargetsp2
