scoreboard players set durationSlot16 burn 0
scoreboard players set durationSlot16 poison 0
scoreboard players set debuffDurationSlot16 atkmodifiers 0
scoreboard players set durationSlot16 speedDebuffs 0
scoreboard players set durationSlot9-16 fear 0
scoreboard players set durationSlot10-16 fear 0
scoreboard players set durationSlot11-16 fear 0
scoreboard players set durationSlot12-16 fear 0
scoreboard players set durationSlot16 mark 0
scoreboard players set slot16Disease disease 0
scoreboard players set slot16bleeding booleaneffects 0
scoreboard players set durationSlot16 mark 0
execute if score curse slot16 matches 2 if score slot16 hp > maxhp slot16 run scoreboard players operation slot16 hp = maxhp slot16

execute if score curse slot16 matches 2 run scoreboard players operation abilityDmg saves = zeebo abilityStats
execute if score curse slot16 matches 2 run scoreboard players operation abilityDmg saves *= curseStacks slot16
execute if score curse slot16 matches 2 run scoreboard players operation abilityDmgslot13 saves = abilityDmg saves
execute if score curse slot16 matches 2 run scoreboard players operation abilityDmgslot14 saves = abilityDmg saves
execute if score curse slot16 matches 2 run scoreboard players operation abilityDmgslot15 saves = abilityDmg saves
execute if score curse slot16 matches 2 run scoreboard players operation abilityDmgslot16 saves = abilityDmg saves
execute if score curse slot16 matches 2 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= abilityDmgslot13 saves
execute if score curse slot16 matches 2 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= abilityDmgslot14 saves
execute if score curse slot16 matches 2 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmgslot15 saves
execute if score curse slot16 matches 2 run execute if score ward slot16 matches 0 run scoreboard players operation shield slot16 -= abilityDmgslot16 saves
execute if score curse slot16 matches 2 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score curse slot16 matches 2 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score curse slot16 matches 2 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score curse slot16 matches 2 run execute if score ward slot16 matches 0 if score shield slot16 matches ..0 run scoreboard players operation slot16 hp += shield slot16
execute if score curse slot16 matches 2 run execute if score shield slot13 matches ..0 run scoreboard players set shield slot13 0
execute if score curse slot16 matches 2 run execute if score shield slot14 matches ..0 run scoreboard players set shield slot14 0
execute if score curse slot16 matches 2 run execute if score shield slot15 matches ..0 run scoreboard players set shield slot15 0
execute if score curse slot16 matches 2 run execute if score shield slot16 matches ..0 run scoreboard players set shield slot16 0
execute if score curse slot16 matches 2 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score curse slot16 matches 2 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score curse slot16 matches 2 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score curse slot16 matches 2 run execute if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score curse slot16 matches 2 run execute at @e[name=slot13] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot13] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot13] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot13] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot14] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot14] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot14] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot14] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot15] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot15] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot15] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot15] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot16] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot16] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot16] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run execute at @e[name=slot16] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot16 matches 2 run scoreboard players set curse slot16 0

execute at @e[name=slot16] run particle minecraft:end_rod ~ ~1 ~ 0.9 0.9 0.9 0.1 100
