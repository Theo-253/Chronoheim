execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:22,max:22}}}}} run scoreboard players operation secondWindCooldown player3spells = secondWindCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:22,max:22}}}}} run scoreboard players operation secondWindCooldown player4spells = secondWindCD spellStats
scoreboard players set spellnumber3 spells 22
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:22,max:22}}}}} run function ch:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:22,max:22}}}}} run function ch:spellgivetargetsp5reverse