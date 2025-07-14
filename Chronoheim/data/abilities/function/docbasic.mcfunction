execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:25,max:25}}}}} run function ch:abilitygivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:25,max:25}}}}} run function ch:abilitygivetargetsp4

scoreboard players set abilitynumber2 abilities -1