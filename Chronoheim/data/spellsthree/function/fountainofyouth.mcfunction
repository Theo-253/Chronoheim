execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:25,max:25}}}}} run scoreboard players operation fountainOfYouthCooldown player3spells = fountainOfYouthCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:25,max:25}}}}} run scoreboard players operation fountainOfYouthCooldown player4spells = fountainOfYouthCD spellStats
scoreboard players set spellnumber3 spells 25
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:25,max:25}}}}} run function ch:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:25,max:25}}}}} run function ch:spellgivetargetsp5reverse
