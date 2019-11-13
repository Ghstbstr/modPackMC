import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;


val cactus=<minecraft:cactus>;
val woodPlanks=<minecraft:planks>;
val cactusJuice=<toughasnails:fruit_juice:2>;
val purrefiedWater=<toughasnails:purified_water_bottle>;
val sugar=<minecraft:sugar>;
val obsidian=<minecraft:obsidian>;
val enchantmentTable=<minecraft:enchanting_table>;
val cobblestone=<minecraft:cobblestone>;
val gravel =<minecraft:gravel>;
val sand = <minecraft:sand>;
val charCoal = <minecraft:coal:1>;
val coal = <minecraft:coal>;
val goldNugget = <minecraft:gold_nugget>;
val waterBucket = <minecraft:water_bucket>;
val iron = <minecraft:iron_ingot>;
val steel = <immersiveengineering:metal:8>;
val cobalt = <tconstruct:ingots>;
val diamond = <minecraft:diamond>;
val emerald = <minecraft:emerald>;
val lapisLazuli = <minecraft:dye:4>;


recipes.addShapeless("CacteenToWood1",woodPlanks,[cactus,cactus,cactus]);
recipes.remove(cactusJuice);
recipes.addShapeless("EnchantmentTableToObsidian",obsidian,[enchantmentTable]);

//tinker**************************************************************************************
val steelTinker=<tcomplement:materials:10>;
val blockSteelTiner=<tcomplement:storage:1>;

recipes.remove(steelTinker);
recipes.remove(blockSteelTiner);

//exnihilo**************************
val dust = <exnihilocreatio:block_dust>;



//immersive Engineering:******************************************************************************
//bottling = mods.immersiveengineering.BottlingMachine;
//addRecipe(IItemStack output, IIngredient input, ILiquidStack fluid);
//crusher = mods.immersiveengineering.Crusher;
//addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);
//fermenter = mods.immersiveengineering.Fermenter;
//addRecipe(IItemStack output, ILiquidStack fluid, IIngredient input, int energy);
//metalPress = mods.immersiveengineering.MetalPress;
//addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);
//mixer = mods.immersiveengineering.Mixer;
//addRecipe(ILiquidStack output, ILiquidStack fluidInput, IIngredient[] itemInputs, int energy);
//refinery = mods.immersiveengineering.Refinery;
//addRecipe(ILiquidStack output, ILiquidStack input0, ILiquidStack input1, int energy);
//squeezer = mods.immersiveengineering.Squeezer;
//addRecipe(IItemStack output, ILiquidStack fluid, IIngredient input, int energy);

recipes.addShaped("Goldwashing",goldNugget,[
    [sand,sand,sand],
    [sand,waterBucket,sand],
    [sand,sand,sand]
]);

val industrialSalt=<immersivetech:material>;
industrialSalt.displayName="Industrial Salt";
//industrialSalt.clearTooltip();
//industrialSalt.addTooltip("Industrial Salt");
industrialSalt.addShiftTooltip("A mixture of solid chemical compound consisting of an ionic assembly of cations and anions");
//game.setLocalization("item.xyz.name","Industrial Salt"); Do I need this?
<ore:dustSalt>.remove(industrialSalt);
<ore:itemSalt>.remove(industrialSalt);
<ore:foodSalt>.remove(industrialSalt);

val sulfur = <immersiveengineering:material:25>;
val slag = <immersiveengineering:material:7>;
val copperGrit = <immersiveengineering:metal:9>;
val aluminiumGrit = <immersiveengineering:metal:10>;
val leadGrit = <immersiveengineering:metal:11>;
val silverGrit = <immersiveengineering:metal:12>;
val nickelGrit = <immersiveengineering:metal:13>;
val uraniumGrit = <immersiveengineering:metal:14>;
val ironGrit = <immersiveengineering:metal:18>;
val nitrate = <immersiveengineering:material:24>;
val cobaltDust = <enderio:item_material:31>;
val arditeDust = <enderio:item_material:30>;
val blackPowder = <enderio:item_material:50>;

recipes.addShaped("CharcoalColor",blackPowder*4,[
    [charCoal,charCoal,charCoal],
    [charCoal,industrialSalt,charCoal],
    [charCoal,charCoal,charCoal]
]);

