scoreboard players set durationSlot20 burn 0
scoreboard players set durationSlot20 poison 0
scoreboard players set debuffDurationSlot20 atkmodifiers 0
scoreboard players set durationSlot20 speedDebuffs 0
scoreboard players set durationSlot21-20 fear 0
scoreboard players set durationSlot22-20 fear 0
scoreboard players set durationSlot23-20 fear 0
scoreboard players set durationSlot24-20 fear 0
scoreboard players set durationSlot20 mark 0
scoreboard players set slot20Disease disease 0
scoreboard players set slot20bleeding booleaneffects 0
scoreboard players set durationSlot20 mark 0
execute if score curse slot20 matches 2 if score slot20 hp > maxhp slot20 run scoreboard players operation slot20 hp = maxhp slot20

execute if score curse slot20 matches 2 run scoreboard players operation abilityDmg saves = zeebo abilityStats
execute if score curse slot20 matches 2 run scoreboard players operation abilityDmg saves *= curseStacks slot20
execute if score curse slot20 matches 2 run scoreboard players operation abilityDmgslot17 saves = abilityDmg saves
execute if score curse slot20 matches 2 run scoreboard players operation abilityDmgslot18 saves = abilityDmg saves
execute if score curse slot20 matches 2 run scoreboard players operation abilityDmgslot19 saves = abilityDmg saves
execute if score curse slot20 matches 2 run scoreboard players operation abilityDmgslot20 saves = abilityDmg saves
execute if score curse slot20 matches 2 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= abilityDmgslot17 saves
execute if score curse slot20 matches 2 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmgslot18 saves
execute if score curse slot20 matches 2 run execute if score ward slot19 matches 0 run scoreboard players operation shield slot19 -= abilityDmgslot19 saves
execute if score curse slot20 matches 2 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= abilityDmgslot20 saves
execute if score curse slot20 matches 2 run execute if score ward slot17 matches 0 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score curse slot20 matches 2 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score curse slot20 matches 2 run execute if score ward slot19 matches 0 if score shield slot19 matches ..0 run scoreboard players operation slot19 hp += shield slot19
execute if score curse slot20 matches 2 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score curse slot20 matches 2 run execute if score shield slot17 matches ..0 run scoreboard players set shield slot17 0
execute if score curse slot20 matches 2 run execute if score shield slot18 matches ..0 run scoreboard players set shield slot18 0
execute if score curse slot20 matches 2 run execute if score shield slot19 matches ..0 run scoreboard players set shield slot19 0
execute if score curse slot20 matches 2 run execute if score shield slot20 matches ..0 run scoreboard players set shield slot20 0
execute if score curse slot20 matches 2 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score curse slot20 matches 2 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score curse slot20 matches 2 run execute if score ward slot19 matches 1.. run function chthree:wardslot19
execute if score curse slot20 matches 2 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score curse slot20 matches 2 run execute at @e[name=slot17] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot17] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot17] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot17] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot18] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot18] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot18] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot18] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot19] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot19] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot19] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot19] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot20] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot20] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot20] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run execute at @e[name=slot20] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot20 matches 2 run scoreboard players set curse slot20 0

execute at @e[name=slot20] run particle minecraft:end_rod ~ ~1 ~ 0.9 0.9 0.9 0.1 100
