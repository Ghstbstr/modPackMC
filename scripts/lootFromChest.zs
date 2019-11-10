import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;

//all chests:
//vanilla
val allTables = [
    LootTables.getTable("minecraft:chests/abandoned_mineshaft"),
    LootTables.getTable("minecraft:chests/desert_pyramid"),
    LootTables.getTable("minecraft:chests/end_city_treasure"),
    LootTables.getTable("minecraft:chests/igloo_chest"),
    LootTables.getTable("minecraft:chests/jungle_temple_dispenser"),
    LootTables.getTable("minecraft:chests/jungle_temple"),
    LootTables.getTable("minecraft:chests/nether_bridge"),
    LootTables.getTable("minecraft:chests/simple_dungeon"),
    LootTables.getTable("minecraft:chests/stronghold_corridor"),
    LootTables.getTable("minecraft:chests/stronghold_crossing"),
    LootTables.getTable("minecraft:chests/stronghold_library"),
    LootTables.getTable("minecraft:chests/village_blacksmith"),
    LootTables.getTable("minecraft:chests/woodland_mansion"),
    //LootTables.getTable("immersiveengineering:chests/stronghold_library"),
    //LootTables.getTable("immersiveengineering:chests/village_blacksmith"),
    LootTables.getTable("lostcities:chests/lostcitychest"),
    LootTables.getTable("lostcities:chests/raildungeonchest")
] as loottweaker.vanilla.loot.LootTable[];

val abandoned_mineshaft = LootTables.getTable("minecraft:chests/abandoned_mineshaft");
val desert_pyramid = LootTables.getTable("minecraft:chests/desert_pyramid");
val end_city_treasure = LootTables.getTable("minecraft:chests/end_city_treasure");
val igloo_chest = LootTables.getTable("minecraft:chests/igloo_chest");
val jungle_temple_dispenser = LootTables.getTable("minecraft:chests/jungle_temple_dispenser");
val jungle_temple = LootTables.getTable("minecraft:chests/jungle_temple");
val nether_bridge = LootTables.getTable("minecraft:chests/nether_bridge");
val simple_dungeon = LootTables.getTable("minecraft:chests/simple_dungeon");
val spawn_bonus_chest = LootTables.getTable("minecraft:chests/spawn_bonus_chest");
val stronghold_corridor = LootTables.getTable("minecraft:chests/stronghold_corridor");
val stronghold_crossing = LootTables.getTable("minecraft:chests/stronghold_crossing");
val stronghold_library = LootTables.getTable("minecraft:chests/stronghold_library");
val village_blacksmith = LootTables.getTable("minecraft:chests/village_blacksmith");
val woodland_mansion = LootTables.getTable("minecraft:chests/woodland_mansion");
//immersiveengineering
val immersiveengineering_stronghold_library = LootTables.getTable("immersiveengineering:chests/stronghold_library");
val immersiveengineering_village_blacksmith = LootTables.getTable("immersiveengineering:chests/village_blacksmith");
//lostcity
val lostcity_lostcitychest = LootTables.getTable("lostcities:chests/lostcitychest");
val lostcity_raildungeonchest = LootTables.getTable("lostcities:chests/raildungeonchest");