//fluids
val sodiumHydroxide = <liquid:water_white>;
val alumina = <liquid:water_silver>;
val carbonSlury = <liquid:water_gray>;
val plumbumSludge = <liquid:water_black>;
val ferrumLateriteSludge = <liquid:water_brown>;
val uranylHydroxide = <liquid:water_red>;
val cuprumSludge = <liquid:water_orange>;
val sulfuricAcid = <liquid:water_yellow>;
val temp1 = <liquid:water_lime>;
val temp2 = <liquid:water_green>;
val temp3 = <liquid:water_cyan>;
val crystalSlury = <liquid:water_light_blue>;
val cobaldHydroxide = <liquid:water_blue>;
val cobalticAcidumSulfoNitrosum = <liquid:water_purple>;
val uranNuclide = <liquid:water_magenta>;
val nitricAcid = <liquid:water_pink>;
val destiWater = <liquid:dist_water>;
val water = <liquid:water>;
val lava = <liquid:lava>;
val arditicAcidumSulfoNitrosum = <liquid:glowing_water_orange>;
val acidumSulfoNitrosum = <liquid:glowing_water_pink>;
val temp4 = <liquid:glowing_water_purple>;
val silverNitrate = <liquid:glowing_water_silver>;
val redstoneDust = <minecraft:redstone>;
val pressingMold =  <immersiveengineering:mold:6>;
val grainsOfInfinity = <enderio:item_material:20>;
val yellorium = <bigreactors:ingotyellorium>;
val glowstonedust = <minecraft:glowstone_dust>;
val blazePowder = <minecraft:blaze_powder>;
val blazeRod = <minecraft:blaze_rod>;
val rodMold = <immersiveengineering:mold:2>;

val cuprumSludgeBucket = <forge:bucketfilled>.withTag({FluidName: "water_orange", Amount: 1000});
val silverNitrateBucket = <forge:bucketfilled>.withTag({FluidName: "glowing_water_silver", Amount: 1000});
val cobaldHydroxideBucket = <forge:bucketfilled>.withTag({FluidName: "water_blue", Amount: 1000});
val ferrumLateriteSludgeBucket = <forge:bucketfilled>.withTag({FluidName: "water_brown", Amount: 1000});
val plumbumSludgeBucket = <forge:bucketfilled>.withTag({FluidName: "water_black", Amount: 1000});
val arditicAcidumSulfoNitrosumBucket = <forge:bucketfilled>.withTag({FluidName: "glowing_water_orange", Amount: 1000});


arditicAcidumSulfoNitrosum.definition.luminosity = 0;
acidumSulfoNitrosum.definition.luminosity = 0;
silverNitrate.definition.luminosity = 0;
sulfuricAcid.definition.luminosity = 1;
nitricAcid.definition.luminosity = 1;
acidumSulfoNitrosum.definition.luminosity = 2;
uranylHydroxide.definition.luminosity = 4;
uranNuclide.definition.luminosity = 8;


//assembler
recipes.addShaped("PlumbumToLead",leadGrit*8,[
    [slag,slag,slag],
    [slag,plumbumSludgeBucket,slag],
    [slag,slag,slag]
]);

recipes.addShaped("FerrumToIron",ironGrit*4,[
    [null,industrialSalt,null],
    [industrialSalt,ferrumLateriteSludgeBucket,industrialSalt],
    [null,industrialSalt,null]
]);

recipes.addShaped("CuprumToCopper",copperGrit*4,[
    [null,industrialSalt,null],
    [industrialSalt,cuprumSludgeBucket,industrialSalt],
    [null,industrialSalt,null]
]);

recipes.addShaped("SilverToSilver",silverGrit*8,[
    [industrialSalt,industrialSalt,industrialSalt],
    [industrialSalt,silverNitrateBucket,industrialSalt],
    [industrialSalt,industrialSalt,industrialSalt]
]);

recipes.addShaped("CobalticToCobalt",cobaltDust*2,[
    [null,null,null],
    [industrialSalt,cobaldHydroxideBucket,industrialSalt],
    [null,null,null]
]);

recipes.addShaped("ArditicToArdite",arditeDust*1,[
    [null,null,null],
    [null,arditicAcidumSulfoNitrosumBucket,industrialSalt],
    [null,null,null]
]);

//crusher
mods.immersiveengineering.Crusher.removeRecipe(gravel);
mods.immersiveengineering.Crusher.addRecipe(gravel,cobblestone,2048,industrialSalt,0.25);
mods.immersiveengineering.Crusher.addRecipe(sand,gravel,1024,industrialSalt,0.25);
mods.immersiveengineering.Crusher.addRecipe(slag,charCoal,4096,sulfur,0.1);
mods.immersiveengineering.Crusher.addRecipe(null,uraniumGrit,16384,yellorium,0.2);
mods.immersiveengineering.Crusher.addRecipe(dust,sand,512);

