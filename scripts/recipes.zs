#loader crafttweaker
#priority 50

import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import mods.enderio.SagMill;
import crafttweaker.oredict.IOreDict;
import crafttweaker.potions.IPotion;

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
val oakLog = <minecraft:log>;
val oakPlank = <minecraft:planks>;


recipes.addShapeless("CacteenToWood1",woodPlanks,[cactus,cactus,cactus]);
recipes.remove(cactusJuice);
recipes.addShapeless("EnchantmentTableToObsidian",obsidian*4,[enchantmentTable]);

//tinker**************************************************************************************
val steelTinker=<tcomplement:materials:10>;
val blockSteelTinker=<tcomplement:storage:1>;

recipes.remove(steelTinker);
recipes.remove(blockSteelTinker);





//exnihilo**************************
val dust = <exnihilocreatio:block_dust>;

val exNihiloTools = [
<exnihilocreatio:crook_diorite>,
<exnihilocreatio:crook_gold>,
<exnihilocreatio:crook_iron>,
<exnihilocreatio:crook_diamond>,
<exnihilocreatio:crook_bone>,
<exnihilocreatio:crook_clay_uncooked>,
<exnihilocreatio:crook_clay>,
<exnihilocreatio:crook_purpur>,
<exnihilocreatio:crook_blaze>,
<exnihilocreatio:hammer_gold>,
<exnihilocreatio:hammer_diamond>,
<exnihilocreatio:hammer_wood>,
<exnihilocreatio:hammer_stone>,
<exnihilocreatio:hammer_iron>,
<exnihilocreatio:crook_netherrack>,
<exnihilocreatio:crook_prismarine>,
<exnihilocreatio:crook_wood>,
<exnihilocreatio:crook_stone>,
<exnihilocreatio:crook_andesite>,
<exnihilocreatio:crook_granite>
] as IItemStack[];

for item in exNihiloTools {
    recipes.remove(item);
}


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
//mods.immersivepetroleum.Distillation.addRecipe(ILiquidStack[] fluidOutputs, IItemStack[] itemOutputs, ILiquidStack fluidInput, int energy, int time, float[] chance)
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
val redstoneDust = <minecraft:redstone>;
val pressingMold =  <immersiveengineering:mold:6>;
val grainsOfInfinity = <enderio:item_material:20>;
val yellorium = <bigreactors:dustyellorium>;
val glowstonedust = <minecraft:glowstone_dust>;
val blazePowder = <minecraft:blaze_powder>;
val blazeRod = <minecraft:blaze_rod>;
val rodMold = <immersiveengineering:mold:2>;
val coke = <immersiveengineering:material:6>;
val magmaBlock = <minecraft:magma>;

recipes.addShaped("CharcoalColor",blackPowder*4,[
    [charCoal,charCoal,charCoal],
    [charCoal,industrialSalt,charCoal],
    [charCoal,charCoal,charCoal]
]);

//fluids
val sodiumHydroxide = <liquid:sodium_hydroxide>;
val alumina = <liquid:alumina>;
val carbonSlury = <liquid:carbon_slury>;
val plumbumSludge = <liquid:plumbum_sludge>;
val ferrumLateriteSludge = <liquid:ferrum_laterite_sludge>;
val uranylHydroxide = <liquid:uranyl_hydroxide>;
val cuprumSludge = <liquid:cuprum_sludge>;
val sulfuricAcid = <liquid:sulfuric_acid>;
val crystalSlury = <liquid:crystal_slury>;
val cobaldHydroxide = <liquid:cobald_hydroxide>;
val cobalticAcidumSulfoNitrosum = <liquid:cobaltic_acidum_sulfo_nitrosum>;
val uranNuclide = <liquid:uran_nuclide>;
val nitricAcid = <liquid:nitric_acid>;
val destiWater = <liquid:distwater>;
val water = <liquid:water>;
val lava = <liquid:lava>;
val arditicAcidumSulfoNitrosum = <liquid:arditic_acidum_sulfo_nitrosum>;
val acidumSulfoNitrosum = <liquid:acidum_sulfo_nitrosum>;
val silverNitrate = <liquid:silver_nitrate>;
val nickelSulfate = <liquid:nickel_sulfate>;

