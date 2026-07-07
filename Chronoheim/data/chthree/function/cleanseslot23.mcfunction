scoreboard players set durationSlot23 burn 0
scoreboard players set durationSlot23 poison 0
scoreboard players set debuffDurationSlot23 atkmodifiers 0
scoreboard players set durationSlot23 speedDebuffs 0
scoreboard players set durationSlot17-23 fear 0
scoreboard players set durationSlot18-23 fear 0
scoreboard players set durationSlot19-23 fear 0
scoreboard players set durationSlot20-23 fear 0
scoreboard players set durationSlot23 mark 0
scoreboard players set slot23Disease disease 0
scoreboard players set slot23bleeding booleaneffects 0
scoreboard players set durationSlot23 mark 0
execute if score curse slot23 matches 2 if score slot23 hp > maxhp slot23 run scoreboard players operation slot23 hp = maxhp slot23

execute if score curse slot23 matches 2 run scoreboard players operation abilityDmg saves = zeebo abilityStats
execute if score curse slot23 matches 2 run scoreboard players operation abilityDmg saves *= curseStacks slot23
execute if score curse slot23 matches 2 run scoreboard players operation abilityDmgslot21 saves = abilityDmg saves
execute if score curse slot23 matches 2 run scoreboard players operation abilityDmgslot22 saves = abilityDmg saves
execute if score curse slot23 matches 2 run scoreboard players operation abilityDmgslot23 saves = abilityDmg saves
execute if score curse slot23 matches 2 run scoreboard players operation abilityDmgslot24 saves = abilityDmg saves
execute if score curse slot23 matches 2 run execute if score ward slot21 matches 0 run scoreboard players operation shield slot21 -= abilityDmgslot21 saves
execute if score curse slot23 matches 2 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= abilityDmgslot22 saves
execute if score curse slot23 matches 2 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmgslot23 saves
execute if score curse slot23 matches 2 run execute if score ward slot24 matches 0 run scoreboard players operation shield slot24 -= abilityDmgslot24 saves
execute if score curse slot23 matches 2 run execute if score ward slot21 matches 0 if score shield slot21 matches ..0 run scoreboard players operation slot21 hp += shield slot21
execute if score curse slot23 matches 2 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score curse slot23 matches 2 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score curse slot23 matches 2 run execute if score ward slot24 matches 0 if score shield slot24 matches ..0 run scoreboard players operation slot24 hp += shield slot24
execute if score curse slot23 matches 2 run execute if score shield slot21 matches ..0 run scoreboard players set shield slot21 0
execute if score curse slot23 matches 2 run execute if score shield slot22 matches ..0 run scoreboard players set shield slot22 0
execute if score curse slot23 matches 2 run execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score curse slot23 matches 2 run execute if score shield slot24 matches ..0 run scoreboard players set shield slot24 0
execute if score curse slot23 matches 2 run execute if score ward slot21 matches 1.. run function chthree:wardslot21
execute if score curse slot23 matches 2 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score curse slot23 matches 2 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score curse slot23 matches 2 run execute if score ward slot24 matches 1.. run function chthree:wardslot24
execute if score curse slot23 matches 2 run execute at @e[name=slot21] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot21] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot21] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot21] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot22] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot22] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot22] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot22] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot23] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot23] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot23] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot23] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot24] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot24] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot24] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run execute at @e[name=slot24] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot23 matches 2 run scoreboard players set curse slot23 0

execute at @e[name=slot23] run particle minecraft:end_rod ~ ~1 ~ 0.9 0.9 0.9 0.1 100
