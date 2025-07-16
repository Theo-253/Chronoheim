#attack initiation check
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function chtoo:basicattackstartp3
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function chtoo:basicattackstartp4

#attack targeting check
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function chtoo:basicattacks1
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function chtoo:basicattacks2
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function chtoo:basicattacks3
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function chtoo:basicattacks4
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function chtoo:basicattacks5
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function chtoo:basicattacks6
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function chtoo:basicattacks7
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function chtoo:basicattacks8
effect clear @a minecraft:conduit_power

function chtoo:spelltargetinggeneralgame2
function chtoo:abilitytargetinggeneralgame2
function chtoo:atkmodifiers
function chtoo:speedcheckgame2
function chtoo:abilitychecks
function chtoo:spellchecks


#invincibility
execute if score invincibleSlot9 booleaneffects matches 1.. run scoreboard players operation slot9 hp = savehp9 saves
execute if score invincibleSlot10 booleaneffects matches 1.. run scoreboard players operation slot10 hp = savehp10 saves
execute if score invincibleSlot11 booleaneffects matches 1.. run scoreboard players operation slot11 hp = savehp11 saves
execute if score invincibleSlot11 booleaneffects matches 1.. run scoreboard players operation slot12 hp = savehp12 saves
execute if score invincibleSlot13 booleaneffects matches 1.. run scoreboard players operation slot13 hp = savehp13 saves
execute if score invincibleSlot14 booleaneffects matches 1.. run scoreboard players operation slot14 hp = savehp14 saves
execute if score invincibleSlot15 booleaneffects matches 1.. run scoreboard players operation slot15 hp = savehp15 saves
execute if score invincibleSlot11 booleaneffects matches 1.. run scoreboard players operation slot16 hp = savehp16 saves

#Scoreboard UI
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.yellow Cooldown_Game_2
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.yellow Speed_Game_2
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.yellow Health_Game_2
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.yellow Spell_Cooldown_Game_2
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.gold Cooldown_Game_2
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.gold Speed_Game_2
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.gold Health_Game_2
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.gold Spell_Cooldown_Game_2

#Skips
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function chtoo:turnend
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function chtoo:turnend
execute as @p[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run scoreboard players set attackIsOngoingGame2 booleans 0
execute as @p[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run function chtoo:spellphasep3
#Speed Reset
execute if score attackIsOngoingGame2 booleans matches 0 run execute if score speed slot16 matches ..-10000 if score speed slot15 matches ..-10000 if score speed slot14 matches ..-10000 run execute if score speed slot13 matches ..-10000 run execute if score speed slot12 matches ..-10000 run execute if score speed slot11 matches ..-10000 run execute if score speed slot10 matches ..-10000 run execute if score speed slot9 matches ..-10000 run function chtoo:turnresetgame2

#When I get elected, we will have so much winning
execute if score alivep3 deaths matches 0 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," @p[tag=p4] has won the duel against @p[tag=p3]!"] 
execute if score alivep3 deaths matches 0 run function chtoo:win
execute if score alivep4 deaths matches 0 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," @p[tag=p3] has won the duel against @p[tag=p4]!"] 
execute if score alivep4 deaths matches 0 run function chtoo:win

#Rapidtick
execute if score character# slot10 matches 18 if score slot10 hp matches ..800 run scoreboard players operation atk slot10 = grangorLeaderAtk heroattack
execute if score character# slot10 matches 18 if score slot10 hp matches 801.. run scoreboard players operation atk slot10 = grangor heroattack
execute if score character# slot14 matches 18 if score slot14 hp matches ..800 run scoreboard players operation atk slot14 = grangorLeaderAtk heroattack
execute if score character# slot14 matches 18 if score slot14 hp matches 801.. run scoreboard players operation atk slot14 = grangor heroattack
execute if score character# slot14 matches 18 if score slot14 hp matches ..801 run execute at @n[type=armor_stand,name=slot14] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score character# slot10 matches 18 if score slot10 hp matches ..801 run execute at @n[type=armor_stand,name=slot10] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot9bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot10bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot11bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot12bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot13bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot14bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot15bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot16bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. if score shield slot9 matches 1.. run scoreboard players set shield slot9 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot10 matches 1.. run scoreboard players set shield slot10 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot11 matches 1.. run scoreboard players set shield slot11 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot12 matches 1.. run scoreboard players set shield slot12 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot13 matches 1.. run scoreboard players set shield slot13 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot14 matches 1.. run scoreboard players set shield slot14 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot15 matches 1.. run scoreboard players set shield slot15 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot16 matches 1.. run scoreboard players set shield slot16 0
#Token slots
execute if score character# slot12 matches 0 run scoreboard players set slot12 hp 0
execute if score character# slot16 matches 0 run scoreboard players set slot16 hp 0

