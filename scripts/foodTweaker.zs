import crafttweaker.item.IItemStack;
import mods.foodtweaker.Tweaker.changeFoodStats;
import foodtweaker.FoodInfo;

val foodEditable = [
    <harvestcraft:plumsmoothieitem>,
    <harvestcraft:peachsmoothieitem>,
    <harvestcraft:gooseberrysmoothieitem>,
    <harvestcraft:applesmoothieitem>,
    <harvestcraft:coconutsmoothieitem>,
    <harvestcraft:cranberrysmoothieitem>,
    <harvestcraft:grapesmoothieitem>,
    <harvestcraft:pearsmoothieitem>,
    <harvestcraft:plumsmoothieitem>
] as IItemStack[];

//mods.foodtweaker.changeFoodStats(itemstack,FoodInfo(int healAmount, float saturation, boolean isMeat, boolean alwaysEdible))
for item in foodEditable {
    changeFoodStats(item,FoodInfo(0,0.0,false,true));
}