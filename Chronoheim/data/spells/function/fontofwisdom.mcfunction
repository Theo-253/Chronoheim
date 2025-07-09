execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Font of Wisdom!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Font of Wisdom!"]

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation fontOfWisdomCooldown player1spells = fontOfWisdomCD spellStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation fontOfWisdomCooldown player2spells = fontOfWisdomCD spellStats

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run execute at @p[tag=p1] run particle enchant ~ ~ ~ 0.9 0.9 0.9 0.1 400
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run execute at @p[tag=p2] run particle enchant ~ ~ ~ 0.9 0.9 0.9 0.1 400

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation spellbuffsp1 spells += fontOfWisdom spellStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation spellbuffsp2 spells += fontOfWisdom spellStats

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players set attackIsOngoingGame1 booleans 0
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run function ch:spellphasep1