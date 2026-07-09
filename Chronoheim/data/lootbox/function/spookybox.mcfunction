execute as @a if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:luck":{amplifier:{min:3,max:3}}}}} run tag @s add spookybox
scoreboard objectives setdisplay sidebar.team.aqua Shards
execute at @a[tag=spookybox] run execute store result score spookydrop lootboxes run random value 1..100
execute if score spookydrop lootboxes matches 1..50 run execute store result score spellrarityspookydrop lootboxes run random value 1..10
execute if score spookydrop lootboxes matches 50..99 run execute store result score herorarityspookydrop lootboxes run random value 1..10
execute if score spookydrop lootboxes matches 100 run execute store result score mapspookydrop lootboxes run scoreboard players set mapspookydrop lootboxes 1
execute if score spellrarityspookydrop lootboxes matches 1..4 run execute store result score spookyuncommonspell lootboxes run random value 1..3
execute if score spellrarityspookydrop lootboxes matches 5..7 run execute store result score spookyrarespell lootboxes run random value 1..3
execute if score spellrarityspookydrop lootboxes matches 8..9 run execute store result score spookyepicspell lootboxes run random value 1..2
execute if score spellrarityspookydrop lootboxes matches 10 run execute store result score spookylegendaryspell lootboxes run random value 1..2
execute if score herorarityspookydrop lootboxes matches 1..4 run execute store result score spookyuncommonhero lootboxes run random value 1..3
execute if score herorarityspookydrop lootboxes matches 5..7 run execute store result score spookyrarehero lootboxes run random value 1..3
execute if score herorarityspookydrop lootboxes matches 8..9 run execute store result score spookyepichero lootboxes run random value 1..2
execute if score herorarityspookydrop lootboxes matches 10 run execute store result score spookylegendaryhero lootboxes run random value 1..2

#Map Drops
execute if score mapspookydrop lootboxes matches 1 run scoreboard players add @p[tag=spookybox,tag=spookMountainO] Shards 1600
execute if score mapspookydrop lootboxes matches 1 run execute at @p[tag=spookybox,tag=!colosseumO] run say @p[tag=spookybox,tag=!spookMountainO] unlocked the Spook Mountain Map!
execute if score mapspookydrop lootboxes matches 1 run tag @p[tag=spookybox,tag=!spookMountainO] add spookMountainO


#Uncommon Spell Drops
execute if score spookyuncommonspell lootboxes matches 1 run scoreboard players add @p[tag=spookybox,tag=!slimedO] Shards 50
execute if score spookyuncommonspell lootboxes matches 1 run execute at @p[tag=spookybox,tag=!slimedO] run say @p[tag=spookybox,tag=!slimedO] unlocked Slimed!
execute if score spookyuncommonspell lootboxes matches 1 run tag @p[tag=spookybox,tag=!slimedO] add slimedO

execute if score spookyuncommonspell lootboxes matches 2 run scoreboard players add @p[tag=spookybox,tag=cannibalizeO] Shards 50
execute if score spookyuncommonspell lootboxes matches 2 run execute at @p[tag=spookybox,tag=!cannibalizeO] run say @p[tag=spookybox,tag=!cannibalizeO] unlocked Cannibalize
execute if score spookyuncommonspell lootboxes matches 2 run tag @p[tag=spookybox,tag=!cannibalizeO] add cannibalizeO

execute if score spookyuncommonspell lootboxes matches 3 run scoreboard players add @p[tag=spookybox,tag=vampiremarkO] Shards 50
execute if score spookyuncommonspell lootboxes matches 3 run execute at @p[tag=spookybox,tag=!vampiremarkO] run say @p[tag=spookybox,tag=!vampiremarkO] unlocked Vampire Mark!
execute if score spookyuncommonspell lootboxes matches 3 run tag @p[tag=spookybox,tag=!vampiremarkO] add vampiremarkO


#Rare Spell Drops
execute if score spookyrarespell lootboxes matches 1 run scoreboard players add @p[tag=spookybox,tag=butcheringO] Shards 100
execute if score spookyrarespell lootboxes matches 1 run execute at @p[tag=spookybox,tag=!butcheringO] run say @p[tag=spookybox,tag=!butcheringO] unlocked Butchering!
execute if score spookyrarespell lootboxes matches 1 run tag @p[tag=spookybox,tag=!butcheringO] add butcheringO

