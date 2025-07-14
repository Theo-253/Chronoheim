execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function ch:cleanseslot17
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function ch:cleanseslot18
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function ch:cleanseslot19
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function ch:cleanseslot20
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run scoreboard players operation miracleCooldown player3spells = miracleCD spellStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Miracle!"]
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run scoreboard players set attackIsOngoingGame2 booleans 0
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run clear @a[tag=p5]
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run effect clear @a[tag=p5] infested

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function ch:cleanseslot21
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function ch:cleanseslot23
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function ch:cleanseslot23
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function ch:cleanseslot24
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run scoreboard players operation miracleCooldown player4spells = miracleCD spellStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Miracle!"]
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function ch:spellphasep5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run clear @a[tag=p6]
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run effect clear @a[tag=p6] infested




