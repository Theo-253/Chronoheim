execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:37,max:37}}}}} run scoreboard players operation butcheringCooldown player1spells = butcheringCD spellStats

execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:37,max:37}}}}} run scoreboard players operation butcheringCooldown player2spells = butcheringCD spellStats
scoreboard players set spellnumber spells 37

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:37,max:37}}}}} run function ch:spellgivetargetsp1
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:37,max:37}}}}} run function ch:spellgivetargetsp2

execute if score durationSlot1 burn matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score durationSlot1 poison matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score durationSlot1 speedDebuffs matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score debuffDurationSlot1 atkmodifiers matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score durationSlot1 mark matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score slot1Disease disease matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score slot1bleeding booleaneffects matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score slot1 stun matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score disarmedslot1 booleaneffects matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score curse slot1 matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score durationSlot8-1 fear matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score durationSlot7-1 fear matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score durationSlot6-1 fear matches 1.. run scoreboard players add slot1Butchering spells 1
execute if score durationSlot5-1 fear matches 1.. run scoreboard players add slot1Butchering spells 1

execute if score durationSlot2 burn matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score durationSlot2 poison matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score durationSlot2 speedDebuffs matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score debuffDurationSlot2 atkmodifiers matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score durationSlot2 mark matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score slot2Disease disease matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score slot2bleeding booleaneffects matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score slot2 stun matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score disarmedslot2 booleaneffects matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score curse slot2 matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score durationSlot8-2 fear matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score durationSlot7-2 fear matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score durationSlot6-2 fear matches 1.. run scoreboard players add slot2Butchering spells 1
execute if score durationSlot5-2 fear matches 1.. run scoreboard players add slot2Butchering spells 1

execute if score durationSlot3 burn matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score durationSlot3 poison matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score durationSlot3 speedDebuffs matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score debuffDurationSlot3 atkmodifiers matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score durationSlot3 mark matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score slot3Disease disease matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score slot3bleeding booleaneffects matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score slot3 stun matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score disarmedslot3 booleaneffects matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score curse slot3 matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score durationSlot8-3 fear matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score durationSlot7-3 fear matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score durationSlot6-3 fear matches 1.. run scoreboard players add slot3Butchering spells 1
execute if score durationSlot5-3 fear matches 1.. run scoreboard players add slot3Butchering spells 1

execute if score durationSlot4 burn matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score durationSlot4 poison matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score durationSlot4 speedDebuffs matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score debuffDurationSlot4 atkmodifiers matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score durationSlot4 mark matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score slot4Disease disease matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score slot4bleeding booleaneffects matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score slot4 stun matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score disarmedslot4 booleaneffects matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score curse slot4 matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score durationSlot8-4 fear matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score durationSlot7-4 fear matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score durationSlot6-4 fear matches 1.. run scoreboard players add slot4Butchering spells 1
execute if score durationSlot5-4 fear matches 1.. run scoreboard players add slot4Butchering spells 1

execute if score durationSlot5 burn matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score durationSlot5 poison matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score durationSlot5 speedDebuffs matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score debuffDurationSlot5 atkmodifiers matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score durationSlot5 mark matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score slot5Disease disease matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score slot5bleeding booleaneffects matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score slot5 stun matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score disarmedslot5 booleaneffects matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score curse slot5 matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score durationSlot4-5 fear matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score durationSlot3-5 fear matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score durationSlot2-5 fear matches 1.. run scoreboard players add slot5Butchering spells 1
execute if score durationSlot1-5 fear matches 1.. run scoreboard players add slot5Butchering spells 1

execute if score durationSlot6 burn matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score durationSlot6 poison matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score durationSlot6 speedDebuffs matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score debuffDurationSlot6 atkmodifiers matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score durationSlot6 mark matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score slot6Disease disease matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score slot6bleeding booleaneffects matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score slot6 stun matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score disarmedslot6 booleaneffects matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score curse slot6 matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score durationSlot4-6 fear matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score durationSlot3-6 fear matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score durationSlot2-6 fear matches 1.. run scoreboard players add slot6Butchering spells 1
execute if score durationSlot1-6 fear matches 1.. run scoreboard players add slot6Butchering spells 1

