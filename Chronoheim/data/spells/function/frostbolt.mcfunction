execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Frostbolt!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Frostbolt!"]

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run scoreboard players operation frostboltCooldown player1spells = frostboltCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run scoreboard players operation frostboltCooldown player2spells = frostboltCD spellStats
scoreboard players set spellnumber spells 6
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run function ch:spellgivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:6,max:6}}}}} run function ch:spellgivetargetsp2