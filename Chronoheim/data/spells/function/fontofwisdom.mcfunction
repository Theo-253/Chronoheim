execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run function ch:abilitygivetargetsp2
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run function ch:abilitygivetargetsp1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run say used Font of Wisdom!
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run say used Font of Wisdom!

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation fontOfWisdomCooldown player1spells = fontOfWisdomCD spellStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation fontOfWisdomCooldown player2spells = fontOfWisdomCD spellStats

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation spellbuffsp1 spells += fontOfWisdom spellStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players operation spellbuffsp2 spells += fontOfWisdom spellStats

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players set attackIsOngoingGame1 booleans 0
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:24,max:24}}}}} run scoreboard players set spellPhasePlayer1 booleans 1