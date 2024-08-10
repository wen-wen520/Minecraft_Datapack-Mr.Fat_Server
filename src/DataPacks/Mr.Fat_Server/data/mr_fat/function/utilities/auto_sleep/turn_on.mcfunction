# tips
tellraw @a "§b服务器 §7> §f[§b自动睡觉§f] 功能已经 §a开启"
execute as @a at @s run playsound block.bell.use master @s ~ ~ ~ 1 1
# system
schedule function mr_fat:utilities/auto_sleep/tracker 1t
scoreboard players set jump_to_time w_w.daytime 23458
scoreboard players set auto_sleep w_w.mrfat.config 1