import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

val skeleton = LootTables.getTable("minecraft:entities/skeleton");
skeleton.getPool("main").removeEntry("minecraft:arrow");

val stray = LootTables.getTable("minecraft:entities/stray");
stray.getPool("main").removeEntry("minecraft:arrow");
stray.getPool("main").removeEntry("minecraft:tipped_arrow");