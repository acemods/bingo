#setup objectives
scoreboard objectives remove seed
scoreboard objectives remove bingo_slot_id
scoreboard objectives remove bingo_weight
scoreboard objectives remove bingo_category_1
scoreboard objectives remove bingo_category_2
scoreboard objectives remove bingo_tmp
#DONT reset stats
#scoreboard objectives remove bingo_stats

scoreboard objectives add seed trigger "Trigger for setting the seed value"
scoreboard objectives add bingo_slot_id dummy "Id for the slot this item is currently in"
scoreboard players set $next_id bingo_id 0
scoreboard objectives add bingo_weight dummy "Weight for the rng to pick this item"
scoreboard objectives add bingo_category_1 dummy "First category id of this item"
scoreboard objectives add bingo_category_2 dummy "Optional second category id of this item"
scoreboard objectives add bingo_tmp dummy "Temporary values"
scoreboard objectives add bingo_stats dummy "Minecraft Bingo"
scoreboard objectives setdisplay sidebar bingo_stats

#categories:
# 0: pumpkin
# 1: egg
# 2: sapling
# 3: cocoa
# 4: melon
# 5: shearable
# 6: <empty>
# 7: flint
# 8: fish
# 9: enderslime
#10: gunpowder
#11: sugarrocket
#12: sugarmap
#13: compass
#14: chest_loot
#15: wood (sign, painting, item frame)
#16: diamond
#17: glass_bricks (glass bottle, bricks, flower pot)
#18: village
#19 apple
#20 gold
#21 book
#22 spider
#23 hopper
#24 milk
#25 redstone
#26 ink
#27 bone
#28 cactus green
#29 lapis
#30 blastcauldron
#31 hear of the pillager

# spawn aecs for item registry
kill @e[tag=bingo_item]

## pumpkin & milk & egg
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0001"', Tags: ["bingo_pumpkin_seeds", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_pumpkin_seeds] bingo_category_1 0
scoreboard players set @e[tag=bingo_pumpkin_seeds] bingo_weight 2

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0002"', Tags: ["bingo_pumpkin_pie", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_pumpkin_pie] bingo_category_1 0
scoreboard players set @e[tag=bingo_pumpkin_pie] bingo_category_2 1
scoreboard players set @e[tag=bingo_pumpkin_pie] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0003"', Tags: ["bingo_egg", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_egg] bingo_category_1 1
scoreboard players set @e[tag=bingo_egg] bingo_weight 2

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0052"', Tags: ["bingo_milk_bucket", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_milk_bucket] bingo_category_1 24
scoreboard players set @e[tag=bingo_milk_bucket] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0004"', Tags: ["bingo_cake", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_cake] bingo_category_1 1
scoreboard players set @e[tag=bingo_cake] bingo_category_2 24
scoreboard players set @e[tag=bingo_cake] bingo_weight 1

## sapling
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0005"', Tags: ["bingo_acacia_sapling", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_acacia_sapling] bingo_category_1 2
scoreboard players set @e[tag=bingo_acacia_sapling] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0006"', Tags: ["bingo_spruce_sapling", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_spruce_sapling] bingo_category_1 2
scoreboard players set @e[tag=bingo_spruce_sapling] bingo_weight 1

## cocoa
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0007"', Tags: ["bingo_cocoa_beans", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_cocoa_beans] bingo_category_1 3
scoreboard players set @e[tag=bingo_cocoa_beans] bingo_weight 2

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0008"', Tags: ["bingo_cookie", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_cookie] bingo_category_1 3
scoreboard players set @e[tag=bingo_cookie] bingo_weight 1

## melon
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0009"', Tags: ["bingo_melon_slice", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_melon_slice] bingo_category_1 4
scoreboard players set @e[tag=bingo_melon_slice] bingo_weight 2

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u000a"', Tags: ["bingo_glistering_melon_slice", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_glistering_melon_slice] bingo_category_1 4
scoreboard players set @e[tag=bingo_glistering_melon_slice] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0047"', Tags: ["bingo_melon_block", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_melon_block] bingo_category_1 4
scoreboard players set @e[tag=bingo_melon_block] bingo_weight 1

