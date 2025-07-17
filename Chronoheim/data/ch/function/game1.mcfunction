#attack initiation check
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function ch:basicattackstartp1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function ch:basicattackstartp2

#attack targeting check
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function ch:basicattacks1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function ch:basicattacks2
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function ch:basicattacks3
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function ch:basicattacks4
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function ch:basicattacks5
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function ch:basicattacks6
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function ch:basicattacks7
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function ch:basicattacks8
effect clear @a minecraft:conduit_power

function ch:spelltargetinggeneralgame1
function ch:abilitytargetinggeneralgame1
function ch:atkmodifiers
function ch:speedcheckgame1
function ch:abilitychecks
function ch:spellchecks


#invincibility
execute if score invincibleSlot1 booleaneffects matches 1.. run scoreboard players operation slot1 hp = savehp1 saves
execute if score invincibleSlot2 booleaneffects matches 1.. run scoreboard players operation slot2 hp = savehp2 saves
execute if score invincibleSlot3 booleaneffects matches 1.. run scoreboard players operation slot3 hp = savehp5 saves
execute if score invincibleSlot3 booleaneffects matches 1.. run scoreboard players operation slot4 hp = savehp6 saves
execute if score invincibleSlot5 booleaneffects matches 1.. run scoreboard players operation slot5 hp = savehp5 saves
execute if score invincibleSlot6 booleaneffects matches 1.. run scoreboard players operation slot6 hp = savehp6 saves
execute if score invincibleSlot7 booleaneffects matches 1.. run scoreboard players operation slot7 hp = savehp7 saves
execute if score invincibleSlot3 booleaneffects matches 1.. run scoreboard players operation slot8 hp = savehp8 saves

#Scoreboard UI
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.red Cooldown_Game_1
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.red Speed_Game_1
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.red Health_Game_1
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.red Spell_Cooldown_Game_1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.dark_red Cooldown_Game_1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.dark_red Speed_Game_1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.dark_red Health_Game_1
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.dark_red Spell_Cooldown_Game_1

#Skips
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function ch:turnend
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function ch:turnend
execute as @p[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run scoreboard players set attackIsOngoingGame1 booleans 0
execute as @p[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run function ch:spellphasep1
#Speed Reset
execute if score attackIsOngoingGame1 booleans matches 0 run execute if score speed slot8 matches ..-10000 if score speed slot7 matches ..-10000 if score speed slot6 matches ..-10000 run execute if score speed slot5 matches ..-10000 run execute if score speed slot4 matches ..-10000 run execute if score speed slot3 matches ..-10000 run execute if score speed slot2 matches ..-10000 run execute if score speed slot1 matches ..-10000 run function ch:turnresetgame1

#When I get elected, we will have so much winning
execute if score alivep1 deaths matches 0 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," has won the duel against ",{"selector":"@p[tag=p1]"},"!"]
execute if score alivep1 deaths matches 0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p1] Wins 1
execute if score alivep1 deaths matches 0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p1] Combat_Rating 5
execute if score alivep1 deaths matches 0 if score testing Combat_Rating matches 0 run scoreboard players remove @p[tag=p2] Combat_Rating 5
execute if score alivep1 deaths matches 0 if score testing Combat_Rating matches 0 run function ch:win
execute if score alivep2 deaths matches 0 if score testing Combat_Rating matches 0 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," has won the duel against ",{"selector":"@p[tag=p2]"},"!"]
execute if score alivep2 deaths matches 0 run scoreboard players add @p[tag=p2] Wins 1
execute if score alivep2 deaths matches 0 run scoreboard players add @p[tag=p2] Combat_Rating 5
execute if score alivep2 deaths matches 0 run scoreboard players remove @p[tag=p1] Combat_Rating 5
execute if score alivep2 deaths matches 0 run function ch:win

#Rapidtick
execute if score character# slot2 matches 18 if score slot2 hp matches ..800 run scoreboard players operation atk slot2 = grangorLeaderAtk heroattack
execute if score character# slot2 matches 18 if score slot2 hp matches 801.. run scoreboard players operation atk slot2 = grangor heroattack
execute if score character# slot6 matches 18 if score slot6 hp matches ..800 run scoreboard players operation atk slot6 = grangorLeaderAtk heroattack
execute if score character# slot6 matches 18 if score slot6 hp matches 801.. run scoreboard players operation atk slot6 = grangor heroattack
execute if score character# slot6 matches 18 if score slot6 hp matches ..801 run execute at @n[type=armor_stand,name=slot6] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score character# slot2 matches 18 if score slot2 hp matches ..801 run execute at @n[type=armor_stand,name=slot2] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot1bleeding booleaneffects 999
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot2bleeding booleaneffects 999
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot3bleeding booleaneffects 999
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot4bleeding booleaneffects 999
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot5bleeding booleaneffects 999
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot6bleeding booleaneffects 999
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot7bleeding booleaneffects 999
execute if score suddenDeath deaths matches 20.. run scoreboard players set slot8bleeding booleaneffects 999
execute if score suddenDeath deaths matches 20.. if score shield slot1 matches 1.. run scoreboard players set shield slot1 0
execute if score suddenDeath deaths matches 20.. if score shield slot2 matches 1.. run scoreboard players set shield slot2 0
execute if score suddenDeath deaths matches 20.. if score shield slot3 matches 1.. run scoreboard players set shield slot3 0
execute if score suddenDeath deaths matches 20.. if score shield slot4 matches 1.. run scoreboard players set shield slot4 0
execute if score suddenDeath deaths matches 20.. if score shield slot5 matches 1.. run scoreboard players set shield slot5 0
execute if score suddenDeath deaths matches 20.. if score shield slot6 matches 1.. run scoreboard players set shield slot6 0
execute if score suddenDeath deaths matches 20.. if score shield slot7 matches 1.. run scoreboard players set shield slot7 0
execute if score suddenDeath deaths matches 20.. if score shield slot8 matches 1.. run scoreboard players set shield slot8 0
#Token slots
execute if score character# slot4 matches 0 run scoreboard players set slot4 hp 0
execute if score character# slot8 matches 0 run scoreboard players set slot8 hp 0

#QoL
function ch:effectparticles
function ui:ui
function ui:characterui
function ui:scoreboardui