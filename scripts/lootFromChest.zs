import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

//all chests:
//vanilla
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
//more..


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