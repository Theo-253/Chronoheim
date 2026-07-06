execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:34,max:34}}}}} run scoreboard players operation cannibalizeCooldown player5spells = cannibalizeCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:34,max:34}}}}} run scoreboard players operation cannibalizeCooldown player6spells = cannibalizeCD spellStats
scoreboard players set spellnumber3 spells 34
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:34,max:34}}}}} run function chthree:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:34,max:34}}}}} run function chthree:spellgivetargetsp5reverse