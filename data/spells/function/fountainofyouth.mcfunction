execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:25,max:25}}}}} run scoreboard players operation fountainOfYouthCooldown player1spells = fountainOfYouthCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:25,max:25}}}}} run scoreboard players operation fountainOfYouthCooldown player2spells = fountainOfYouthCD spellStats
scoreboard players set spellnumber spells 25
execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:25,max:25}}}}} run function ch:spellgivetargetsp2reverse
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:25,max:25}}}}} run function ch:spellgivetargetsp1reverse
