scoreboard players set durationSlot21 burn 0
scoreboard players set durationSlot21 poison 0
scoreboard players set debuffDurationSlot21 atkmodifiers 0
scoreboard players set durationSlot21 speedDebuffs 0
scoreboard players set durationSlot17-21 fear 0
scoreboard players set durationSlot18-21 fear 0
scoreboard players set durationSlot19-21 fear 0
scoreboard players set durationSlot20-21 fear 0
scoreboard players set durationSlot21 mark 0
scoreboard players set slot21Disease disease 0
scoreboard players set slot21bleeding booleaneffects 0
scoreboard players set durationSlot21 mark 0
execute if score curse slot21 matches 2 if score slot21 hp > maxhp slot21 run scoreboard players operation slot21 hp = maxhp slot21

execute if score curse slot21 matches 2 run scoreboard players operation abilityDmg saves = zeebo abilityStats
execute if score curse slot21 matches 2 run scoreboard players operation abilityDmg saves *= curseStacks slot21
execute if score curse slot21 matches 2 run scoreboard players operation abilityDmgslot21 saves = abilityDmg saves
execute if score curse slot21 matches 2 run scoreboard players operation abilityDmgslot22 saves = abilityDmg saves
execute if score curse slot21 matches 2 run scoreboard players operation abilityDmgslot23 saves = abilityDmg saves
execute if score curse slot21 matches 2 run scoreboard players operation abilityDmgslot24 saves = abilityDmg saves
execute if score curse slot21 matches 2 run execute if score ward slot21 matches 0 run scoreboard players operation shield slot21 -= abilityDmgslot21 saves
execute if score curse slot21 matches 2 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= abilityDmgslot22 saves
execute if score curse slot21 matches 2 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmgslot23 saves
execute if score curse slot21 matches 2 run execute if score ward slot24 matches 0 run scoreboard players operation shield slot24 -= abilityDmgslot24 saves
execute if score curse slot21 matches 2 run execute if score ward slot21 matches 0 if score shield slot21 matches ..0 run scoreboard players operation slot21 hp += shield slot21
execute if score curse slot21 matches 2 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score curse slot21 matches 2 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score curse slot21 matches 2 run execute if score ward slot24 matches 0 if score shield slot24 matches ..0 run scoreboard players operation slot24 hp += shield slot24
execute if score curse slot21 matches 2 run execute if score shield slot21 matches ..0 run scoreboard players set shield slot21 0
execute if score curse slot21 matches 2 run execute if score shield slot22 matches ..0 run scoreboard players set shield slot22 0
execute if score curse slot21 matches 2 run execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score curse slot21 matches 2 run execute if score shield slot24 matches ..0 run scoreboard players set shield slot24 0
execute if score curse slot21 matches 2 run execute if score ward slot21 matches 1.. run function chthree:wardslot21
execute if score curse slot21 matches 2 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score curse slot21 matches 2 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score curse slot21 matches 2 run execute if score ward slot24 matches 1.. run function chthree:wardslot24
execute if score curse slot21 matches 2 run execute at @e[name=slot21] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot21] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot21] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot21] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot22] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot22] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot22] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot22] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot23] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot23] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot23] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot23] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot24] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot24] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot24] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run execute at @e[name=slot24] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot21 matches 2 run scoreboard players set curse slot21 0


execute at @e[name=slot21] run particle minecraft:end_rod ~ ~1 ~ 0.9 0.9 0.9 0.1 100