/*
mods.ltt.LootTable.removePool("minecraft:chests/abandoned_mineshaft", "main");
mods.ltt.LootTable.removePool("minecraft:chests/abandoned_mineshaft", "pool1");
mods.ltt.LootTable.removePool("minecraft:chests/abandoned_mineshaft", "pool2");

mods.ltt.LootTable.removePool("minecraft:chests/desert_pyramid", "main");
mods.ltt.LootTable.removePool("minecraft:chests/desert_pyramid", "pool1");

mods.ltt.LootTable.removePool("minecraft:chests/end_city_treasure", "main");

mods.ltt.LootTable.removePool("minecraft:chests/igloo_chest", "main");
mods.ltt.LootTable.removePool("minecraft:chests/igloo_chest", "pool1");

mods.ltt.LootTable.removePool("minecraft:chests/jungle_temple_dispenser", "main");

mods.ltt.LootTable.removePool("minecraft:chests/jungle_temple", "main");

mods.ltt.LootTable.removePool("minecraft:chests/nether_bridge", "main");

mods.ltt.LootTable.removePool("minecraft:chests/simple_dungeon", "main");
mods.ltt.LootTable.removePool("minecraft:chests/simple_dungeon", "pool1");
mods.ltt.LootTable.removePool("minecraft:chests/simple_dungeon", "pool2");

mods.ltt.LootTable.removePool("minecraft:chests/stronghold_corridor", "main");

mods.ltt.LootTable.removePool("minecraft:chests/stronghold_crossing", "main");

mods.ltt.LootTable.removePool("minecraft:chests/stronghold_library", "main");

mods.ltt.LootTable.removePool("minecraft:chests/village_blacksmith", "main");

mods.ltt.LootTable.removePool("minecraft:chests/woodland_mansion", "main");
mods.ltt.LootTable.removePool("minecraft:chests/woodland_mansion", "pool1");
mods.ltt.LootTable.removePool("minecraft:chests/woodland_mansion", "pool2");

mods.ltt.LootTable.removeModTable("lostcities");
mods.ltt.LootTable.removeModTable("enderio");
mods.ltt.LootTable.removeModTable("botania");
mods.ltt.LootTable.removeModTable("tconstruct");
mods.ltt.LootTable.removeModTable("armorunder");
mods.ltt.LootTable.removeModTable("immersiveengineering");
*/
/*
//remove horseArmor+saddle
desert_pyramid.getPool("main").removeEntry("minecraft:saddle");
desert_pyramid.getPool("main").removeEntry("minecraft:iron_horse_armor");
desert_pyramid.getPool("main").removeEntry("minecraft:golden_horse_armor");
desert_pyramid.getPool("main").removeEntry("minecraft:diamond_horse_armor");

end_city_treasure.getPool("main").removeEntry("minecraft:saddle");
end_city_treasure.getPool("main").removeEntry("minecraft:iron_horse_armor");
end_city_treasure.getPool("main").removeEntry("minecraft:golden_horse_armor");
end_city_treasure.getPool("main").removeEntry("minecraft:diamond_horse_armor");

jungle_temple.getPool("main").removeEntry("minecraft:saddle");
jungle_temple.getPool("main").removeEntry("minecraft:iron_horse_armor");
jungle_temple.getPool("main").removeEntry("minecraft:golden_horse_armor");
jungle_temple.getPool("main").removeEntry("minecraft:diamond_horse_armor");

nether_bridge.getPool("main").removeEntry("minecraft:saddle");
nether_bridge.getPool("main").removeEntry("minecraft:iron_horse_armor");
nether_bridge.getPool("main").removeEntry("minecraft:golden_horse_armor");
nether_bridge.getPool("main").removeEntry("minecraft:diamond_horse_armor");

simple_dungeon.getPool("main").removeEntry("minecraft:saddle");
simple_dungeon.getPool("main").removeEntry("minecraft:iron_horse_armor");
simple_dungeon.getPool("main").removeEntry("minecraft:golden_horse_armor");
simple_dungeon.getPool("main").removeEntry("minecraft:diamond_horse_armor");

stronghold_corridor.getPool("main").removeEntry("minecraft:saddle");
stronghold_corridor.getPool("main").removeEntry("minecraft:iron_horse_armor");
stronghold_corridor.getPool("main").removeEntry("minecraft:golden_horse_armor");
stronghold_corridor.getPool("main").removeEntry("minecraft:diamond_horse_armor");

village_blacksmith.getPool("main").removeEntry("minecraft:saddle");

//remove tools:
//pickaxe
abandoned_mineshaft.getPool("main").removeEntry("minecraft:iron_pickaxe");
end_city_treasure.getPool("main").removeEntry("minecraft:iron_pickaxe");
end_city_treasure.getPool("main").removeEntry("minecraft:diamond_pickaxe");
stronghold_corridor.getPool("main").removeEntry("minecraft:iron_pickaxe");
stronghold_crossing.getPool("main").removeEntry("minecraft:iron_pickaxe");

//shovel
end_city_treasure.getPool("main").removeEntry("minecraft:iron_shovel");
end_city_treasure.getPool("main").removeEntry("minecraft:diamond_shovel");
//sword
end_city_treasure.getPool("main").removeEntry("minecraft:iron_sword");
end_city_treasure.getPool("main").removeEntry("minecraft:diamond_sword");
nether_bridge.getPool("main").removeEntry("minecraft:golden_sword");
stronghold_corridor.getPool("main").removeEntry("minecraft:iron_sword");
*/

