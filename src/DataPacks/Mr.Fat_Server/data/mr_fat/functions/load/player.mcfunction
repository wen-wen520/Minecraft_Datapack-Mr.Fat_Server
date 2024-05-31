# load recipes
advancement grant @s only mr_fat:recipes/recipe_book_loader
# tips
tellraw @s ["§b服务器 §7>> §f [§d§lDatapck For Mr fat Server§r§f] 加载成功\n§b服务器 §7>> §f扩展部分原版合成配方及特性\n§b服务器 §7>> §f由 §d文文 §f& §d海燕 §f制作\n\n§7Data Pack Version §f: §e3.1.0\n§7For Minecraft §f: §a1.20.4\n§7Update §f: 06/01/2024\n",{"text":"§f[§b§n单击查看本据包开源代码§r§f]\n\n","clickEvent": {"action":"open_url","value": "https://github.com/wen-wen520/Minecraft_Datapack-Mr.Fat_Server"}}]
# system
#  load datapack
scoreboard players set @s w_w.mrfat.datapack 1
#  load menu
execute as @s at @s unless entity @s[scores={w_w.mrfat.menu=1}] run give @s clock{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,Slot:"mainhand",UUID:[I;0,1,2,3]}],Enchantments:[{id:"mending",lvl:3},{id:"knockback",lvl:3}],display:{Name:'"§e§l菜单§r §7v2"',Lore:['""','"§a右键可以打开菜单"','"§a或许还可以防身…"','""','"§f由 §dwen_wen520 §f提供"','""']}}
scoreboard players set @s w_w.mrfat.menu 1
