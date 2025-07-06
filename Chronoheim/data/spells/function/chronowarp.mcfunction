execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} if score cooldown slot1 matches 1.. run scoreboard players operation cooldown slot1 -= chronoWarp spellStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} if score cooldown slot2 matches 1.. run scoreboard players operation cooldown slot2 -= chronoWarp spellStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} if score cooldown slot3 matches 1.. run scoreboard players operation cooldown slot3 -= chronoWarp spellStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} if score cooldown slot4 matches 1.. run scoreboard players operation cooldown slot4 -= chronoWarp spellStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} run scoreboard players operation chronoWarpCooldown player1spells = chronoWarpCD spellStats
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Chrono Warp!"]
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} run scoreboard players set attackIsOngoingGame1 booleans 0
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} run effect clear @a[tag=p1] infested
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} run clear @a[tag=p1]

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} if score cooldown slot5 matches 1.. run scoreboard players operation cooldown slot5 -= chronoWarp spellStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} if score cooldown slot6 matches 1.. run scoreboard players operation cooldown slot6 -= chronoWarp spellStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} if score cooldown slot7 matches 1.. run scoreboard players operation cooldown slot7 -= chronoWarp spellStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} if score cooldown slot8 matches 1.. run scoreboard players operation cooldown slot8 -= chronoWarp spellStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} run scoreboard players operation chronoWarpCooldown player1spells = chronoWarpCD spellStats
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Chrono Warp!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} run function ch:spellphasep1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} run effect clear @a[tag=p2] infested
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:29,max:29}}}}} run clear @a[tag=p2]



