execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Evil Eye!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Evil Eye!"]

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run scoreboard players operation evilEyeCooldown player1spells = evilEyeCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run scoreboard players operation evilEyeCooldown player2spells = evilEyeCD spellStats
scoreboard players set spellnumber spells 15

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run function ch:spellgivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:15,max:15}}}}} run function ch:spellgivetargetsp2

