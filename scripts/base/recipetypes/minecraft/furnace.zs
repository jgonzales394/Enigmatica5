#priority 99

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

var recipes as IItemStack[IItemStack] = {
    <item:occultism:iron_dust> : <tag:forge:ingots/iron>.firstItem,
    <item:occultism:gold_dust> : <tag:forge:ingots/gold>.firstItem,
    <item:occultism:copper_dust> : <tag:forge:ingots/copper>.firstItem,
    <item:occultism:silver_dust> : <tag:forge:ingots/silver>.firstItem
};

var xp = 0.25;
var processingTime = 100;

for input, output in recipes {
    blastFurnace.addRecipe("blasting_" + formatRecipeName(ingot) + "_from_occultism_dust", output, input, xp, processingTime / 2);
    furnace.addRecipe("smelting_" + formatRecipeName(ingot) + "_from_occultism_dust", output, input, xp, processingTime);
}