//mixer
mods.immersiveengineering.Mixer.addRecipe(plumbumSludge*125,sulfuricAcid*50,[cobblestone*8],4096);
mods.immersiveengineering.Mixer.addRecipe(sulfuricAcid*2000,destiWater*2000,[sulfur],2048);
mods.immersiveengineering.Mixer.addRecipe(ferrumLateriteSludge*125,sulfuricAcid*50,[gravel*4],2048);
mods.immersiveengineering.Mixer.addRecipe(cuprumSludge*125,sulfuricAcid*50,[sand*4],1024);
mods.immersiveengineering.Mixer.addRecipe(sodiumHydroxide*1000,sulfuricAcid*1000,[industrialSalt],8192);
mods.immersiveengineering.Mixer.addRecipe(nitricAcid*1000,sulfuricAcid*1000,[nitrate],8192);

//bottling
/*
mods.immersiveengineering.BottlingMachine.addRecipe(leadGrit,slag,plumbumSludge*60);
mods.immersiveengineering.BottlingMachine.addRecipe(ironGrit,industrialSalt,ferrumLateriteSludge*240);
mods.immersiveengineering.BottlingMachine.addRecipe(copperGrit,industrialSalt,cuprumSludge*240);
mods.immersiveengineering.BottlingMachine.addRecipe(arditeDust,sulfur,arditicAcidumSulfoNitrosum*1000);
mods.immersiveengineering.BottlingMachine.addRecipe(cobaltDust,silverGrit,cobaldHydroxide*1000);
mods.immersiveengineering.BottlingMachine.addRecipe(silverGrit,industrialSalt,silverNitrate*150);
*/

//refinery
mods.immersiveengineering.Refinery.addRecipe(uranylHydroxide*100,plumbumSludge*60,sulfuricAcid*50,32768);
mods.immersiveengineering.Refinery.addRecipe(alumina*170,ferrumLateriteSludge*125,sodiumHydroxide*50,16384);
mods.immersiveengineering.Refinery.addRecipe(silverNitrate*125,cuprumSludge*125,nitricAcid*50,16384);
mods.immersiveengineering.Refinery.addRecipe(uranNuclide*100,uranylHydroxide*50,nitricAcid*50,32768);
mods.immersiveengineering.Refinery.addRecipe(crystalSlury*150,carbonSlury*50,lava*100,16384);
mods.immersiveengineering.Refinery.addRecipe(arditicAcidumSulfoNitrosum*150,plumbumSludge*125,acidumSulfoNitrosum*100,32768);
mods.immersiveengineering.Refinery.addRecipe(acidumSulfoNitrosum*200,sulfuricAcid*50,nitricAcid*150,32768);
mods.immersiveengineering.Refinery.addRecipe(cobaldHydroxide*500,cobalticAcidumSulfoNitrosum*450,nitricAcid*50,32768);
mods.immersiveengineering.Refinery.addRecipe(cobalticAcidumSulfoNitrosum*450,acidumSulfoNitrosum*100,cuprumSludge*360,32768);

//fermenter
mods.immersiveengineering.Fermenter.addRecipe(slag,carbonSlury*100,charCoal,8192);

//destilTower
//addRecipe(fliud[] out, item[] out, fluid in, energy, time, change[])
mods.immersivepetroleum.Distillation.addRecipe([],[diamond,lapisLazuli,emerald],crystalSlury*150,2048,80,[0.016,0.032,0.008]);
mods.immersivepetroleum.Distillation.addRecipe([],[yellorium,uraniumGrit,grainsOfInfinity],uranNuclide*200,4096,80,[0.01,0.06,0.01]);
mods.immersivepetroleum.Distillation.addRecipe([],[aluminiumGrit,coal],alumina*170,1024,80,[0.25,0.125]);

//cokeoven
//mods.immersiveengineering.CokeOven.addRecipe(IItemStack output, int fuelOutput, IIngredient input, int time);
mods.immersiveengineering.CokeOven.addRecipe(coal,1,charCoal,500);


//metalpress
mods.immersiveengineering.MetalPress.addRecipe(redstoneDust,sand,pressingMold,1024,16);
mods.immersiveengineering.MetalPress.addRecipe(glowstonedust,dust,pressingMold,1024,32);
mods.immersiveengineering.MetalPress.addRecipe(blazeRod,blazePowder,rodMold,1024,4);
pressingMold.displayName="Metal Press Mold: Pressing";

