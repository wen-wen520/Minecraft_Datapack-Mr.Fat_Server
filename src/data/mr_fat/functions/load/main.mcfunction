# load
scoreboard objectives remove w_w.daytime
scoreboard objectives remove w_w.mrfat.datapack
scoreboard objectives add w_w.mrfat.datapack dummy "§7玩家是否加载过此数据包"
scoreboard objectives add w_w.daytime dummy "§7一天的时间"
# initialize
schedule function mr_fat:load/tracker 2s replace
schedule function mr_fat:utilities/auto_sleep/tracker 4s replace