#loader contenttweaker
//#modloaded tconstruct
#priority 100
/*
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.liquid.ILiquidDefinition;*/
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;
import mods.contenttweaker.tconstruct.Trait;
import mods.contenttweaker.conarm.ArmorTrait;
//import crafttweaker.game.IGame;
import mods.contenttweaker.Item;

/*

val stellar = mods.contenttweaker.tconstruct.MaterialBuilder.create("stellar_mat");
val stellarArmor = mods.contenttweaker.conarm.ExtendedMaterialBuilder.create("stellarArmor_mat");

val dragonScale = mods.contenttweaker.tconstruct.MaterialBuilder.create("dragonScale_mat");
val dragonScaleArmor = mods.contenttweaker.conarm.ExtendedMaterialBuilder.create("dragonScaleArmor_mat");


stellar.color = 16777215;
stellarArmor.color = 16777215;
stellar.liquid = <liquid:stellar_alloy>;
stellarArmor.liquid = <liquid:stellar_alloy>;
stellar.castable = true;
stellarArmor.castable = true;
stellar.representativeItem = <item:enderio:item_alloy_endergy_ingot:3>;
stellarArmor.representativeItem = <item:enderio:item_alloy_endergy_ingot:3>;
stellar.localizedName="Stellar";
stellarArmor.localizedName="Stellar";
stellar.itemLocalizer = function(thisMaterial, itemName){return "Stellar " + itemName;};
stellarArmor.itemLocalizer = function(thisMaterial, itemName){return "Stellar " + itemName;};
stellar.addMaterialTrait("alien","head");
stellar.addMaterialTrait("lightweight","handle");
stellar.addMaterialTrait("holy","extra");
stellar.addMaterialTrait("coldblooded","extra");
stellar.addMaterialTrait("alien","bow");
stellar.addMaterialTrait("holy","projectile");
stellar.addMaterialTrait("coldblooded","projectile");
stellarArmor.addMaterialTrait("alien_armor","core");
stellarArmor.addMaterialTrait("dramatic_armor","core");
stellarArmor.addMaterialTrait("prideful_armor","core");
stellarArmor.addMaterialTrait("lightweight_armor","plates");
stellarArmor.addMaterialTrait("featherweight_armor","plates");
stellarArmor.addMaterialTrait("blessed_armor","plates");
stellarArmor.addMaterialTrait("indomitable_armor","trim");
stellarArmor.addMaterialTrait("invigorating_armor","trim");
//addHeadMaterialStats(int durability, float miningSpeed, float attackDamage, int harvestLevel);
stellar.addHeadMaterialStats(1500, 15.0, 17.5, 5);
//addHandleMaterialStats(float modifier, int durability);
stellar.addHandleMaterialStats(1.5, 400);
//addExtraMaterialStats(int extraDurability);
stellar.addExtraMaterialStats(750);
//addBowMaterialStats(float drawSpeed, float range, float bonusDamage);
stellar.addBowMaterialStats(0.5, 1.5, 12);
//addProjectileMaterialStats();
stellar.addProjectileMaterialStats();
//addCoreMaterialStats(float durability, float defense);
stellarArmor.addCoreMaterialStats(75.0, 55.0);
//addPlatesMaterialStats(float modifier, float durability, float toughness);
stellarArmor.addPlatesMaterialStats(2.0, 25.0, 7.5);
//addTrimMaterialStats(float durability);
stellarArmor.addTrimMaterialStats(50.0);

stellarArmor.register();
stellar.register();

dragonScale.color = 0;
dragonScaleArmor.color = 0;
dragonScale.castable = false;
dragonScaleArmor.castable = false;
dragonScale.craftable = true;
dragonScaleArmor.craftable = true;
dragonScale.representativeItem = <item:bountifulbaubles:enderdragonscale>;
dragonScaleArmor.representativeItem = <item:bountifulbaubles:enderdragonscale>;
dragonScale.localizedName="Dragonscale";
dragonScaleArmor.localizedName="Dragonscale";
dragonScale.itemLocalizer = function(thisMaterial, itemName){return "Dragonscale " + itemName;};
dragonScaleArmor.itemLocalizer = function(thisMaterial, itemName){return "Dragonscale " + itemName;};
dragonScale.addMaterialTrait("flammable","head");
dragonScale.addMaterialTrait("hellish","handle");
dragonScale.addMaterialTrait("superheat","handle");
dragonScale.addMaterialTrait("aridiculous","extra");
dragonScale.addMaterialTrait("flammable","bow");
dragonScale.addMaterialTrait("hellish","projectile");
dragonScale.addMaterialTrait("superheat","projectile");
dragonScaleArmor.addMaterialTrait("shielding_armor","core");
dragonScaleArmor.addMaterialTrait("superhot_armor","core");
dragonScaleArmor.addMaterialTrait("combustible_armor","core");
dragonScaleArmor.addMaterialTrait("autoforge_armor","plates");
dragonScaleArmor.addMaterialTrait("infernal_armor","plates");
dragonScaleArmor.addMaterialTrait("aridiculous_armor","plates");
dragonScaleArmor.addMaterialTrait("skeletal_armor","trim");
dragonScaleArmor.addMaterialTrait("invigorating_armor","trim");
//addHeadMaterialStats(int durability, float miningSpeed, float attackDamage, int harvestLevel);
dragonScale.addHeadMaterialStats(1250, 12.0, 18.0, 5);
//addHandleMaterialStats(float modifier, int durability);
dragonScale.addHandleMaterialStats(1.75, 500);
//addExtraMaterialStats(int extraDurability);
dragonScale.addExtraMaterialStats(1000);
//addBowMaterialStats(float drawSpeed, float range, float bonusDamage);
dragonScale.addBowMaterialStats(1.0, 7.0, 20.0);
//addProjectileMaterialStats();
dragonScale.addProjectileMaterialStats();
//addCoreMaterialStats(float durability, float defense);
dragonScaleArmor.addCoreMaterialStats(80.0, 55.0);
//addPlatesMaterialStats(float modifier, float durability, float toughness);
dragonScaleArmor.addPlatesMaterialStats(1.9, 20.0, 7.5);
//addTrimMaterialStats(float durability);
dragonScaleArmor.addTrimMaterialStats(75.0);

dragonScaleArmor.register();
dragonScale.register();

*/
//Liquids***********************************************************************************************************************

