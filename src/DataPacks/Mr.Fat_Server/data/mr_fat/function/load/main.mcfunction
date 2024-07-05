# load
#  common
scoreboard objectives remove w_w.mrfat.datapack
scoreboard objectives add w_w.mrfat.config dummy "§d文文 §7配置信息§r"
scoreboard objectives add w_w.mrfat.menu dummy "§d文文 §7玩家是否获取过菜单§r"
scoreboard objectives add w_w.mrfat.datapack dummy "§d文文 §7玩家是否加载过此数据包§r"
#  auto_sleep
bossbar add w_w:auto_sleep "自动睡觉"
bossbar set w_w:auto_sleep style notched_20
bossbar set w_w:auto_sleep max 20
bossbar set w_w:auto_sleep color blue
bossbar set w_w:auto_sleep visible false
scoreboard objectives add w_w.daytime dummy "§d文文 §7一天的时间"
scoreboard objectives add w_w.auto_sleep trigger
# initialize
schedule function mr_fat:load/tracker 2s replace
execute if score auto_sleep w_w.mrfat.config matches 1 run schedule function mr_fat:utilities/auto_sleep/tracker 4s replace