## shearable
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u000b"', Tags: ["bingo_dead_bush", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_dead_bush] bingo_category_1 5
scoreboard players set @e[tag=bingo_dead_bush] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u000c"', Tags: ["bingo_fern", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_fern] bingo_category_1 5
scoreboard players set @e[tag=bingo_fern] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u000d"', Tags: ["bingo_vines", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_vines] bingo_category_1 5
scoreboard players set @e[tag=bingo_vines] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0045"', Tags: ["bingo_seagrass", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_seagrass] bingo_category_1 5
scoreboard players set @e[tag=bingo_seagrass] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0048"', Tags: ["bingo_mossy_stone_bricks", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_mossy_stone_bricks] bingo_category_1 5
scoreboard players set @e[tag=bingo_mossy_stone_bricks] bingo_weight 1

## rails (single)
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u000e"', Tags: ["bingo_rails", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_rails] bingo_weight 1

## flint
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0010"', Tags: ["bingo_flint", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_flint] bingo_category_1 7
scoreboard players set @e[tag=bingo_flint] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0011"', Tags: ["bingo_flint_and_steel", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_flint_and_steel] bingo_category_1 7
scoreboard players set @e[tag=bingo_flint_and_steel] bingo_weight 1

## fish
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0012"', Tags: ["bingo_cod", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_cod] bingo_category_1 8
scoreboard players set @e[tag=bingo_cod] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0046"', Tags: ["bingo_cod_bucket", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_cod_bucket] bingo_category_1 8
scoreboard players set @e[tag=bingo_cod_bucket] bingo_weight 1

## enderslime
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0013"', Tags: ["bingo_ender_pearl", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_ender_pearl] bingo_category_1 9
scoreboard players set @e[tag=bingo_ender_pearl] bingo_weight 2

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0014"', Tags: ["bingo_slime_ball", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_slime_ball] bingo_category_1 9
scoreboard players set @e[tag=bingo_slime_ball] bingo_weight 1

## gunpowder-related & compass/sugar-related
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0015"', Tags: ["bingo_fireworks_rocket", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_fireworks_rocket] bingo_category_1 10
scoreboard players set @e[tag=bingo_fireworks_rocket] bingo_category_2 11
scoreboard players set @e[tag=bingo_fireworks_rocket] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0032"', Tags: ["bingo_gunpowder", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_gunpowder] bingo_category_1 10
scoreboard players set @e[tag=bingo_gunpowder] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0033"', Tags: ["bingo_tnt_minecart", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_tnt_minecart] bingo_category_1 10
scoreboard players set @e[tag=bingo_tnt_minecart] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0016"', Tags: ["bingo_sugar", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_sugar] bingo_category_1 11
scoreboard players set @e[tag=bingo_sugar] bingo_category_2 12
scoreboard players set @e[tag=bingo_sugar] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u002b"', Tags: ["bingo_compass", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_compass] bingo_category_1 13
scoreboard players set @e[tag=bingo_compass] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u002c"', Tags: ["bingo_map", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_map] bingo_category_1 12
scoreboard players set @e[tag=bingo_map] bingo_category_2 13
scoreboard players set @e[tag=bingo_map] bingo_weight 1

## blastcauldron
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0017"', Tags: ["bingo_cauldron", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_cauldron] bingo_category_1 30
scoreboard players set @e[tag=bingo_cauldron] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u004e"', Tags: ["bingo_blast_furnance", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_blast_furnance] bingo_category_1 30
scoreboard players set @e[tag=bingo_blast_furnance] bingo_weight 1

