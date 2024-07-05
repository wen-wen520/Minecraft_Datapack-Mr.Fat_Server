# tips
tellraw @a "§b服务器 §7> §f[§b自动睡觉§f] 功能已经 §c关闭"
execute as @a at @s run playsound block.bell.use master @s ~ ~ ~ 1 1
# system
schedule clear mr_fat:utilities/auto_sleep/tracker
scoreboard players set auto_sleep w_w.mrfat.config 0