val cuprumSludgeBucket = <forge:bucketfilled>.withTag({FluidName: "cuprum_sludge", Amount: 1000});
val silverNitrateBucket = <forge:bucketfilled>.withTag({FluidName: "silver_nitrate", Amount: 1000});
val cobaldHydroxideBucket = <forge:bucketfilled>.withTag({FluidName: "cobald_hydroxide", Amount: 1000});
val ferrumLateriteSludgeBucket = <forge:bucketfilled>.withTag({FluidName: "ferrum_laterite_sludge", Amount: 1000});
val plumbumSludgeBucket = <forge:bucketfilled>.withTag({FluidName: "plumbum_sludge", Amount: 1000});
val arditicAcidumSulfoNitrosumBucket = <forge:bucketfilled>.withTag({FluidName: "arditic_acidum_sulfo_nitrosum", Amount: 1000});
val nickelSulfateBucket = <forge:bucketfilled>.withTag({FluidName: "nickel_sulfate", Amount: 1000});

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

recipes.addShaped("CobalticToCobalt",cobaltDust,[
    [null,null,null],
    [null,cobaldHydroxideBucket,silverGrit],
    [null,null,null]
]);

recipes.addShaped("ArditicToArdite",arditeDust,[
    [null,null,null],
    [null,arditicAcidumSulfoNitrosumBucket,sulfur],
    [null,null,null]
]);

recipes.addShaped("nickelSulfateToNickel",nickelGrit*8,[
    [coke,coke,coke],
    [coke,nickelSulfateBucket,coke],
    [coke,coke,coke]
]);

//crusher
mods.immersiveengineering.Crusher.removeRecipe(gravel);
mods.immersiveengineering.Crusher.addRecipe(gravel,cobblestone,2048,industrialSalt,0.25);
mods.immersiveengineering.Crusher.addRecipe(sand,gravel,1024,industrialSalt,0.25);
mods.immersiveengineering.Crusher.addRecipe(slag,charCoal,4096,sulfur,0.1);
//mods.immersiveengineering.Crusher.addRecipe(null,uraniumGrit,16384,yellorium,0.2);
mods.immersiveengineering.Crusher.addRecipe(dust,sand,512);

//mixer
mods.immersiveengineering.Mixer.addRecipe(plumbumSludge*125,sulfuricAcid*50,[cobblestone*8],4096);
mods.immersiveengineering.Mixer.addRecipe(sulfuricAcid*2000,destiWater*2000,[sulfur],2048);
mods.immersiveengineering.Mixer.addRecipe(ferrumLateriteSludge*125,sulfuricAcid*50,[gravel*4],2048);
mods.immersiveengineering.Mixer.addRecipe(cuprumSludge*125,sulfuricAcid*50,[sand*4],1024);
mods.immersiveengineering.Mixer.addRecipe(sodiumHydroxide*1000,sulfuricAcid*1000,[industrialSalt],8192);
mods.immersiveengineering.Mixer.addRecipe(nitricAcid*1000,sulfuricAcid*1000,[nitrate],8192);
mods.immersiveengineering.Mixer.addRecipe(nickelSulfate*1000,cuprumSludge*1000,[industrialSalt,sulfur],8192);

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
mods.immersiveengineering.Refinery.addRecipe(uranylHydroxide*100,plumbumSludge*60,sulfuricAcid*50,512);
mods.immersiveengineering.Refinery.addRecipe(alumina*170,ferrumLateriteSludge*125,sodiumHydroxide*50,256);
mods.immersiveengineering.Refinery.addRecipe(silverNitrate*125,cuprumSludge*125,nitricAcid*50,256);
mods.immersiveengineering.Refinery.addRecipe(uranNuclide*100,uranylHydroxide*50,acidumSulfoNitrosum*50,512);
mods.immersiveengineering.Refinery.addRecipe(crystalSlury*150,carbonSlury*50,lava*100,256);
mods.immersiveengineering.Refinery.addRecipe(arditicAcidumSulfoNitrosum*150,plumbumSludge*125,acidumSulfoNitrosum*100,512);
mods.immersiveengineering.Refinery.addRecipe(acidumSulfoNitrosum*200,sulfuricAcid*50,nitricAcid*150,512);
mods.immersiveengineering.Refinery.addRecipe(cobaldHydroxide*500,cobalticAcidumSulfoNitrosum*450,sodiumHydroxide*50,512);
mods.immersiveengineering.Refinery.addRecipe(cobalticAcidumSulfoNitrosum*450,acidumSulfoNitrosum*100,cuprumSludge*360,512);

