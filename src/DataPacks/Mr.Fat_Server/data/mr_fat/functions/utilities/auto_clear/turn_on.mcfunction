# tips
tellraw @a "§b服务器 §7> §f[§b自动清理§f] 功能已经 §a开启"
execute as @a at @s run playsound block.bell.use master @s ~ ~ ~ 1 1
# system
schedule function mr_fat:utilities/auto_clear/tracker 1s
scoreboard players set auto_clear w_w.mrfat.config 1