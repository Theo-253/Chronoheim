execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:25,max:25}}}}} run function chthree:abilitygivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:25,max:25}}}}} run function chthree:abilitygivetargetsp6

scoreboard players set abilitynumber3 abilities -1