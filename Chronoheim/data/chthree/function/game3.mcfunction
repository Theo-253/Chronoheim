#attack initiation check
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function chthree:basicattackstartp5
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:0,max:0}}}}} run function chthree:basicattackstartp6

#attack targeting check
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function chthree:basicattacks1
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function chthree:basicattacks2
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function chthree:basicattacks3
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function chthree:basicattacks4
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:1,max:1}}}}} run function chthree:basicattacks5
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:2,max:2}}}}} run function chthree:basicattacks6
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:3,max:3}}}}} run function chthree:basicattacks7
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:conduit_power":{amplifier:{min:4,max:4}}}}} run function chthree:basicattacks8
effect clear @a minecraft:conduit_power

function chthree:spelltargetinggeneralgame3
function chthree:abilitytargetinggeneralgame3
function chthree:atkmodifiers
function chthree:speedcheckgame3
function chthree:abilitychecks
function chthree:spellchecks


#invincibility
execute if score invincibleSlot17 booleaneffects matches 1.. run scoreboard players operation slot17 hp = savehp17 saves
execute if score invincibleSlot18 booleaneffects matches 1.. run scoreboard players operation slot18 hp = savehp18 saves
execute if score invincibleSlot19 booleaneffects matches 1.. run scoreboard players operation slot19 hp = savehp19 saves
execute if score invincibleSlot19 booleaneffects matches 1.. run scoreboard players operation slot20 hp = savehp30 saves
execute if score invincibleSlot21 booleaneffects matches 1.. run scoreboard players operation slot21 hp = savehp21 saves
execute if score invincibleSlot22 booleaneffects matches 1.. run scoreboard players operation slot22 hp = savehp22 saves
execute if score invincibleSlot23 booleaneffects matches 1.. run scoreboard players operation slot23 hp = savehp23 saves
execute if score invincibleSlot19 booleaneffects matches 1.. run scoreboard players operation slot24 hp = savehp24 saves

#Scoreboard UI
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.blue Cooldown_Game_3
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.blue Speed_Game_3
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.blue Health_Game_3
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.blue Spell_Cooldown_Game_3
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:0,max:0}}}}} run scoreboard objectives setdisplay sidebar.team.dark_blue Cooldown_Game_3
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:1,max:1}}}}} run scoreboard objectives setdisplay sidebar.team.dark_blue Speed_Game_3
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:2,max:2}}}}} run scoreboard objectives setdisplay sidebar.team.dark_blue Health_Game_3
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:regeneration":{amplifier:{min:3,max:3}}}}} run scoreboard objectives setdisplay sidebar.team.dark_blue Spell_Cooldown_Game_3

#Skips
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function chthree:turnend
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:0,max:0}}}}} run function chthree:turnend
execute as @p[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run scoreboard players set attackIsOngoingGame2 booleans 0
execute as @p[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:0,max:0}}}}} run function chthree:spellphasep5
#Speed Reset
execute if score attackIsOngoingGame2 booleans matches 0 run execute if score speed slot24 matches ..-10000 if score speed slot23 matches ..-10000 if score speed slot22 matches ..-10000 run execute if score speed slot21 matches ..-10000 run execute if score speed slot20 matches ..-10000 run execute if score speed slot19 matches ..-10000 run execute if score speed slot18 matches ..-10000 run execute if score speed slot17 matches ..-10000 run function chthree:turnresetgame3

#When I get elected, we will have so much winning
execute if score alivep5 deaths matches 0 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," has won the duel against ",{"selector":"@p[tag=p5]"},"!"]
execute if score alivep5 deaths matches 0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p5] Wins 1
execute if score alivep5 deaths matches 0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p5] Combat_Rating 5
execute if score alivep5 deaths matches 0 if score testing Combat_Rating matches 0 run scoreboard players remove @p[tag=p6] Combat_Rating 5 
execute if score alivep5 deaths matches 0 run function chthree:win
execute if score alivep6 deaths matches 0 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," has won the duel against ",{"selector":"@p[tag=p6]"},"!"]
execute if score alivep6 deaths matches 0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p6] Wins 1
execute if score alivep6 deaths matches 0 if score testing Combat_Rating matches 0 run scoreboard players add @p[tag=p6] Combat_Rating 5
execute if score alivep6 deaths matches 0 if score testing Combat_Rating matches 0 run scoreboard players remove @p[tag=p5] Combat_Rating 5
execute if score alivep6 deaths matches 0 run function chthree:win

#Rapidtick
execute if score character# slot18 matches 18 if score slot18 hp matches ..800 run scoreboard players operation atk slot18 = grangorLeaderAtk heroattack
execute if score character# slot18 matches 18 if score slot18 hp matches 801.. run scoreboard players operation atk slot18 = grangor heroattack
execute if score character# slot22 matches 18 if score slot22 hp matches ..800 run scoreboard players operation atk slot22 = grangorLeaderAtk heroattack
execute if score character# slot22 matches 18 if score slot22 hp matches 801.. run scoreboard players operation atk slot22 = grangor heroattack
execute if score character# slot22 matches 18 if score slot22 hp matches ..801 run execute at @n[type=armor_stand,name=slot22] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score character# slot18 matches 18 if score slot18 hp matches ..801 run execute at @n[type=armor_stand,name=slot18] run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.01 10
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot17bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot18bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot19bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot20bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot21bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot22bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot23bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. run scoreboard players set slot24bleeding booleaneffects 999
execute if score suddenDeath2 deaths matches 20.. if score shield slot17 matches 1.. run scoreboard players set shield slot17 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot18 matches 1.. run scoreboard players set shield slot18 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot19 matches 1.. run scoreboard players set shield slot19 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot20 matches 1.. run scoreboard players set shield slot20 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot21 matches 1.. run scoreboard players set shield slot21 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot22 matches 1.. run scoreboard players set shield slot22 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot23 matches 1.. run scoreboard players set shield slot23 0
execute if score suddenDeath2 deaths matches 20.. if score shield slot24 matches 1.. run scoreboard players set shield slot24 0
#Token slots
execute if score character# slot20 matches 0 run scoreboard players set slot20 hp 0
execute if score character# slot24 matches 0 run scoreboard players set slot24 hp 0

#QoL
item replace entity @p[tag=p5] container.21 with clock[minecraft:custom_name="View Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:0,show_particles:0b}]}]}] 1
item replace entity @p[tag=p5] container.22 with feather[minecraft:custom_name="View Speeds",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:1,show_particles:0b}]}]}] 1
item replace entity @p[tag=p5] container.23 with apple[minecraft:custom_name="View HP",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:2,show_particles:0b}]}]}] 1
item replace entity @p[tag=p5] container.31 with book[minecraft:custom_name="View Spell Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:3,show_particles:0b}]}]}] 1
item replace entity @p[tag=p6] container.21 with clock[minecraft:custom_name="View Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:0,show_particles:0b}]}]}] 1
item replace entity @p[tag=p6] container.22 with feather[minecraft:custom_name="View Speeds",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:1,show_particles:0b}]}]}] 1
item replace entity @p[tag=p6] container.23 with apple[minecraft:custom_name="View HP",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:2,show_particles:0b}]}]}] 1
item replace entity @p[tag=p6] container.31 with book[minecraft:custom_name="View Spell Cooldowns",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:"regeneration",duration:1,amplifier:3,show_particles:0b}]}]}] 1

function chthree:effectparticles
function uithree:ui
function uithree:characterui
function uithree:scoreboardui