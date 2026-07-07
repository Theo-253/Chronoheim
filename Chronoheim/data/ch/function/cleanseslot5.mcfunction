scoreboard players set durationSlot5 burn 0
scoreboard players set durationSlot5 poison 0
scoreboard players set debuffDurationSlot5 atkmodifiers 0
scoreboard players set durationSlot5 speedDebuffs 0
scoreboard players set durationSlot1-5 fear 0
scoreboard players set durationSlot2-5 fear 0
scoreboard players set durationSlot3-5 fear 0
scoreboard players set durationSlot4-5 fear 0
scoreboard players set durationSlot5 mark 0
scoreboard players set slot5Disease disease 0
scoreboard players set slot5bleeding booleaneffects 0
scoreboard players set durationSlot5 mark 0
execute if score curse slot5 matches 2 if score slot5 hp > maxhp slot5 run scoreboard players operation slot5 hp = maxhp slot5

execute if score curse slot5 matches 2 run scoreboard players operation abilityDmg saves = zeebo abilityStats
execute if score curse slot5 matches 2 run scoreboard players operation abilityDmg saves *= curseStacks slot5
execute if score curse slot5 matches 2 run scoreboard players operation abilityDmgslot5 saves = abilityDmg saves
execute if score curse slot5 matches 2 run scoreboard players operation abilityDmgslot6 saves = abilityDmg saves
execute if score curse slot5 matches 2 run scoreboard players operation abilityDmgslot7 saves = abilityDmg saves
execute if score curse slot5 matches 2 run scoreboard players operation abilityDmgslot8 saves = abilityDmg saves
execute if score curse slot5 matches 2 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= abilityDmgslot5 saves
execute if score curse slot5 matches 2 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmgslot6 saves
execute if score curse slot5 matches 2 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmgslot7 saves
execute if score curse slot5 matches 2 run execute if score ward slot8 matches 0 run scoreboard players operation shield slot8 -= abilityDmgslot8 saves
execute if score curse slot5 matches 2 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score curse slot5 matches 2 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score curse slot5 matches 2 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score curse slot5 matches 2 run execute if score ward slot8 matches 0 if score shield slot8 matches ..0 run scoreboard players operation slot8 hp += shield slot8
execute if score curse slot5 matches 2 run execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score curse slot5 matches 2 run execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute if score curse slot5 matches 2 run execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
execute if score curse slot5 matches 2 run execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0
execute if score curse slot5 matches 2 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score curse slot5 matches 2 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score curse slot5 matches 2 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score curse slot5 matches 2 run execute if score ward slot8 matches 1.. run function ch:wardslot8
execute if score curse slot5 matches 2 run execute at @e[name=slot5] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot5] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot5] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot5] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot6] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot6] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot6] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot6] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot7] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot7] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot7] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot7] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot8] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot8] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot8] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run execute at @e[name=slot8] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot5 matches 2 run scoreboard players set curse slot5 0

execute at @e[name=slot5] run particle minecraft:end_rod ~ ~1 ~ 0.9 0.9 0.9 0.1 100