val waterMaterial = <blockmaterial:water>;
val lavaMaterial = <blockmaterial:lava>;

val pyrithroleum = mods.contenttweaker.VanillaFactory.createFluid("pyrithroleum", 13382400);
pyrithroleum.density = 250;
pyrithroleum.luminosity = 5;
pyrithroleum.temperature = 2500;
pyrithroleum.viscosity = 500;
pyrithroleum.material = lavaMaterial;
pyrithroleum.unlocalizedName = "pyrithroleum";
pyrithroleum.register();

val moltenSalt = mods.contenttweaker.VanillaFactory.createFluid("molten_sodium_chloride", 13421823);
moltenSalt.density = 500;
moltenSalt.luminosity = 0;
moltenSalt.temperature = 500;
moltenSalt.viscosity = 750;
moltenSalt.material = waterMaterial;
moltenSalt.unlocalizedName = "molten_sodium_chloride";
moltenSalt.register();

val liquifidetitaniumdioxide = mods.contenttweaker.VanillaFactory.createFluid("liquified_titaniumdioxide", 15921906);
liquifidetitaniumdioxide.density = 1000;
liquifidetitaniumdioxide.luminosity = 1;
liquifidetitaniumdioxide.temperature = 500;
liquifidetitaniumdioxide.viscosity = 1250;
liquifidetitaniumdioxide.material = waterMaterial;
liquifidetitaniumdioxide.unlocalizedName = "liquified_titaniumdioxide";
liquifidetitaniumdioxide.register();

val titaniumtetrachloridecarbonmonoxide = mods.contenttweaker.VanillaFactory.createFluid("titaniumtetrachloridecarbonmonoxide", 3355443);
titaniumtetrachloridecarbonmonoxide.density = 1000;
titaniumtetrachloridecarbonmonoxide.luminosity = 1;
titaniumtetrachloridecarbonmonoxide.temperature = 500;
titaniumtetrachloridecarbonmonoxide.viscosity = 1250;
titaniumtetrachloridecarbonmonoxide.material = waterMaterial;
titaniumtetrachloridecarbonmonoxide.unlocalizedName = "titaniumtetrachloridecarbonmonoxide";
titaniumtetrachloridecarbonmonoxide.register();

val chlor = mods.contenttweaker.VanillaFactory.createFluid("chlor", 10092441);
chlor.density = 1000;
chlor.luminosity = 0;
chlor.temperature = 15;
chlor.viscosity = 2000;
chlor.gaseous = true;
chlor.material = waterMaterial;
chlor.unlocalizedName = "chlor";
chlor.register();

val titaniumtetrachloride = mods.contenttweaker.VanillaFactory.createFluid("titaniumtetrachloride", 13227478);
titaniumtetrachloride.density = 1000;
titaniumtetrachloride.luminosity = 1;
titaniumtetrachloride.temperature = 500;
titaniumtetrachloride.viscosity = 1250;
titaniumtetrachloride.material = waterMaterial;
titaniumtetrachloride.unlocalizedName = "titaniumtetrachloride";
titaniumtetrachloride.register();

