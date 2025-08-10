execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:29,max:29}}}}} run function ch:abilitygivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:29,max:29}}}}} run function ch:abilitygivetargetsp1reverse

scoreboard players set abilitynumber abilities -5