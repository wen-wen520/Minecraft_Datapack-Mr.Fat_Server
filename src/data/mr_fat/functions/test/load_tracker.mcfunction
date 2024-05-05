# tracker
execute as @a at @s unless score @s w_w.mrfat.datapack matches 1 run function mr_fat:load/player
# repeat
schedule function mr_fat:test/load_tracker 1s replace