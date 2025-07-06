execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:19,max:19}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Ward!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:19,max:19}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Ward!"]

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:19,max:19}}}}} run scoreboard players operation wardCooldown player1spells = wardCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:19,max:19}}}}} run scoreboard players operation wardCooldown player2spells = wardCD spellStats
scoreboard players set spellnumber spells 19
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:19,max:19}}}}} run function ch:spellgivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:19,max:19}}}}} run function ch:spellgivetargetsp1reverse