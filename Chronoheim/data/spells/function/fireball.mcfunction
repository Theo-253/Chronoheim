execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:3,max:3}}}}} run function ch:abilitygivetargetsp2
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:3,max:3}}}}} run function ch:abilitygivetargetsp1

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:3,max:3}}}}} run say used Fireball!
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:3,max:3}}}}} run say used Fireball!

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:3,max:3}}}}} run scoreboard players operation fireballCooldown player1spells = fireballCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:3,max:3}}}}} run scoreboard players operation fireballCooldown player2spells = fireballCD spellStats
scoreboard players set spellnumber spells 3