//fermenter
mods.immersiveengineering.Fermenter.addRecipe(slag,carbonSlury*100,charCoal,8192);

//destilTower
//addRecipe(fliud[] out, item[] out, fluid in, energy, time, change[])
mods.immersivepetroleum.Distillation.addRecipe([],[diamond,lapisLazuli,emerald],crystalSlury*150,32768,32,[0.016,0.032,0.008]);
mods.immersivepetroleum.Distillation.addRecipe([],[yellorium,uraniumGrit,grainsOfInfinity],uranNuclide*200,65536,32,[0.01,0.06,0.01]);
mods.immersivepetroleum.Distillation.addRecipe([],[aluminiumGrit,coal],alumina*170,16384,32,[0.25,0.125]);
mods.immersivepetroleum.Distillation.addRecipe([],[blazePowder,magmaBlock],lava*1000,8192,32,[0.1,0.9]);

//cokeoven
//mods.immersiveengineering.CokeOven.addRecipe(IItemStack output, int fuelOutput, IIngredient input, int time);
mods.immersiveengineering.CokeOven.addRecipe(coal,1,charCoal,500);


//metalpress
mods.immersiveengineering.MetalPress.addRecipe(redstoneDust,sand,pressingMold,1024,16);
mods.immersiveengineering.MetalPress.addRecipe(glowstonedust,dust,pressingMold,1024,16);
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

val additionalCapacitorRailgun = <immersiveengineering:toolupgrade:9>;
val HVwireCoil = <immersiveengineering:wirecoil:2>;
val melodicCapacitor = <enderio:item_capacitor_melodic>;

recipes.replaceAllOccurences(HVwireCoil,melodicCapacitor,additionalCapacitorRailgun);


val engineerSolar = <engineersdecor:small_solar_panel>;
val blockOfLead = <immersiveengineering:storage:2>;
val quartz = <minecraft:quartz>;

recipes.remove(engineerSolar);
recipes.addShaped("engineerSolarCheaper",engineerSolar,[
    [quartz,quartz,quartz],
    [null,steelTinker,null],
    [redstoneDust,blockOfLead,redstoneDust]
]);

//extrem reactors************************************************************************************
val steelReactors = <bigreactors:ingotsteel>;
val blockSteelReactors = <bigreactors:blocksteel>;
val ingotUranium = <immersiveengineering:metal:5>;
val blockSteel = <immersiveengineering:storage:8>;

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
    <bigreactors:turbinehousingcores>,
    <bigreactors:turbinehousing>,
    <bigreactors:reactorcontroller>,
    <bigreactors:turbinerotorshaft>,
    <bigreactors:reactoraccessport>,
    <bigreactors:reactorcoolantport>
] as IItemStack[];




recipes.replaceAllOccurences(iron,cobalt,<bigreactors:reactorfuelrod>);

for item in steelExchangeItems {
    recipes.replaceAllOccurences(iron, blockSteel, item);
}

val leadedConcrete = <immersiveengineering:stone_decoration:7>;
val reactorCasing = <bigreactors:reactorcasing>;
val leadIngot = <immersiveengineering:metal:2>;
val graphitBarExtremReactor = <bigreactors:ingotgraphite>;
val reactorCasingCore = <bigreactors:reactorcasingcores>;
val steelScaffolding = <immersiveengineering:metal_decoration1:1>;
val goldIngot=<minecraft:gold_ingot>;
val aluminiumPlate = <immersiveengineering:metal:31>;
val leadPlate = <immersiveengineering:metal:32>;
val turbineHousing = <bigreactors:turbinehousing>;
val turbineHousingCore = <bigreactors:turbinehousingcores>;
val nickelSheetBlock = <immersiveengineering:sheetmetal:4>;
val nickelPlate = <immersiveengineering:metal:34>;
val aluminiumSheetBlock = <immersiveengineering:sheetmetal:1>;

