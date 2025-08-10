execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:29,max:29}}}}} run function chthree:abilitygivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:29,max:29}}}}} run function chthree:abilitygivetargetsp5reverse

scoreboard players set abilitynumber3 abilities -5