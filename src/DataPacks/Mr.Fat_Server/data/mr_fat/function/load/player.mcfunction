# load recipes
advancement grant @s only mr_fat:recipes/recipe_book_loader
# tips
tellraw @s ["§b服务器 §7>> §f [§d§lDatapck For Mr fat Server§r§f] 加载成功\n§b服务器 §7>> §f扩展部分原版合成配方及特性\n§b服务器 §7>> §f由 §d文文 §f& §d海燕 §f制作\n\n§7Data Pack Version §f: §e4.0.0  Alpha 2\n§7For Minecraft §f: §a1.21\n§7Update §f: 07/14/2024\n",{"text":"§f[§b§n单击查看本据包开源代码§r§f]\n\n","clickEvent": {"action":"open_url","value": "https://github.com/wen-wen520/Minecraft_Datapack-Mr.Fat_Server"}}]
# system
#  load datapack
scoreboard players set @s w_w.mrfat.datapack 1
#  load menu
execute as @s at @s unless entity @s[scores={w_w.mrfat.menu=1}] run give @s clock[minecraft:custom_name='"§e§l菜单§r §7v3"',minecraft:lore=['""','"§a右键可以打开菜单"','"§a或许还可以防身…"','""','"§f由 §dwen_wen520 §f提供"','""'],minecraft:attribute_modifiers=[{"id":"base_attack_damage","amount":1,"operation":"add_value","slot":"hand","type":"generic.attack_damage"}],minecraft:enchantments={"mending":3,"knockback":3},food={nutrition:2,saturation:2,can_always_eat:true,using_converts_to:{id:clock,components:{lore:['""','"放入工作台重新合成未食用的菜单"']}}}] 1
scoreboard players set @s w_w.mrfat.menu 1