execute if score durationSlot7 burn matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score durationSlot7 poison matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score durationSlot7 speedDebuffs matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score debuffDurationSlot7 atkmodifiers matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score durationSlot7 mark matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score slot7Disease disease matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score slot7bleeding booleaneffects matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score slot7 stun matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score disarmedslot7 booleaneffects matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score curse slot7 matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score durationSlot4-7 fear matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score durationSlot3-7 fear matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score durationSlot2-7 fear matches 1.. run scoreboard players add slot7Butchering spells 1
execute if score durationSlot1-7 fear matches 1.. run scoreboard players add slot7Butchering spells 1

execute if score durationSlot5 burn matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score durationSlot5 poison matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score durationSlot5 speedDebuffs matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score debuffDurationSlot5 atkmodifiers matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score durationSlot5 mark matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score slot5Disease disease matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score slot5bleeding booleaneffects matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score slot5 stun matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score disarmedslot5 booleaneffects matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score curse slot5 matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score durationSlot4-5 fear matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score durationSlot3-5 fear matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score durationSlot2-5 fear matches 1.. run scoreboard players add slot8Butchering spells 1
execute if score durationSlot1-5 fear matches 1.. run scoreboard players add slot8Butchering spells 1

execute if score slot1Butchering spells <= butcheringThreshold spellStats run clear @a[tag=p2] minecraft:target[minecraft:custom_name="Target Slot 1"]
execute if score slot2Butchering spells <= butcheringThreshold spellStats run clear @a[tag=p2] minecraft:target[minecraft:custom_name="Target Slot 2"]
execute if score slot3Butchering spells <= butcheringThreshold spellStats run clear @a[tag=p2] minecraft:target[minecraft:custom_name="Target Slot 3"]
execute if score slot4Butchering spells <= butcheringThreshold spellStats run clear @a[tag=p2] minecraft:target[minecraft:custom_name="Target Slot 4"]

execute if score slot5Butchering spells <= butcheringThreshold spellStats run clear @a[tag=p1] minecraft:target[minecraft:custom_name="Target Slot 5"]
execute if score slot6Butchering spells <= butcheringThreshold spellStats run clear @a[tag=p1] minecraft:target[minecraft:custom_name="Target Slot 6"]
execute if score slot7Butchering spells <= butcheringThreshold spellStats run clear @a[tag=p1] minecraft:target[minecraft:custom_name="Target Slot 7"]
execute if score slot8Butchering spells <= butcheringThreshold spellStats run clear @a[tag=p1] minecraft:target[minecraft:custom_name="Target Slot 8"]

execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:37,max:37}}}}} run execute if score slot5Butchering spells <= butcheringThreshold spellStats if score slot6Butchering spells <= butcheringThreshold spellStats if score slot8Butchering spells <= butcheringThreshold spellStats if score slot7Butchering spells <= butcheringThreshold spellStats run give @p[tag=p1] barrier[minecraft:custom_name="Skip",minecraft:lore=[{"text":"Spell","color":"blue","italic":false}],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:infested,duration:1,amplifier:0,show_particles:0b}]}]}]
execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:37,max:37}}}}} run execute if score slot1Butchering spells <= butcheringThreshold spellStats if score slot2Butchering spells <= butcheringThreshold spellStats if score slot4Butchering spells <= butcheringThreshold spellStats if score slot3Butchering spells <= butcheringThreshold spellStats run give @p[tag=p2] barrier[minecraft:custom_name="Skip",minecraft:lore=[{"text":"Spell","color":"blue","italic":false}],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:infested,duration:1,amplifier:0,show_particles:0b}]}]}]


scoreboard players set slot1Butchering spells 0
scoreboard players set slot2Butchering spells 0
scoreboard players set slot3Butchering spells 0
scoreboard players set slot4Butchering spells 0
scoreboard players set slot5Butchering spells 0
scoreboard players set slot6Butchering spells 0
scoreboard players set slot7Butchering spells 0
scoreboard players set slot8Butchering spells 0
