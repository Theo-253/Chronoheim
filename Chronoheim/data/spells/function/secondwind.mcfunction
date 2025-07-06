execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:22,max:22}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Second Wind!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:22,max:22}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Second Wind!"]

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:22,max:22}}}}} run scoreboard players operation secondWindCooldown player1spells = secondWindCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:22,max:22}}}}} run scoreboard players operation secondWindCooldown player2spells = secondWindCD spellStats
scoreboard players set spellnumber spells 22
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:22,max:22}}}}} run function ch:spellgivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:22,max:22}}}}} run function ch:spellgivetargetsp1reverse