for lootTable in allTables{
    lootTable.clear();

    lootTable.addPool("food",5,10,0,0);
    lootTable.getPool("food").addItemEntry(<minecraft:bread>,20);
    lootTable.getPool("food").addItemEntry(<minecraft:potato>,10);
    lootTable.getPool("food").addItemEntry(<minecraft:carrot>,10);
    lootTable.getPool("food").addItemEntry(<minecraft:apple>,10);
    lootTable.getPool("food").addItemEntry(<minecraft:melon>,13);
    lootTable.getPool("food").addItemEntry(<minecraft:melon_block>,4);
    lootTable.getPool("food").addItemEntry(<minecraft:pumpkin>,2);
    lootTable.getPool("food").addItemEntry(<minecraft:cookie>,3);
    lootTable.getPool("food").addItemEntry(<minecraft:cake>,1);
    lootTable.getPool("food").addItemEntry(<minecraft:beetroot>,10);
    lootTable.getPool("food").addItemEntry(<minecraft:spider_eye>,10);
    lootTable.getPool("food").addItemEntry(<minecraft:rotten_flesh>,15);


    lootTable.addPool("ore",4,8,0,0);
    lootTable.getPool("ore").addItemEntryJson(<minecraft:coal>,10,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<minecraft:coal:1>,5,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<minecraft:iron_ingot>,10,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<minecraft:gold_ingot>,6,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<immersiveengineering:metal>,8,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<immersiveengineering:metal:4>,4,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<immersiveengineering:metal:1>,4,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<immersiveengineering:metal:3>,4,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<immersiveengineering:metal:2>,4,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    

    lootTable.getPool("ore").addItemEntryJson(<immersiveengineering:metal:29>,24,0,[{"function": "minecraft:set_count", "count": {"min": 4.0, "max": 7.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<minecraft:gold_nugget>,16,0,[{"function": "minecraft:set_count", "count": {"min": 4.0, "max": 7.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<immersiveengineering:metal:20>,20,0,[{"function": "minecraft:set_count", "count": {"min": 4.0, "max": 7.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<immersiveengineering:metal:24>,12,0,[{"function": "minecraft:set_count", "count": {"min": 4.0, "max": 7.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<immersiveengineering:metal:21>,12,0,[{"function": "minecraft:set_count", "count": {"min": 4.0, "max": 7.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<immersiveengineering:metal:23>,12,0,[{"function": "minecraft:set_count", "count": {"min": 4.0, "max": 7.0}}],[]);
    lootTable.getPool("ore").addItemEntryJson(<immersiveengineering:metal:22>,12,0,[{"function": "minecraft:set_count", "count": {"min": 4.0, "max": 7.0}}],[]);

    lootTable.getPool("ore").addItemEntry(<minecraft:diamond>,3);
    lootTable.getPool("ore").addItemEntry(<minecraft:ender_pearl>,3);    


    lootTable.addPool("slime",1,2,0,0);
    lootTable.getPool("slime").addItemEntryJson(<minecraft:slime_ball>,20,0,[{"function": "minecraft:set_count", "count": {"min": 8.0, "max": 16.0}}],[]);
    lootTable.getPool("slime").addItemEntryJson(<tconstruct:edible:1>,10,0,[{"function": "minecraft:set_count", "count": {"min": 4.0, "max": 8.0}}],[]);
    lootTable.getPool("slime").addItemEntryJson(<tconstruct:edible:2>,10,0,[{"function": "minecraft:set_count", "count": {"min": 4.0, "max": 8.0}}],[]);
    lootTable.getPool("slime").addItemEntryJson(<tconstruct:edible:4>,10,0,[{"function": "minecraft:set_count", "count": {"min": 4.0, "max": 8.0}}],[]);
    lootTable.getPool("slime").addItemEntryJson(<tconstruct:edible:5>,10,0,[{"function": "minecraft:set_count", "count": {"min": 4.0, "max": 8.0}}],[]);

    lootTable.getPool("slime").addItemEntryJson(<tconstruct:slime_dirt>,1,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 2.0}}],[]);
    lootTable.getPool("slime").addItemEntryJson(<tconstruct:slime_dirt:1>,1,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 2.0}}],[]);
    lootTable.getPool("slime").addItemEntryJson(<tconstruct:slime_dirt:2>,1,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 2.0}}],[]);
    lootTable.getPool("slime").addItemEntryJson(<tconstruct:slime_dirt:3>,1,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 2.0}}],[]);

    lootTable.getPool("slime").addItemEntry(<tconstruct:slime_sapling>,1);
    lootTable.getPool("slime").addItemEntry(<tconstruct:slime_sapling:1>,1);
    lootTable.getPool("slime").addItemEntry(<tconstruct:slime_sapling:2>,1);


    lootTable.addPool("misc",4,8,0,0);
    lootTable.getPool("misc").addItemEntryJson(<minecraft:glass_bottle>,7,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 2.0}}],[]);
    lootTable.getPool("misc").addItemEntry(<minecraft:potion>.withTag({Potion: "minecraft:water"}),5);
    lootTable.getPool("misc").addItemEntryJson(<minecraft:nether_wart>,3,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("misc").addItemEntryJson(<minecraft:gunpowder>,9,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("misc").addItemEntryJson(<minecraft:string>,5,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("misc").addItemEntryJson(<minecraft:feather>,5,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 2.0}}],[]);
    lootTable.getPool("misc").addItemEntryJson(<minecraft:leather>,4,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("misc").addItemEntryJson(<minecraft:snowball>,1,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("misc").addItemEntryJson(<minecraft:stick>,15,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 4.0}}],[]);
    lootTable.getPool("misc").addItemEntryJson(<immersiveengineering:material:4>,7,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 4.0}}],[]);
    lootTable.getPool("misc").addItemEntryJson(<minecraft:clay_ball>,10,0,[{"function": "minecraft:set_count", "count": {"min": 8.0, "max": 16.0}}],[]);
    lootTable.getPool("misc").addItemEntryJson(<minecraft:bone>,6,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 3.0}}],[]);
    lootTable.getPool("misc").addItemEntryJson(<minecraft:dye:15>,7,0,[{"function": "minecraft:set_count", "count": {"min": 1.0, "max": 5.0}}],[]);


    lootTable.addPool("shader",0,1,0,0);
    lootTable.getPool("shader").addItemEntryJson(<immersiveengineering:shader_bag>.withTag({rarity: "IE:MASTERWORK"}),1,0,[{"function": "minecraft:set_count", "count": {"min": 0.0, "max": 1.0}}],[]);
    lootTable.getPool("shader").addItemEntryJson(<immersiveengineering:shader_bag>.withTag({rarity: "RELIC"}),2,0,[{"function": "minecraft:set_count", "count": {"min": 0.0, "max": 1.0}}],[]);
    lootTable.getPool("shader").addItemEntryJson(<immersiveengineering:shader_bag>.withTag({rarity: "EPIC"}),4,0,[{"function": "minecraft:set_count", "count": {"min": 0.0, "max": 1.0}}],[]);
    lootTable.getPool("shader").addItemEntryJson(<immersiveengineering:shader_bag>.withTag({rarity: "RARE"}),8,0,[{"function": "minecraft:set_count", "count": {"min": 0.0, "max": 1.0}}],[]);
    lootTable.getPool("shader").addItemEntryJson(<immersiveengineering:shader_bag>.withTag({rarity: "UNCOMMON"}),16,0,[{"function": "minecraft:set_count", "count": {"min": 0.0, "max": 1.0}}],[]);
    lootTable.getPool("shader").addItemEntryJson(<immersiveengineering:shader_bag>.withTag({rarity: "COMMON"}),32,0,[{"function": "minecraft:set_count", "count": {"min": 0.0, "max": 1.0}}],[]);
}

















