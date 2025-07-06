execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:1,max:1}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Fireball!"]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:1,max:1}}}}} run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Fireball!"]

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:1,max:1}}}}} run scoreboard players operation fireballCooldown player1spells = fireballCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:1,max:1}}}}} run scoreboard players operation fireballCooldown player2spells = fireballCD spellStats
scoreboard players set spellnumber spells 1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:1,max:1}}}}} run function ch:spellgivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:1,max:1}}}}} run function ch:spellgivetargetsp2