execute if score spookyrarespell lootboxes matches 2 run scoreboard players add @p[tag=spookybox,tag=willowispO] Shards 100
execute if score spookyrarespell lootboxes matches 2 run execute at @p[tag=spookybox,tag=!willowispO] run say @p[tag=spookybox,tag=!willowispO] unlocked Will O' Wisp!
execute if score spookyrarespell lootboxes matches 2 run tag @p[tag=spookybox,tag=!willowispO] add willowispO

execute if score spookyrarespell lootboxes matches 3 run scoreboard players add @p[tag=spookybox,tag=spiderwardO] Shards 100
execute if score spookyrarespell lootboxes matches 3 run execute at @p[tag=spookybox,tag=!spiderwardO] run say @p[tag=spookybox,tag=!spiderwardO] unlocked Spider Ward!
execute if score spookyrarespell lootboxes matches 3 run tag @p[tag=spookybox,tag=!spiderwardO] add spiderwardO


#Epic Spell Drops
execute if score spookyepicspell lootboxes matches 1 run scoreboard players add @p[tag=spookybox,tag=raisedeadO] Shards 200
execute if score spookyepicspell lootboxes matches 1 run execute at @p[tag=spookybox,tag=!raisedeadO] run say @p[tag=spookybox,tag=!raisedeadO] unlocked Raise Dead!
execute if score spookyepicspell lootboxes matches 1 run tag @p[tag=spookybox,tag=!raisedeadO] add raisedeadO

execute if score spookyepicspell lootboxes matches 2 run scoreboard players add @p[tag=spookybox,tag=darkritualO] Shards 200
execute if score spookyepicspell lootboxes matches 2 run execute at @p[tag=spookybox,tag=!darkritualO] run say @p[tag=spookybox,tag=!darkritualO] unlocked Dark Ritual!
execute if score spookyepicspell lootboxes matches 2 run tag @p[tag=spookybox,tag=!darkritualO] add darkritualO

#Legendary Spell Drops
execute if score spookylegendaryspell lootboxes matches 1 run scoreboard players add @p[tag=spookybox,tag=curseofbatsO] Shards 400
execute if score spookylegendaryspell lootboxes matches 1 run execute at @p[tag=spookybox,tag=!curseofbatsO] run say @p[tag=spookybox,tag=!curseofbatsO] unlocked Curse of Bats!
execute if score spookylegendaryspell lootboxes matches 1 run tag @p[tag=spookybox,tag=!curseofbatsO] add curseofbatsO

execute if score spookylegendaryspell lootboxes matches 2 run scoreboard players add @p[tag=spookybox,tag=monkeyspawO] Shards 400
execute if score spookylegendaryspell lootboxes matches 2 run execute at @p[tag=spookybox,tag=!monkeyspawO] run say @p[tag=spookybox,tag=!monkeyspawO] unlocked Monkey's Paw!
execute if score spookylegendaryspell lootboxes matches 2 run tag @p[tag=spookybox,tag=!monkeyspawO] add monkeyspawO

#Uncommon Hero Drops 
execute if score spookyuncommonhero lootboxes matches 1 run scoreboard players add @p[tag=spookybox,tag=frankO] Shards 100
execute if score spookyuncommonhero lootboxes matches 1 run execute at @p[tag=spookybox,tag=!frankO] run say @p[tag=spookybox,tag=!frankO] unlocked Frank!
execute if score spookyuncommonhero lootboxes matches 1 run tag @p[tag=spookybox,tag=!frankO] add frankO

execute if score spookyuncommonhero lootboxes matches 2 run scoreboard players add @p[tag=spookybox,tag=steinO] Shards 100
execute if score spookyuncommonhero lootboxes matches 2 run execute at @p[tag=spookybox,tag=!steinO] run say @p[tag=spookybox,tag=!steinO] unlocked Stein!
execute if score spookyuncommonhero lootboxes matches 2 run tag @p[tag=spookybox,tag=!steinO] add steinO

execute if score spookyuncommonhero lootboxes matches 3 run scoreboard players add @p[tag=spookybox,tag=barleyO] Shards 100
execute if score spookyuncommonhero lootboxes matches 3 run execute at @p[tag=spookybox,tag=!barleyO] run say @p[tag=spookybox,tag=!barleyO] unlocked Barley!
execute if score spookyuncommonhero lootboxes matches 3 run tag @p[tag=spookybox,tag=!barleyO] add barleyO

