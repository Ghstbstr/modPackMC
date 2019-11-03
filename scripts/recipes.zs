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
val temp4 = <liquid:water_purple>;
val uranNuclide = <liquid:water_magenta>;
val nitricAcid = <liquid:water_pink>;
val destiWater = <liquid:dist_water>;
val water = <liquid:water>;
val lava = <liquid:lava>;
val arditicAcidumSulfoNitrosum = <liquid:glowing_water_pink>;
val acidumSulfoNitrosum = <liquid:glowing_water_orange>;
val cobalticAcidumSulfoNitrosum = <liquid:glowing_water_purple>;
val silverNitrate = <liquid:glowing_water_silver>;

//crusher
mods.immersiveengineering.Crusher.removeRecipe(gravel);
mods.immersiveengineering.Crusher.addRecipe(gravel,cobblestone,1024,industrialSalt,0.25);
mods.immersiveengineering.Crusher.removeRecipe(sand);
mods.immersiveengineering.Crusher.addRecipe(sand,gravel,1024,industrialSalt,0.25);
mods.immersiveengineering.Crusher.addRecipe(slag,charCoal,2048,sulfur,0.1);
mods.immersiveengineering.Crusher.addRecipe(null,sand,1024,nitrate,0.1);

//mixer
mods.immersiveengineering.Mixer.addRecipe(plumbumSludge*120,sulfuricAcid*50,[cobblestone*8],1024);
mods.immersiveengineering.Mixer.addRecipe(sulfuricAcid*500,destiWater*500,[sulfur],1024);
mods.immersiveengineering.Mixer.addRecipe(ferrumLateriteSludge*120,sulfuricAcid*50,[gravel*4],1024);
mods.immersiveengineering.Mixer.addRecipe(cuprumSludge*120,sulfuricAcid*50,[sand*4],1024);
mods.immersiveengineering.Mixer.addRecipe(sodiumHydroxide*1000,sulfuricAcid*1000,[industrialSalt],1024);
mods.immersiveengineering.Mixer.addRecipe(nitricAcid*1000,sulfuricAcid*1000,[nitrate],1024);

//bottling
mods.immersiveengineering.BottlingMachine.addRecipe(leadGrit,slag,plumbumSludge*60);
mods.immersiveengineering.BottlingMachine.addRecipe(ironGrit,industrialSalt,ferrumLateriteSludge*240);
mods.immersiveengineering.BottlingMachine.addRecipe(copperGrit,industrialSalt,cuprumSludge*240);
mods.immersiveengineering.BottlingMachine.addRecipe(arditeDust,sulfur,arditicAcidumSulfoNitrosum*1000);
mods.immersiveengineering.BottlingMachine.addRecipe(cobaltDust,silverGrit,cobaldHydroxide*1000);

//refinery
mods.immersiveengineering.Refinery.addRecipe(uranylHydroxide*100,plumbumSludge*60,sulfuricAcid*50,1024);
mods.immersiveengineering.Refinery.addRecipe(alumina*170,ferrumLateriteSludge*120,sodiumHydroxide*50,1024);
mods.immersiveengineering.Refinery.addRecipe(silverNitrate*150,cuprumSludge*120,nitricAcid*50,1024);
mods.immersiveengineering.Refinery.addRecipe(uranNuclide*100,uranylHydroxide*50,nitricAcid*50,1024);
mods.immersiveengineering.Refinery.addRecipe(crystalSlury*150,carbonSlury*50,lava*100,1024);
mods.immersiveengineering.Refinery.addRecipe(arditicAcidumSulfoNitrosum*150,plumbumSludge*60,acidumSulfoNitrosum*100,1024);
mods.immersiveengineering.Refinery.addRecipe(acidumSulfoNitrosum*200,sulfuricAcid*50,nitricAcid*150,1024);
mods.immersiveengineering.Refinery.addRecipe(cobaldHydroxide*500,cobalticAcidumSulfoNitrosum*450,nitricAcid*50,1024);
mods.immersiveengineering.Refinery.addRecipe(cobalticAcidumSulfoNitrosum*450,acidumSulfoNitrosum*100,cuprumSludge*360,1024);

//fermenter
mods.immersiveengineering.Fermenter.addRecipe(slag,carbonSlury*100,charCoal,1024);

//destilTower
//addRecipe(fliud[] out, item[] out, fluid in, energy, time, change[])
mods.immersivepetroleum.Distillation.addRecipe([],[diamond,lapisLazuli,emerald],crystalSlury*150,4096,8,[0.016,0.032,0.008]);
mods.immersivepetroleum.Distillation.addRecipe([],[uraniumGrit],uranNuclide*200,4096,8,[0.06]);
mods.immersivepetroleum.Distillation.addRecipe([],[aluminiumGrit,coal],alumina*170,4096,8,[0.25,0.125]);






//extrem reactors************************************************************************************
val steelReactors = <bigreactors:ingotsteel>;
val blockSteelReactors = <bigreactors:blocksteel>;

recipes.remove(steelReactors);
recipes.remove(blockSteelReactors);

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





