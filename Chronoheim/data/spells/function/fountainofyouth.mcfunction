execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:25,max:25}}}}} run scoreboard players operation fountainOfYouthCooldown player3spells = fountainOfYouthCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:25,max:25}}}}} run scoreboard players operation fountainOfYouthCooldown player4spells = fountainOfYouthCD spellStats
scoreboard players set spellnumber2 spells 25
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:25,max:25}}}}} run function ch:spellgivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:25,max:25}}}}} run function ch:spellgivetargetsp3reverse