#Rare Hero Drops
execute if score spookyrarehero lootboxes matches 1 run scoreboard players add @p[tag=spookybox,tag=boogalooO] Shards 200
execute if score spookyrarehero lootboxes matches 1 run execute at @p[tag=spookybox,tag=!boogalooO] run say @p[tag=spookybox,tag=!boogalooO] unlocked Boogaloo!
execute if score spookyrarehero lootboxes matches 1 run tag @p[tag=spookybox,tag=!boogalooO] add boogalooO

execute if score spookyrarehero lootboxes matches 2 run scoreboard players add @p[tag=spookybox,tag=igorO] Shards 200
execute if score spookyrarehero lootboxes matches 2 run execute at @p[tag=spookybox,tag=!igorO] run say @p[tag=spookybox,tag=!igorO] unlocked Igor!
execute if score spookyrarehero lootboxes matches 2 run tag @p[tag=spookybox,tag=!igorO] add igorO

execute if score spookyrarehero lootboxes matches 3 run scoreboard players add @p[tag=spookybox,tag=blinkyO] Shards 200
execute if score spookyrarehero lootboxes matches 3 run execute at @p[tag=spookybox,tag=!blinkyO] run say @p[tag=spookybox,tag=!blinkyO] unlocked Blinky!
execute if score spookyrarehero lootboxes matches 3 run tag @p[tag=spookybox,tag=!blinkyO] add blinkyO

#Epic Hero Drops
execute if score spookyepichero lootboxes matches 1 run scoreboard players add @p[tag=spookybox,tag=zeeboO] Shards 400
execute if score spookyepichero lootboxes matches 1 run execute at @p[tag=spookybox,tag=!zeeboO] run say @p[tag=spookybox,tag=!zeeboO] unlocked Zeebo!
execute if score spookyepichero lootboxes matches 1 run tag @p[tag=spookybox,tag=!zeeboO] add zeeboO

execute if score spookyepichero lootboxes matches 2 run scoreboard players add @p[tag=spookybox,tag=fenrirO] Shards 400
execute if score spookyepichero lootboxes matches 2 run execute at @p[tag=spookybox,tag=!fenrirO] run say @p[tag=spookybox,tag=!fenrirO] unlocked Fenrir!
execute if score spookyepichero lootboxes matches 2 run tag @p[tag=spookybox,tag=!fenrirO] add fenrirO


#Legendary Hero Drops
execute if score spookylegendaryhero lootboxes matches 1 run scoreboard players add @p[tag=spookybox,tag=grendelO] Shards 800
execute if score spookylegendaryhero lootboxes matches 1 run execute at @p[tag=spookybox,tag=!grendelO] run say @p[tag=spookybox,tag=!grendelO] unlocked Grendel!
execute if score spookylegendaryhero lootboxes matches 1 run tag @p[tag=spookybox,tag=!grendelO] add grendelO

execute if score spookylegendaryhero lootboxes matches 2 run scoreboard players add @p[tag=spookybox,tag=anubisO] Shards 800
execute if score spookylegendaryhero lootboxes matches 2 run execute at @p[tag=spookybox,tag=!anubisO] run say @p[tag=spookybox,tag=!anubisO] unlocked Anubis!
execute if score spookylegendaryhero lootboxes matches 2 run tag @p[tag=spookybox,tag=!anubisO] add anubisO

#Score resets
execute if score spookydrop lootboxes matches 1.. run effect clear @a[tag=spookybox] luck
execute if score spookydrop lootboxes matches 1.. run tag @a remove spookybox
scoreboard players set spookydrop lootboxes 0
scoreboard players set spellrarityspookydrop lootboxes 0
scoreboard players set herorarityspookydrop lootboxes 0
scoreboard players set mapspookydrop lootboxes 0
scoreboard players set spookyuncommonspell lootboxes 0
scoreboard players set spookyrarespell lootboxes 0
scoreboard players set spookyepicspell lootboxes 0
scoreboard players set spookylegendaryspell lootboxes 0
scoreboard players set spookyuncommonhero lootboxes 0
scoreboard players set spookyrarehero lootboxes 0
scoreboard players set spookyepichero lootboxes 0
scoreboard players set spookylegendaryhero lootboxes 0