val enderIOremoveFromARC = [
    <enderio:item_alloy_ingot>,
    <enderio:item_alloy_ingot:1>,
    <enderio:item_alloy_ingot:4>,
    <enderio:item_alloy_ingot:7>,
    <enderio:item_alloy_ingot:6>
] as IItemStack[];

for item in enderIOremoveFromARC {
    mods.immersiveengineering.ArcFurnace.removeRecipe(item);
}

//extrem reactors************************************************************************************
val steelReactors = <bigreactors:ingotsteel>;
val blockSteelReactors = <bigreactors:blocksteel>;
val ingotUranium = <immersiveengineering:metal:5>;

recipes.remove(steelReactors);
recipes.remove(blockSteelReactors);
<ore:ingotUranium>.remove(yellorium);

recipes.removeShaped(<bigreactors:ingotcyanite>,[[sand,ingotUranium,null],[null,null,null],[null,null,null]]);

val steelExchangeItems = [
    <bigreactors:turbinecontroller>,
    <bigreactors:turbinefluidport>,
    <bigreactors:reactorcasing>,
    <bigreactors:turbinerotorblade>,
    <bigreactors:reactorcasingcores>,
    <bigreactors:reactorcontroller>,
    <bigreactors:turbinerotorshaft>,
    <bigreactors:reactoraccessport>,
    <bigreactors:reactorcoolantport>
] as IItemStack[];

recipes.replaceAllOccurences(iron,cobalt,<bigreactors:reactorfuelrod>);

for item in steelExchangeItems {
    recipes.replaceAllOccurences(iron, steel, item);
}

//psi**************************************************************
val gold=<minecraft:gold_ingot>;
val cadAssembler = <psi:cad_assembler>;
val manasteel = <botania:manaresource>;
recipes.replaceAllOccurences(gold,manasteel,cadAssembler);

//tiny progression***********************************************************
val juiceRemoveFromCrafting = [
    <tp:juicer>,
    <tp:carrot_juice>,
    <tp:cactus_juice>,
    <tp:pumpkin_juice>,
    <tp:melon_juice>,
    <tp:apple_juice>,
    <tp:beet_juice>,
    <tp:blackberry_juice>,
    <tp:wheat_juice>,
    <tp:pumpkin_juice>,
    <tp:cactus_juice>,
    <tp:maloberry_juice>,
    <tp:raspberry_juice>,
    <tp:carrot_juice>,
    <tp:melon_juice>,
    <tp:beet_juice>,
    <tp:pear_juice>,
    <tp:blueberry_juice>,
    <tp:peach_juice>,
    <tp:apple_juice>,
    <tp:slime_juice>,
    <tp:potatoe_juice>
] as IItemStack[];

for item in juiceRemoveFromCrafting {
    recipes.remove(item);
}

//enderio******************************************
val enderIOFluidFilter = <enderio:item_fluid_filter>;
val enderIOEnderFluidConduit = <enderio:item_liquid_conduit:2>;
val endervoir = <enderio:block_reservoir>;
val netherstar = <minecraft:nether_star>;
val vibrantAlloy = <enderio:item_alloy_ingot:2>;
val fusedQuartzGlass = <enderio:block_fused_quartz>;
val glass = <minecraft:glass>;
val conduitBinder = <enderio:item_material:4>;


val conduitRemoveFromCrafting = [
    <enderio:item_endergy_conduit:6>,
    <enderio:item_endergy_conduit:5>,
    <enderio:item_endergy_conduit:4>,
    <enderio:item_endergy_conduit:3>,
    <enderio:item_endergy_conduit:2>,
    <enderio:item_endergy_conduit:1>,
    <enderio:item_endergy_conduit>,
    <enderio:item_power_conduit:1>,
    <enderio:item_power_conduit>,
    <enderio:item_endergy_conduit:7>,
    <enderio:item_power_conduit:2>
] as IItemStack[];

for item in conduitRemoveFromCrafting {
    recipes.remove(item);
}

recipes.remove(enderIOEnderFluidConduit);
recipes.addShaped("FluidFilterConduit",enderIOEnderFluidConduit*4,[
    [conduitBinder,conduitBinder,conduitBinder],
    [emerald,glass,emerald],
    [conduitBinder,conduitBinder,conduitBinder]
]);
recipes.replaceAllOccurences(fusedQuartzGlass,netherstar,endervoir);
enderIOEnderFluidConduit.displayName="Fluid Filter Conduit";