## chest loot & village
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0018"', Tags: ["bingo_saddle", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_saddle] bingo_category_1 14
scoreboard players set @e[tag=bingo_saddle] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0019"', Tags: ["bingo_nametag", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_nametag] bingo_category_1 14
scoreboard players set @e[tag=bingo_nametag] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u002f"', Tags: ["bingo_enchanted_book", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_enchanted_book] bingo_category_1 14
scoreboard players set @e[tag=bingo_enchanted_book] bingo_weight 2

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0024"', Tags: ["bingo_beetroot_stew", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_beetroot_stew] bingo_category_1 14
scoreboard players set @e[tag=bingo_beetroot_stew] bingo_category_1 18
scoreboard players set @e[tag=bingo_beetroot_stew] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u001c"', Tags: ["bingo_emerald", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_emerald] bingo_category_1 18
scoreboard players set @e[tag=bingo_emerald] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u004a"', Tags: ["bingo_bell", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_bell] bingo_category_1 18
scoreboard players set @e[tag=bingo_bell] bingo_weight 1

## wood
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u001a"', Tags: ["bingo_painting", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_painting] bingo_category_1 15
scoreboard players set @e[tag=bingo_painting] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u001b"', Tags: ["bingo_item_frame", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_item_frame] bingo_category_1 15
scoreboard players set @e[tag=bingo_item_frame] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0040"', Tags: ["bingo_oak_sign", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_oak_sign] bingo_category_1 15
scoreboard players set @e[tag=bingo_oak_sign] bingo_weight 1

## diamond
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u001d"', Tags: ["bingo_diamond", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_diamond] bingo_category_1 16
scoreboard players set @e[tag=bingo_diamond] bingo_weight 2

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u001e"', Tags: ["bingo_diamond_hoe", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_diamond_hoe] bingo_category_1 16
scoreboard players set @e[tag=bingo_diamond_hoe] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u001f"', Tags: ["bingo_diamond_axe", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_diamond_axe] bingo_category_1 16
scoreboard players set @e[tag=bingo_diamond_axe] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0044"', Tags: ["bingo_obsidian", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_obsidian] bingo_category_1 16
scoreboard players set @e[tag=bingo_obsidian] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u004b"', Tags: ["bingo_jukebox", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_jukebox] bingo_category_1 16
scoreboard players set @e[tag=bingo_jukebox] bingo_weight 2

## glass bricks
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0021"', Tags: ["bingo_flower_pot", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_flower_pot] bingo_category_1 17
scoreboard players set @e[tag=bingo_flower_pot] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0022"', Tags: ["bingo_brick", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_brick] bingo_category_1 17
scoreboard players set @e[tag=bingo_brick] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0041"', Tags: ["bingo_glass_bottle", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_glass_bottle] bingo_category_1 17
scoreboard players set @e[tag=bingo_glass_bottle] bingo_weight 1

## mushroom stew (single)
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0023"', Tags: ["bingo_mushroom_stew", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_mushroom_stew] bingo_category_1 18
scoreboard players set @e[tag=bingo_mushroom_stew] bingo_weight 2

## apple
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0025"', Tags: ["bingo_apple", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_apple] bingo_category_1 19
scoreboard players set @e[tag=bingo_apple] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0026"', Tags: ["bingo_golden_apple", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_golden_apple] bingo_category_1 19
scoreboard players set @e[tag=bingo_golden_apple] bingo_weight 1

## gold
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0027"', Tags: ["bingo_golden_shovel", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_golden_shovel] bingo_category_1 20
scoreboard players set @e[tag=bingo_golden_shovel] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0028"', Tags: ["bingo_golden_sword", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_golden_sword] bingo_category_1 20
scoreboard players set @e[tag=bingo_golden_sword] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u000f"', Tags: ["bingo_powered_rails", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_powered_rails] bingo_category_1 20
scoreboard players set @e[tag=bingo_powered_rails] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0029"', Tags: ["bingo_clock", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_clock] bingo_category_1 20
scoreboard players set @e[tag=bingo_clock] bingo_weight 1

## redstone
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u002a"', Tags: ["bingo_repeater", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_repeater] bingo_category_1 25
scoreboard players set @e[tag=bingo_repeater] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0042"', Tags: ["bingo_redstone_block", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_redstone_block] bingo_category_1 25
scoreboard players set @e[tag=bingo_redstone_block] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0051"', Tags: ["bingo_target", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_target] bingo_category_1 25
scoreboard players set @e[tag=bingo_target] bingo_weight 1