val liquifidecarbonmonoxide = mods.contenttweaker.VanillaFactory.createFluid("liquified_carbonmonoxide", 1710618);
liquifidecarbonmonoxide.density = 1000;
liquifidecarbonmonoxide.luminosity = 1;
liquifidecarbonmonoxide.temperature = 500;
liquifidecarbonmonoxide.viscosity = 1250;
liquifidecarbonmonoxide.material = waterMaterial;
liquifidecarbonmonoxide.unlocalizedName = "liquified_carbonmonoxide";
liquifidecarbonmonoxide.register();




val sodiumHydroxide = mods.contenttweaker.VanillaFactory.createFluid("sodium_hydroxide", 16777215);
sodiumHydroxide.density = 1000;
sodiumHydroxide.luminosity = 0;
sodiumHydroxide.temperature = 25;
sodiumHydroxide.viscosity = 1000;
sodiumHydroxide.material = waterMaterial;
sodiumHydroxide.unlocalizedName = "sodium_hydroxide";
sodiumHydroxide.register();

val alumina = mods.contenttweaker.VanillaFactory.createFluid("alumina", 12632256);
alumina.density = 1000;
alumina.luminosity = 0;
alumina.temperature = 250;
alumina.viscosity = 1000;
alumina.material = waterMaterial;
alumina.unlocalizedName = "alumina";
alumina.register();

val carbonSlury = mods.contenttweaker.VanillaFactory.createFluid("carbon_slury", 3355443);
carbonSlury.density = 250;
carbonSlury.luminosity = 0;
carbonSlury.temperature = 25;
carbonSlury.viscosity = 250;
carbonSlury.material = waterMaterial;
carbonSlury.unlocalizedName = "carbon_slury";
carbonSlury.register();

val plumbumSludge = mods.contenttweaker.VanillaFactory.createFluid("plumbum_sludge", 855309);
plumbumSludge.density = 250;
plumbumSludge.luminosity = 0;
plumbumSludge.temperature = 250;
plumbumSludge.viscosity = 250;
plumbumSludge.material = waterMaterial;
plumbumSludge.unlocalizedName = "plumbum_sludge";
plumbumSludge.register();

val ferrumLateriteSludge = mods.contenttweaker.VanillaFactory.createFluid("ferrum_laterite_sludge", 6697728);
ferrumLateriteSludge.density = 500;
ferrumLateriteSludge.luminosity = 0;
ferrumLateriteSludge.temperature = 250;
ferrumLateriteSludge.viscosity = 500;
ferrumLateriteSludge.material = waterMaterial;
ferrumLateriteSludge.unlocalizedName = "ferrum_laterite_sludge";
ferrumLateriteSludge.register();


val uranylHydroxide = mods.contenttweaker.VanillaFactory.createFluid("uranyl_hydroxide", 13421568);
uranylHydroxide.density = 250;
uranylHydroxide.luminosity = 1;
uranylHydroxide.temperature = 1000;
uranylHydroxide.viscosity = 250;
uranylHydroxide.material = waterMaterial;
uranylHydroxide.unlocalizedName = "uranyl_hydroxide";
uranylHydroxide.register();

val cuprumSludge = mods.contenttweaker.VanillaFactory.createFluid("cuprum_sludge", 15096832);
cuprumSludge.density = 750;
cuprumSludge.luminosity = 0;
cuprumSludge.temperature = 250;
cuprumSludge.viscosity = 750;
cuprumSludge.material = waterMaterial;
cuprumSludge.unlocalizedName = "cuprum_sludge";
cuprumSludge.register();

val sulfuricAcid = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_acid", 16777037);
sulfuricAcid.density = 1000;
sulfuricAcid.luminosity = 0;
sulfuricAcid.temperature = 25;
sulfuricAcid.viscosity = 1000;
sulfuricAcid.material = waterMaterial;
sulfuricAcid.unlocalizedName = "sulfuric_acid";
sulfuricAcid.register();

val crystalSlury = mods.contenttweaker.VanillaFactory.createFluid("crystal_slury", 3390463);
crystalSlury.density = 500;
crystalSlury.luminosity = 0;
crystalSlury.temperature = 250;
crystalSlury.viscosity = 500;
crystalSlury.material = waterMaterial;
crystalSlury.unlocalizedName = "crystal_slury";
crystalSlury.register();