//rfTools****************************************************
val manyullyn = <tconstruct:ingots:2>;
val machineFrame = <rftools:machine_frame>;
recipes.replaceAllOccurences(goldNugget,manyullyn,machineFrame);

//toughAsNails*********************************************************
val packedIce = <minecraft:packed_ice>;
val iceCube = <toughasnails:ice_cube>;
val magmaShard = <toughasnails:magma_shard>;
val ice = <minecraft:ice>;
val coolingGoo = <armorunder:cooling_goo>;

recipes.addShaped("Diafreezing",iceCube,[
    [null,null,null],
    [null,waterBucket,diamond],
    [null,null,null]
]);

recipes.addShaped("PackingIce",packedIce,[
    [ice,ice,null],
    [ice,ice,null],
    [null,null,null]
]);

recipes.replaceAllOccurences(magmaShard,blazeRod);
recipes.replaceAllOccurences(packedIce,iceCube,coolingGoo);


//openModularTurrets
val electricalSteel = <enderio:item_alloy_ingot>;
val capacitorT1 = <enderio:item_basic_capacitor>;

val incendaryAmmo = <openmodularturrets:ammo_meta>;
val bulletAmmo = <openmodularturrets:ammo_meta:1>;
val railGunAmmo = <openmodularturrets:ammo_meta:2>;
val granateAmmo = <openmodularturrets:ammo_meta:3>;
val rocketAmmo = <openmodularturrets:ammo_meta:4>;

val gunTurret = <openmodularturrets:machine_gun_turret>;
val barrelT2 = <openmodularturrets:intermediate_tiered:11>;
val chamberT2 = <openmodularturrets:intermediate_tiered:6>;

val ironNugget = <minecraft:iron_nugget>;
val conductivIronNugget = <enderio:item_alloy_nugget:4>;
val conductivIron = <enderio:item_alloy_ingot:4>;
val darkSteel = <enderio:item_alloy_ingot:6>;
val darkSteelNugget = <enderio:item_alloy_nugget:6>;
val electricalSteelNugget = <enderio:item_alloy_nugget>;

recipes.replaceAllOccurences(electricalSteel,ironNugget,bulletAmmo);
recipes.replaceAllOccurences(conductivIron,conductivIronNugget,bulletAmmo);

recipes.replaceAllOccurences(electricalSteel,electricalSteelNugget,rocketAmmo);

recipes.replaceAllOccurences(conductivIron,conductivIronNugget,granateAmmo);

recipes.replaceAllOccurences(darkSteel,darkSteelNugget,railGunAmmo);


recipes.replaceAllOccurences(electricalSteel,iron,gunTurret);
recipes.replaceAllOccurences(electricalSteel,iron,barrelT2);
recipes.replaceAllOccurences(electricalSteel,iron,chamberT2);
recipes.replaceAllOccurences(capacitorT1,null,chamberT2);




//vanillaSpawns:
val chickenSpawn = <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:chicken"}});
val cowSpawn = <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}});
val pigSpawn = <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:pig"}});
val rabbitSpawn = <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:rabbit"}});
val sheepSpawn = <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:sheep"}});
val feather = <minecraft:feather>;
val leather = <minecraft:leather>;
val rabbitHide = <minecraft:rabbit_hide>;
val fleshBlock = <tp:flesh_block>;
val wool = <minecraft:wool>;
val shears = <minecraft:shears>;


recipes.addShaped("SpawnEggChicken",chickenSpawn,[
    [feather,feather,feather],
    [feather,emerald,feather],
    [feather,feather,feather]
]);

recipes.addShaped("SpawnEggCow",cowSpawn,[
    [leather,leather,leather],
    [leather,emerald,leather],
    [leather,leather,leather]
]);

recipes.addShaped("SpawnEggPig",pigSpawn,[
    [fleshBlock,fleshBlock,fleshBlock],
    [fleshBlock,emerald,fleshBlock],
    [fleshBlock,fleshBlock,fleshBlock]
]);

recipes.addShaped("SpawnEggRabbit",rabbitSpawn,[
    [rabbitHide,rabbitHide,rabbitHide],
    [rabbitHide,emerald,rabbitHide],
    [rabbitHide,rabbitHide,rabbitHide]
]);

recipes.addShaped("SpawnEggSheep",sheepSpawn,[
    [wool,wool,wool],
    [wool,emerald,wool],
    [wool,wool,wool]
]);

recipes.addShapeless("LeatherToHide",rabbitHide,[leather,shears.anyDamage().transformDamage(15)]);