recipes.replaceAllOccurences(graphitBarExtremReactor,leadedConcrete,reactorCasing);
recipes.replaceAllOccurences(blockSteel,leadIngot,reactorCasingCore);
recipes.replaceAllOccurences(redstoneDust,steelScaffolding,reactorCasingCore);
recipes.replaceAllOccurences(goldIngot,leadPlate,reactorCasingCore);
recipes.replaceAllOccurences(graphitBarExtremReactor,leadPlate,reactorCasingCore);

recipes.replaceAllOccurences(graphitBarExtremReactor,nickelPlate,turbineHousing);
recipes.replaceAllOccurences(blockSteel,nickelSheetBlock,turbineHousing);
recipes.replaceAllOccurences(blockSteel,aluminiumSheetBlock,turbineHousingCore);
recipes.replaceAllOccurences(graphitBarExtremReactor,aluminiumPlate,turbineHousingCore);
recipes.replaceAllOccurences(goldIngot,aluminiumPlate,turbineHousingCore);
recipes.replaceAllOccurences(<minecraft:comparator>,steelScaffolding,turbineHousingCore);


//psi**************************************************************
val cadAssembler = <psi:cad_assembler>;
val manasteel = <botania:manaresource>;
recipes.replaceAllOccurences(goldIngot,manasteel,cadAssembler);

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
    <enderio:item_power_conduit:2>,
    <enderio:item_capacitor_grainy>,
    <enderio:item_capacitor_silver>,
    <enderio:item_capacitor_energetic_silver>,
    <enderio:item_capacitor_vivid>,
    <enderio:item_capacitor_totemic>
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

val blockUranium = <immersiveengineering:storage:5>;
val cyanite = <bigreactors:ingotcyanite>;

mods.enderio.AlloySmelter.addRecipe(yellorium,[blockUranium,cyanite],4096000);

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

