# load recipes
advancement grant @s only mr_fat:recipes/recipe_book_loader
# tips
tellraw @s ["§b服务器 §7>> §f [§d§lDatapck For Mr fat Server§r§f] 加载成功\n§b服务器 §7>> §f扩展部分原版合成配方及特性\n§b服务器 §7>> §f由 §d文文 §f& §d海燕 §f制作\n\n§7Data Pack Version §f: §e3.0.2\n§7For Minecraft §f: §a1.20.4\n§7Update §f: 05/12/2024\n",{"text":"§f[§b§n单击查看本据包开源代码§r§f]\n\n","clickEvent": {"action":"open_url","value": "https://github.com/wen-wen520/Minecraft_Datapack-Mr.Fat_Server"}}]
# system
give @s clock{display:{Name:'"§e§l菜单"',Lore:['""','"§7右键可以打开"']}}
scoreboard players set @s w_w.mrfat.datapack 1