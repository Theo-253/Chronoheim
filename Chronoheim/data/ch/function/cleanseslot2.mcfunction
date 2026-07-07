scoreboard players set durationSlot2 burn 0
scoreboard players set durationSlot2 poison 0
scoreboard players set debuffDurationSlot2 atkmodifiers 0
scoreboard players set durationSlot2 speedDebuffs 0
scoreboard players set durationSlot5-2 fear 0
scoreboard players set durationSlot6-2 fear 0
scoreboard players set durationSlot7-2 fear 0
scoreboard players set durationSlot8-2 fear 0
scoreboard players set durationSlot2 mark 0
scoreboard players set slot2Disease disease 0
scoreboard players set slot2bleeding booleaneffects 0
scoreboard players set durationSlot2 mark 0

execute if score curse slot2 matches 2 if score slot2 hp > maxhp slot2 run scoreboard players operation slot2 hp = maxhp slot2
execute if score curse slot2 matches 2 run scoreboard players operation abilityDmg saves = zeebo abilityStats
execute if score curse slot2 matches 2 run scoreboard players operation abilityDmg saves *= curseStacks slot2
execute if score curse slot2 matches 2 run scoreboard players operation abilityDmgslot1 saves = abilityDmg saves
execute if score curse slot2 matches 2 run scoreboard players operation abilityDmgslot2 saves = abilityDmg saves
execute if score curse slot2 matches 2 run scoreboard players operation abilityDmgslot3 saves = abilityDmg saves
execute if score curse slot2 matches 2 run scoreboard players operation abilityDmgslot4 saves = abilityDmg saves
execute if score curse slot2 matches 2 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmgslot1 saves
execute if score curse slot2 matches 2 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmgslot2 saves
execute if score curse slot2 matches 2 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmgslot3 saves
execute if score curse slot2 matches 2 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= abilityDmgslot4 saves
execute if score curse slot2 matches 2 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score curse slot2 matches 2 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score curse slot2 matches 2 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score curse slot2 matches 2 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score curse slot2 matches 2 run execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score curse slot2 matches 2 run execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score curse slot2 matches 2 run execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score curse slot2 matches 2 run execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0
execute if score curse slot2 matches 2 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score curse slot2 matches 2 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score curse slot2 matches 2 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score curse slot2 matches 2 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score curse slot2 matches 2 run execute at @e[name=slot1] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot1] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot1] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot1] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot2] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot2] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot2] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot2] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot3] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot3] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot3] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot3] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot4] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot4] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot4] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run execute at @e[name=slot4] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot2 matches 2 run scoreboard players set curse slot2 0



execute at @e[name=slot2] run particle minecraft:end_rod ~ ~1 ~ 0.9 0.9 0.9 0.1 100