recipes.addShaped("Diafreezing",iceCube*4,[
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

val paper = <minecraft:paper>;
val wheatSeeds = <minecraft:wheat_seeds>;
val gooPakCool = <armorunder:goopak_cool>;

recipes.remove(gooPakCool);

recipes.addShaped("gooPakCoolBetter",gooPakCool*16,[
    [paper,paper,paper],
    [wheatSeeds,coolingGoo,wheatSeeds],
    [paper,paper,paper]
]);

val removeColdJuices = [
    <extratan:empty_flask>,
    <extratan:empty_tempered_flask>,
    <extratan:flask_with_cold_water>,
    <extratan:flask_with_hot_water>,
    <extratan:flask_with_super_hot_water>,
    <extratan:flask_with_super_cold_water>,
    <extratan:filled_flask>,
    <extratan:filled_tempered_flask>,
    <extratan:tempered_flask_with_cold_water>,
    <harvestcraft:cherryjuiceitem>,
    <harvestcraft:blueberryjuiceitem>,
    <harvestcraft:grapejuiceitem>,
    <harvestcraft:carrotjuiceitem>,
    <harvestcraft:strawberryjuiceitem>,
    <harvestcraft:melonjuiceitem>,
    <harvestcraft:applejuiceitem>,
    <extratan:tempered_flask_with_super_cold_water>,
    <extratan:tempered_flask_with_hot_water>,
    <harvestcraft:cactusfruitjuiceitem>,
    <harvestcraft:plumjuiceitem>,
    <harvestcraft:pearjuiceitem>,
    <harvestcraft:apricotjuiceitem>,
    <harvestcraft:figjuiceitem>,
    <harvestcraft:grapefruitjuiceitem>,
    <harvestcraft:persimmonjuiceitem>,
    <harvestcraft:starfruitjuiceitem>,
    <harvestcraft:papayajuiceitem>,
    <harvestcraft:orangejuiceitem>,
    <harvestcraft:peachjuiceitem>,
    <harvestcraft:limejuiceitem>,
    <harvestcraft:mangojuiceitem>,
    <harvestcraft:pomegranatejuiceitem>,
    <harvestcraft:blackberryjuiceitem>,
    <harvestcraft:raspberryjuiceitem>,
    <harvestcraft:kiwijuiceitem>,
    <harvestcraft:cranberryjuiceitem>,
    <extratan:tempered_flask_with_super_hot_water>,
    <extratan:orange_juice>,
    <extratan:lemonade>,
    <extratan:apple_juice>
] as IItemStack[];

for item in removeColdJuices {
    recipes.remove(item);
}


val snowBall =<minecraft:snowball>;


//openModularTurrets*********************************************************
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

val turretBase2 = <openmodularturrets:turret_base:1>;
val turretSensor2 = <openmodularturrets:intermediate_tiered:1>;
val simpleMachineChassi = <enderio:item_material>;

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

recipes.replaceAllOccurences(capacitorT1,null,turretBase2);
recipes.replaceAllOccurences(simpleMachineChassi,null,turretBase2);
recipes.replaceAllOccurences(electricalSteel,iron,turretBase2);
recipes.replaceAllOccurences(electricalSteel,iron,turretSensor2);



//vanillaSpawns:*********************************************************
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

//environmentalTech:*********************************************************

/*
<environmentaltech:erodium_crystal>
<environmentaltech:kyronite_crystal>
<environmentaltech:pladium_crystal>
<environmentaltech:ionite_crystal>
<environmentaltech:aethium_crystal>

<environmentaltech:structure_frame_1>
<environmentaltech:structure_frame_2>
<environmentaltech:structure_frame_6>
<environmentaltech:structure_frame_3>
<environmentaltech:structure_frame_4>
<environmentaltech:structure_frame_5>
*/

val lightningRenaming = [
    <environmentaltech:lightning_cont_4>,
    <environmentaltech:lightning_cont_5>,
    <environmentaltech:lightning_cont_2>,
    <environmentaltech:lightning_cont_3>,
    <environmentaltech:lightning_cont_1>,
    <environmentaltech:lightning_cont_6>,
    <environmentaltech:lightning_rod>,
    <environmentaltech:lightning_rod_insulated>
] as IItemStack[];

for item in lightningRenaming {
    item.displayName="Radioactive " ~ item.displayName;
}




//advancedRocketry:*********************************************************
val moltenUranium = <liquid:uranium>;
val moltenYellorium = <liquid:yellorium>;
val pyrithroleumBucket = <forge:bucketfilled>.withTag({FluidName: "pyrithroleum", Amount: 1000});
val crudeOilBucket = <forge:bucketfilled>.withTag({FluidName: "oil", Amount: 1000});
val lavaBucket = <forge:bucketfilled>.withTag({FluidName: "lava", Amount: 1000});

recipes.addShaped("pyrithroleumCrafting",pyrithroleumBucket,[
    [lavaBucket,blazePowder,lavaBucket],
    [grainsOfInfinity,crudeOilBucket.noReturn(),grainsOfInfinity],
    [lavaBucket,blazePowder,lavaBucket]
]);

val rutilOre = <libvulpes:ore0:8>;
val ironOre = <minecraft:iron_ore>;
var ironVein = mods.immersiveengineering.Excavator.getMineral("Iron_Ore");
val moltenTitanium = <liquid:titanium>;
val pyrithroleum = <liquid:pyrithroleum>;
val chlor = <liquid:chlor>;
val moltenSodiumChloride = <liquid:molten_sodium_chloride>;
val liquifidetitaniumdioxide = <liquid:liquified_titaniumdioxide>;
val titaniumtetrachloridecarbonmonoxide = <liquid:titaniumtetrachloridecarbonmonoxide>;
val titaniumtetrachloride = <liquid:titaniumtetrachloride>;
val liquifidecarbonmonoxide = <liquid:liquified_carbonmonoxide>;

//mods.advancedrocketry.ChemicalReactor.addRecipe(<liquid:steel>*1000, 80, 65536, pyrithroleum*250, <liquid:iron>*750);

//mods.enderio.SagMill.addRecipe(IItemStack[] output, float[] chances, IIngredient input, @Optional String bonusType, @Optional int energyCost, @Optional float[] xp);
// this: mods.enderio.SagMill.addRecipe([ironGrit,rutilOre], [0.95,0.05], ironOre, "NONE", 65536, 0.0);
//or ironVein.addOre("rutilOre", 0.05);

mods.advancedrocketry.ChemicalReactor.addRecipe(<liquid:steel>*500, 400, 65536, pyrithroleum*250, <liquid:iron>*750);

//Titanium Crafting:
mods.immersiveengineering.Mixer.addRecipe(titaniumtetrachloridecarbonmonoxide*1000,chlor*1000,[rutilOre,coal],8192);
mods.advancedrocketry.Electrolyser.addRecipe(titaniumtetrachloride*500,liquifidecarbonmonoxide*500, 800, 16384, titaniumtetrachloridecarbonmonoxide*1000);
mods.advancedrocketry.ChemicalReactor.addRecipe(moltenTitanium*1000, 400, 16384, titaniumtetrachloride*500, sodiumHydroxide*500);
mods.advancedrocketry.Electrolyser.addRecipe(chlor*500,sodiumHydroxide*500, 400, 16384, moltenSodiumChloride*1000);
mods.tconstruct.Melting.addRecipe(moltenSodiumChloride * 125, industrialSalt);
mods.tconstruct.Casting.addTableRecipe(industrialSalt, <tconstruct:cast_custom:2>, moltenSodiumChloride, 125, false, 100);



//Change Plates to immersives plates
val oreDictIrdiumPlate = <ore:plateIridium>;
val oreDictTitaniumAluminidePlate = <ore:plateTitaniumAluminide>;
val oreDictTitaniumIridiumPlate = <ore:plateTitaniumIridium>;
val oreDictSiliconPlate = <ore:plateSilicon>;
val oreDictTinPlate = <ore:plateTin>;
val oreDictTitaniumPlate = <ore:plateTitanium>;

var irdiumPlate = <contenttweaker:metal_plate_iridium>;
var titaniumAluminidePlate = <contenttweaker:metal_plate_titanium_aluminide>;
var titaniumIridiumPlate = <contenttweaker:metal_plate_titanium_iridium>;
var siliconPlate = <contenttweaker:metal_plate_silicon>;
var tinPlate = <contenttweaker:metal_plate_tin>;
var titaniumPlate = <contenttweaker:metal_plate_titanium>;

oreDictIrdiumPlate.add(irdiumPlate);
oreDictTitaniumAluminidePlate.add(titaniumAluminidePlate);
oreDictTitaniumIridiumPlate.add(titaniumIridiumPlate);
oreDictSiliconPlate.add(siliconPlate);
oreDictTinPlate.add(tinPlate);
oreDictTitaniumPlate.add(titaniumPlate);

val advancedRocketryPlatesRemoveList = [
    <advancedrocketry:productplate>,
    <advancedrocketry:productplate:1>,
    <libvulpes:productplate:1>,
    <libvulpes:productplate:2>,
    <libvulpes:productplate:3>,
    <libvulpes:productplate:4>,
    <libvulpes:productplate:5>,
    <libvulpes:productplate:10>,
    <libvulpes:productplate:9>,
    <libvulpes:productplate:6>,
    <libvulpes:productplate:7>
] as IItemStack[];

for item in advancedRocketryPlatesRemoveList {
    mods.advancedrocketry.RollingMachine.removeRecipe(item);    
    oreDictIrdiumPlate.remove(item);
    oreDictTitaniumAluminidePlate.remove(item);
    oreDictTitaniumIridiumPlate.remove(item);
    oreDictSiliconPlate.remove(item);
    oreDictTinPlate.remove(item);
    oreDictTitaniumPlate.remove(item);
}

val plateMold = <immersiveengineering:mold>;
val siliconIngot = <libvulpes:productingot:3>;
val tinIngot = <libvulpes:productingot:5>;
val titaniumIngot = <libvulpes:productingot:7>;
val iridiumIngot = <libvulpes:productingot:10>;
val titaniumAluminideIngot = <advancedrocketry:productingot>;
val titaniumIridiumIngot = <advancedrocketry:productingot:1>;

mods.immersiveengineering.MetalPress.addRecipe(siliconPlate,siliconIngot,plateMold,256);
mods.immersiveengineering.MetalPress.addRecipe(tinPlate,tinIngot,plateMold,256);
mods.immersiveengineering.MetalPress.addRecipe(titaniumPlate,titaniumIngot,plateMold,256);
mods.immersiveengineering.MetalPress.addRecipe(irdiumPlate,iridiumIngot,plateMold,256);
mods.immersiveengineering.MetalPress.addRecipe(titaniumAluminidePlate,titaniumAluminideIngot,plateMold,256);
mods.immersiveengineering.MetalPress.addRecipe(titaniumIridiumPlate,titaniumIridiumIngot,plateMold,256);


//Solar & Silicon
val solarGenerator = <advancedrocketry:solargenerator>;
val solarPanelAdvR = <advancedrocketry:solarpanel>;
val smallBattery = <libvulpes:battery>;
val advRPowerOutpur = <libvulpes:forgepoweroutput>;

recipes.remove(solarGenerator);

recipes.addShaped("SolarGeneratorUpdate",solarGenerator,[
    [smallBattery,solarPanelAdvR,null],
    [advRPowerOutpur,siliconPlate,null],
    [null,null,null]
]);

//mods.advancedrocketry.RollingMachine.addRecipe(output, ticks, rf/t, waterInt, input);

mods.advancedrocketry.RollingMachine.addRecipe(siliconPlate, 20, 512, 100, siliconIngot);
mods.advancedrocketry.RollingMachine.addRecipe(tinPlate, 20, 100, 512, tinIngot);
mods.advancedrocketry.RollingMachine.addRecipe(titaniumPlate, 20, 512, 100, titaniumIngot);
mods.advancedrocketry.RollingMachine.addRecipe(irdiumPlate, 20, 512, 100, iridiumIngot);
mods.advancedrocketry.RollingMachine.addRecipe(titaniumAluminidePlate, 20, 512, 100, titaniumAluminideIngot);
mods.advancedrocketry.RollingMachine.addRecipe(titaniumIridiumPlate, 20, 512, 100, titaniumIridiumIngot);





//Yellorium
mods.advancedrocketry.ChemicalReactor.addRecipe(moltenYellorium*1000, 1200, 8192, pyrithroleum*500, moltenUranium*2000);



//enviromentalTech Crystals ??????? todo
mods.advancedrocketry.Crystallizer.addRecipe(<environmentaltech:erodium_crystal>,2400,1024,<environmentaltech:litherite_crystal>,diamond*9);
mods.advancedrocketry.Crystallizer.addRecipe(<environmentaltech:kyronite_crystal>,2400,2048,<environmentaltech:erodium_crystal>,diamond*9);
mods.advancedrocketry.Crystallizer.addRecipe(<environmentaltech:pladium_crystal>,2400,4096,<environmentaltech:kyronite_crystal>,diamond*9);
mods.advancedrocketry.Crystallizer.addRecipe(<environmentaltech:ionite_crystal>,2400,8192,<environmentaltech:pladium_crystal>,diamond*9);
mods.advancedrocketry.Crystallizer.addRecipe(<environmentaltech:aethium_crystal>,2400,16384,<environmentaltech:ionite_crystal>,diamond*9);


val circuitRecipeExchange = [
    <advancedrocketry:ic:3>,
    <advancedrocketry:ic:4>,
    <advancedrocketry:ic:5>
] as IItemStack[];

val redstoneAlloy = <enderio:item_alloy_ingot:3>;

for item in circuitRecipeExchange {
    recipes.replaceAllOccurences(redstoneDust,redstoneAlloy,item);
}




//<libvulpes:productdust>
//<advancedrocketry:productdust>
//<libvulpes:productdust:7>
//<libvulpes:ore0:8>


//<gases:gas_natural>
//<gases:gas_red>
//<gases:gas_iocalfaeus>
//<gases:gas_nitrous>

//baubles
val spectralSilt = <bountifulbaubles:spectralsilt>;
val manaPowder = <botania:manaresource:23>;
val psiDust = <psi:material>;
val experienceBottle = <minecraft:experience_bottle>;

recipes.addShaped("spectralSiltCrafting",spectralSilt,[
    [manaPowder,manaPowder,manaPowder],
    [glowstonedust,glowstonedust,glowstonedust],
    [psiDust,psiDust,psiDust]
]);





//harvestcraft