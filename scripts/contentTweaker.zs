#loader contenttweaker
#modloaded tconstruct

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.liquid.ILiquidDefinition;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;
import mods.contenttweaker.tconstruct.Trait;
import mods.contenttweaker.conarm.ArmorTrait;
import crafttweaker.game.IGame;

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


//***********************************************************************************************************************


val pyrithroleum = mods.contenttweaker.VanillaFactory.createFluid("pyrithroleum", 13382400);
pyrithroleum.density = 250;
pyrithroleum.luminosity = 5;
pyrithroleum.temperature = 2500;
pyrithroleum.viscosity = 500;
val lavaMaterial = <blockmaterial:lava>;
pyrithroleum.material = lavaMaterial;
pyrithroleum.unlocalizedName = "Pyrithroleum";
pyrithroleum.register();

val chlor = mods.contenttweaker.VanillaFactory.createFluid("chlor", 10092441);
chlor.density = 1000;
chlor.luminosity = 0;
chlor.temperature = 15;
chlor.viscosity = 2000;
chlor.gaseous = true;
val waterMaterial = <blockmaterial:water>;
chlor.material = waterMaterial;
chlor.unlocalizedName = "Chlor";
chlor.register();

val moltenSalt = mods.contenttweaker.VanillaFactory.createFluid("moltenSalt", 13421823);
moltenSalt.density = 500;
moltenSalt.luminosity = 0;
moltenSalt.temperature = 500;
moltenSalt.viscosity = 750;
moltenSalt.material = waterMaterial;
moltenSalt.unlocalizedName = "Molten Sodium-chloride";
moltenSalt.register();

val liquifidetitaniumdioxide = mods.contenttweaker.VanillaFactory.createFluid("liquifiedtitaniumdioxide", 15921906);
liquifidetitaniumdioxide.density = 1000;
liquifidetitaniumdioxide.luminosity = 1;
liquifidetitaniumdioxide.temperature = 500;
liquifidetitaniumdioxide.viscosity = 1250;
liquifidetitaniumdioxide.material = waterMaterial;
liquifidetitaniumdioxide.unlocalizedName = "Liquified Titaniumdioxide";
liquifidetitaniumdioxide.register();

val titaniumtetrachloridecarbonmonoxide = mods.contenttweaker.VanillaFactory.createFluid("titaniumtetrachloridecarbonmonoxide", 3355443);
titaniumtetrachloridecarbonmonoxide.density = 1000;
titaniumtetrachloridecarbonmonoxide.luminosity = 1;
titaniumtetrachloridecarbonmonoxide.temperature = 500;
titaniumtetrachloridecarbonmonoxide.viscosity = 1250;
titaniumtetrachloridecarbonmonoxide.material = waterMaterial;
titaniumtetrachloridecarbonmonoxide.unlocalizedName = "Titaniumtetrachloridecarbonmonoxide";
titaniumtetrachloridecarbonmonoxide.register();

val titaniumtetrachloride = mods.contenttweaker.VanillaFactory.createFluid("titaniumtetrachloride", 13227478);
titaniumtetrachloride.density = 1000;
titaniumtetrachloride.luminosity = 1;
titaniumtetrachloride.temperature = 500;
titaniumtetrachloride.viscosity = 1250;
titaniumtetrachloride.material = waterMaterial;
titaniumtetrachloride.unlocalizedName = "Titaniumtetrachloride";
titaniumtetrachloride.register();

val liquifidecarbonmonoxide = mods.contenttweaker.VanillaFactory.createFluid("liquifiedcarbonmonoxide", 1710618);
liquifidecarbonmonoxide.density = 1000;
liquifidecarbonmonoxide.luminosity = 1;
liquifidecarbonmonoxide.temperature = 500;
liquifidecarbonmonoxide.viscosity = 1250;
liquifidecarbonmonoxide.material = waterMaterial;
liquifidecarbonmonoxide.unlocalizedName = "Liquified Carbonmonoxide";
liquifidecarbonmonoxide.register();

