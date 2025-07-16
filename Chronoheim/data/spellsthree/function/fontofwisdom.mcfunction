execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Font of Wisdom!"]
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Font of Wisdom!"]

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation fontOfWisdomCooldown player5spells = fontOfWisdomCD spellStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation fontOfWisdomCooldown player6spells = fontOfWisdomCD spellStats

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run execute at @p[tag=p5] run particle enchant ~ ~ ~ 0.9 0.9 0.9 0.1 400
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run execute at @p[tag=p6] run particle enchant ~ ~ ~ 0.9 0.9 0.9 0.1 400

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation spellbuffsp5 spells += fontOfWisdom spellStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation spellbuffsp6 spells += fontOfWisdom spellStats

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players set attackIsOngoingGame2 booleans 0
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run function chthree:spellphasep5