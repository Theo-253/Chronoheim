#attack initiation check
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function ch:basicattackstartp5
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function ch:basicattackstartp6

#attack targeting check
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function ch:basicattacks1
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function ch:basicattacks2
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function ch:basicattacks3
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function ch:basicattacks4
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function ch:basicattacks5
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function ch:basicattacks6
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function ch:basicattacks7
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function ch:basicattacks8
effect clear @a minecraft:conduit_power

function ch:spelltargetinggeneralgame2
function ch:abilitytargetinggeneralgame2
function ch:atkmodifiers
function ch:speedcheckgame2
function ch:abilitychecks
function ch:spellchecks


#invincibility
execute if score invincibleSlot17 booleaneffects matches 1.. run scoreboard players operation slot17 hp = savehp17 saves
execute if score invincibleSlot18 booleaneffects matches 1.. run scoreboard players operation slot18 hp = savehp18 saves
execute if score invincibleSlot19 booleaneffects matches 1.. run scoreboard players operation slot19 hp = savehp17 saves
execute if score invincibleSlot19 booleaneffects matches 1.. run scoreboard players operation slot20 hp = savehp20 saves
execute if score invincibleSlot21 booleaneffects matches 1.. run scoreboard players operation slot21 hp = savehp21 saves
execute if score invincibleSlot22 booleaneffects matches 1.. run scoreboard players operation slot23 hp = savehp22 saves
execute if score invincibleSlot23 booleaneffects matches 1.. run scoreboard players operation slot23 hp = savehp23 saves
execute if score invincibleSlot19 booleaneffects matches 1.. run scoreboard players operation slot24 hp = savehp24 saves

#Scoreboard UI
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.red Cooldown_Game_1
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.red Speed_Game_1
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.red Health_Game_1
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.red Spell_Cooldown_Game_1
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.dark_red Cooldown_Game_1
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.dark_red Speed_Game_1
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.dark_red Health_Game_1
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.dark_red Spell_Cooldown_Game_1

#Skips
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function ch:turnend
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function ch:turnend
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run scoreboard players set attackIsOngoingGame2 booleans 0
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run function ch:spellphasep5
#Speed Reset
execute if score attackIsOngoingGame2 booleans matches 0 run execute if score speed slot24 matches ..-10000 if score speed slot23 matches ..-10000 if score speed slot23 matches ..-10000 run execute if score speed slot21 matches ..-10000 run execute if score speed slot20 matches ..-10000 run execute if score speed slot19 matches ..-10000 run execute if score speed slot18 matches ..-10000 run execute if score speed slot17 matches ..-10000 run function ch:turnresetgame2

#When I get elected, we will have so much winning
execute if score alivep5 deaths matches 0 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," @p[tag=p6] has won the duel against @p[tag=p5]!"] 
execute if score alivep5 deaths matches 0 run function ch:win
execute if score alivep6 deaths matches 0 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," @p[tag=p5] has won the duel against @p[tag=p6]!"] 
execute if score alivep6 deaths matches 0 run function ch:win

#Rapidtick
execute if score character# slot18 matches 18 if score slot18 hp matches ..800 run scoreboard players operation atk slot18 = grangorLeaderAtk heroattack
execute if score character# slot18 matches 18 if score slot18 hp matches 801.. run scoreboard players operation atk slot18 = grangor heroattack
execute if score character# slot23 matches 18 if score slot23 hp matches ..800 run scoreboard players operation atk slot23 = grangorLeaderAtk heroattack
execute if score character# slot23 matches 18 if score slot23 hp matches 801.. run scoreboard players operation atk slot23 = grangor heroattack
execute if score character# slot23 matches 18 if score slot23 hp matches ..801 run execute at @n[type=armor_stand,name=slot23] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score character# slot18 matches 18 if score slot18 hp matches ..801 run execute at @n[type=armor_stand,name=slot18] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot17bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot18bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot19bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot20bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot21bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot23bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot23bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot24bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. if score shield slot17 matches 1.. run scoreboard players set shield slot17 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot18 matches 1.. run scoreboard players set shield slot18 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot19 matches 1.. run scoreboard players set shield slot19 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot20 matches 1.. run scoreboard players set shield slot20 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot21 matches 1.. run scoreboard players set shield slot21 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot23 matches 1.. run scoreboard players set shield slot23 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot23 matches 1.. run scoreboard players set shield slot23 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot24 matches 1.. run scoreboard players set shield slot24 0
#Token slots
execute if score character# slot20 matches 0 run scoreboard players set slot20 hp 0
execute if score character# slot24 matches 0 run scoreboard players set slot24 hp 0