## book & dyes
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u002d"', Tags: ["bingo_book", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_book] bingo_category_1 21
scoreboard players set @e[tag=bingo_book] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0043"', Tags: ["bingo_bookshelf", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_bookshelf] bingo_category_1 21
scoreboard players set @e[tag=bingo_bookshelf] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0039"', Tags: ["bingo_ink_sac", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_ink_sac] bingo_category_1 26
scoreboard players set @e[tag=bingo_ink_sac] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u002e"', Tags: ["bingo_writeable_book", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_writeable_book] bingo_category_1 21
scoreboard players set @e[tag=bingo_writeable_book] bingo_category_2 26
scoreboard players set @e[tag=bingo_writeable_book] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0038"', Tags: ["bingo_bone", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_bone] bingo_category_1 27
scoreboard players set @e[tag=bingo_bone] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u004d"', Tags: ["bingo_bone_block", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_bone_block] bingo_category_1 27
scoreboard players set @e[tag=bingo_bone_block] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u003a"', Tags: ["bingo_gray_dye", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_gray_dye] bingo_category_1 26
scoreboard players set @e[tag=bingo_gray_dye] bingo_category_2 27
scoreboard players set @e[tag=bingo_gray_dye] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u003b"', Tags: ["bingo_cactus_green", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_cactus_green] bingo_category_1 28
scoreboard players set @e[tag=bingo_cactus_green] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u003c"', Tags: ["bingo_lime_green", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_lime_green] bingo_category_1 27
scoreboard players set @e[tag=bingo_lime_green] bingo_category_2 28
scoreboard players set @e[tag=bingo_lime_green] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u003d"', Tags: ["bingo_lapis_lazuli", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_lapis_lazuli] bingo_category_1 29
scoreboard players set @e[tag=bingo_lapis_lazuli] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u003f"', Tags: ["bingo_purple_dye", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_purple_dye] bingo_category_1 29
scoreboard players set @e[tag=bingo_purple_dye] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u003e"', Tags: ["bingo_cyan_dye", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_cyan_dye] bingo_category_1 28
scoreboard players set @e[tag=bingo_cyan_dye] bingo_category_2 29
scoreboard players set @e[tag=bingo_cyan_dye] bingo_weight 1

## spider
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0030"', Tags: ["bingo_spider_eye", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_spider_eye] bingo_category_1 22
scoreboard players set @e[tag=bingo_spider_eye] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0031"', Tags: ["bingo_fermented_spider_eye", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_fermented_spider_eye] bingo_category_1 22
scoreboard players set @e[tag=bingo_fermented_spider_eye] bingo_weight 1

## hopper
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0034"', Tags: ["bingo_hopper", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_hopper] bingo_category_1 23
scoreboard players set @e[tag=bingo_hopper] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0035"', Tags: ["bingo_hopper_minecart", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_hopper_minecart] bingo_category_1 23
scoreboard players set @e[tag=bingo_hopper_minecart] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0037"', Tags: ["bingo_chest_minecart", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_chest_minecart] bingo_category_1 23
scoreboard players set @e[tag=bingo_chest_minecart] bingo_weight 1

## furnance minecart (single)
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0036"', Tags: ["bingo_furnance_minecart", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_furnance_minecart] bingo_weight 1

## heart of the pillager
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0049"', Tags: ["bingo_heart_of_the_sea", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_heart_of_the_sea] bingo_category_1 31
scoreboard players set @e[tag=bingo_heart_of_the_sea] bingo_weight 1

summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u004f"', Tags: ["bingo_omnious_banner", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_omnious_banner] bingo_category_1 31
scoreboard players set @e[tag=bingo_omnious_banner] bingo_weight 1

## Magma Block (single)
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u004c"', Tags: ["bingo_magma_block", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_magma_block] bingo_category_1 31
scoreboard players set @e[tag=bingo_magma_block] bingo_weight 1

## Bed (single)
summon minecraft:area_effect_cloud ~ 0 ~ {CustomName: '"\\u0050"', Tags: ["bingo_bed", "bingo_item"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
scoreboard players set @e[tag=bingo_bed] bingo_weight 1