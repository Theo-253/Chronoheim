scoreboard players set durationSlot10 burn 0
scoreboard players set durationSlot10 poison 0
scoreboard players set debuffDurationSlot10 atkmodifiers 0
scoreboard players set durationSlot10 speedDebuffs 0
scoreboard players set durationSlot13-10 fear 0
scoreboard players set durationSlot14-10 fear 0
scoreboard players set durationSlot15-10 fear 0
scoreboard players set durationSlot16-10 fear 0
scoreboard players set durationSlot10 mark 0
scoreboard players set slot10Disease disease 0
scoreboard players set slot10bleeding booleaneffects 0
scoreboard players set durationSlot10 mark 0
execute if score curse slot10 matches 2 if score slot10 hp > maxhp slot10 run scoreboard players operation slot10 hp = maxhp slot10

execute if score curse slot10 matches 2 run scoreboard players operation abilityDmg saves = zeebo abilityStats
execute if score curse slot10 matches 2 run scoreboard players operation abilityDmg saves *= curseStacks slot10
execute if score curse slot10 matches 2 run scoreboard players operation abilityDmgslot9 saves = abilityDmg saves
execute if score curse slot10 matches 2 run scoreboard players operation abilityDmgslot10 saves = abilityDmg saves
execute if score curse slot10 matches 2 run scoreboard players operation abilityDmgslot11 saves = abilityDmg saves
execute if score curse slot10 matches 2 run scoreboard players operation abilityDmgslot12 saves = abilityDmg saves
execute if score curse slot10 matches 2 run execute if score ward slot9 matches 0 run scoreboard players operation shield slot9 -= abilityDmgslot9 saves
execute if score curse slot10 matches 2 run execute if score ward slot10 matches 0 run scoreboard players operation shield slot10 -= abilityDmgslot10 saves
execute if score curse slot10 matches 2 run execute if score ward slot11 matches 0 run scoreboard players operation shield slot11 -= abilityDmgslot11 saves
execute if score curse slot10 matches 2 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmgslot12 saves
execute if score curse slot10 matches 2 run execute if score ward slot9 matches 0 if score shield slot9 matches ..0 run scoreboard players operation slot9 hp += shield slot9
execute if score curse slot10 matches 2 run execute if score ward slot10 matches 0 if score shield slot10 matches ..0 run scoreboard players operation slot10 hp += shield slot10
execute if score curse slot10 matches 2 run execute if score ward slot11 matches 0 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11
execute if score curse slot10 matches 2 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score curse slot10 matches 2 run execute if score shield slot9 matches ..0 run scoreboard players set shield slot9 0
execute if score curse slot10 matches 2 run execute if score shield slot10 matches ..0 run scoreboard players set shield slot10 0
execute if score curse slot10 matches 2 run execute if score shield slot11 matches ..0 run scoreboard players set shield slot11 0
execute if score curse slot10 matches 2 run execute if score shield slot12 matches ..0 run scoreboard players set shield slot12 0
execute if score curse slot10 matches 2 run execute if score ward slot9 matches 1.. run function chtoo:wardslot9
execute if score curse slot10 matches 2 run execute if score ward slot10 matches 1.. run function chtoo:wardslot10
execute if score curse slot10 matches 2 run execute if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score curse slot10 matches 2 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score curse slot10 matches 2 run execute at @e[name=slot9] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot9] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot9] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot9] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot10] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot10] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot10] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot10] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot11] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot11] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot11] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot11] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot12] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot12] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot12] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run execute at @e[name=slot12] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;10224278],fade_colors:[I;16711680,16762120]}]}}}}
execute if score curse slot10 matches 2 run scoreboard players set curse slot10 0

execute at @e[name=slot10] run particle minecraft:end_rod ~ ~1 ~ 0.9 0.9 0.9 0.1 100
