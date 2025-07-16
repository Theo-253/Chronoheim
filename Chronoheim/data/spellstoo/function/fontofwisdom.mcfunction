execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Font of Wisdom!"]
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Font of Wisdom!"]

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation fontOfWisdomCooldown player3spells = fontOfWisdomCD spellStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation fontOfWisdomCooldown player4spells = fontOfWisdomCD spellStats

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run execute at @p[tag=p3] run particle enchant ~ ~ ~ 0.9 0.9 0.9 0.1 400
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run execute at @p[tag=p4] run particle enchant ~ ~ ~ 0.9 0.9 0.9 0.1 400

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation spellbuffsp3 spells += fontOfWisdom spellStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation spellbuffsp4 spells += fontOfWisdom spellStats

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players set attackIsOngoingGame2 booleans 0
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run function chtoo:spellphasep3