val cobaldHydroxide = mods.contenttweaker.VanillaFactory.createFluid("cobald_hydroxide", 16744639);
cobaldHydroxide.density = 1000;
cobaldHydroxide.luminosity = 0;
cobaldHydroxide.temperature = 250;
cobaldHydroxide.viscosity = 1000;
cobaldHydroxide.material = waterMaterial;
cobaldHydroxide.unlocalizedName = "cobald_hydroxide";
cobaldHydroxide.register();

val cobalticAcidumSulfoNitrosum = mods.contenttweaker.VanillaFactory.createFluid("cobaltic_acidum_sulfo_nitrosum", 16737894);
cobalticAcidumSulfoNitrosum.density = 1000;
cobalticAcidumSulfoNitrosum.luminosity = 1;
cobalticAcidumSulfoNitrosum.temperature = 250;
cobalticAcidumSulfoNitrosum.viscosity = 1000;
cobalticAcidumSulfoNitrosum.material = waterMaterial;
cobalticAcidumSulfoNitrosum.unlocalizedName = "cobaltic_acidum_sulfo_nitrosum";
cobalticAcidumSulfoNitrosum.register();

val uranNuclide = mods.contenttweaker.VanillaFactory.createFluid("uran_nuclide", 39168);
uranNuclide.density = 750;
uranNuclide.luminosity = 1;
uranNuclide.temperature = 750;
uranNuclide.viscosity = 750;
uranNuclide.material = waterMaterial;
uranNuclide.unlocalizedName = "uran_nuclide";
uranNuclide.register();

val nitricAcid = mods.contenttweaker.VanillaFactory.createFluid("nitric_acid", 16764057);
nitricAcid.density = 1000;
nitricAcid.luminosity = 0;
nitricAcid.temperature = 25;
nitricAcid.viscosity = 1000;
nitricAcid.material = waterMaterial;
nitricAcid.unlocalizedName = "nitric_acid";
nitricAcid.register();

val arditicAcidumSulfoNitrosum = mods.contenttweaker.VanillaFactory.createFluid("arditic_acidum_sulfo_nitrosum", 15112448);
arditicAcidumSulfoNitrosum.density = 1000;
arditicAcidumSulfoNitrosum.luminosity = 1;
arditicAcidumSulfoNitrosum.temperature = 250;
arditicAcidumSulfoNitrosum.viscosity = 1000;
arditicAcidumSulfoNitrosum.material = waterMaterial;
arditicAcidumSulfoNitrosum.unlocalizedName = "arditic_acidum_sulfo_nitrosum";
arditicAcidumSulfoNitrosum.register();

val acidumSulfoNitrosum = mods.contenttweaker.VanillaFactory.createFluid("acidum_sulfo_nitrosum", 16754253);
acidumSulfoNitrosum.density = 1000;
acidumSulfoNitrosum.luminosity = 1;
acidumSulfoNitrosum.temperature = 250;
acidumSulfoNitrosum.viscosity = 1000;
acidumSulfoNitrosum.material = waterMaterial;
acidumSulfoNitrosum.unlocalizedName = "acidum_sulfo_nitrosum";
acidumSulfoNitrosum.register();

val silverNitrate = mods.contenttweaker.VanillaFactory.createFluid("silver_nitrate", 13421772);
silverNitrate.density = 1000;
silverNitrate.luminosity = 0;
silverNitrate.temperature = 250;
silverNitrate.viscosity = 1000;
silverNitrate.material = waterMaterial;
silverNitrate.unlocalizedName = "silver_nitrate";
silverNitrate.register();





//Items***********************************************************************************************************************


var irdiumPlateFactory = mods.contenttweaker.VanillaFactory.createItem("metal_plate_iridium");
var titaniumAluminidePlateFactory = mods.contenttweaker.VanillaFactory.createItem("metal_plate_titanium_aluminide");
var titaniumIridiumPlateFactory = mods.contenttweaker.VanillaFactory.createItem("metal_plate_titanium_iridium");
var siliconPlateFactory = mods.contenttweaker.VanillaFactory.createItem("metal_plate_silicon");
var tinPlateFactory = mods.contenttweaker.VanillaFactory.createItem("metal_plate_tin");
var titaniumPlateFactory = mods.contenttweaker.VanillaFactory.createItem("metal_plate_titanium");

irdiumPlateFactory.maxStackSize = 64;
titaniumAluminidePlateFactory.maxStackSize = 64;
titaniumIridiumPlateFactory.maxStackSize = 64;
siliconPlateFactory.maxStackSize = 64;
tinPlateFactory.maxStackSize = 64;
titaniumPlateFactory.maxStackSize = 64;

irdiumPlateFactory.register();
titaniumAluminidePlateFactory.register();
titaniumIridiumPlateFactory.register();
siliconPlateFactory.register();
tinPlateFactory.register();
titaniumPlateFactory.register();

