import crafttweaker.api.item.IItemStack;
import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.text.Component;
import crafttweaker.api.text.TextComponent;
import crafttweaker.api.text.ChatFormatting;
import mods.jei.JEI;
import mods.create.MechanicalCrafterManager;
import mods.create.PressingManager;



// Food //
<item:minecraft:glow_berries>.food = FoodProperties.create(4, 0.375);



// Tooltips //
for item in <tag:items:crafttweaker:very_strudy> {
	item.defaultInstance.addTooltip("Very sturdy" as Component);
	
}



// Disable JEI Items //
for item in [<item:create:iron_sheet>, <item:create:golden_sheet>, <item:create:brass_sheet>, <item:create:copper_sheet>, <item:createaddition:iron_rod>, <item:createaddition:electric_motor>, <item:createaddition:alternator>, <item:createaddition:creative_energy>, <item:createaddition:connector>, <item:createaddition:accumulator>, <item:createaddition:capacitor>, <item:createaddition:tesla_coil>, <item:createaddition:gold_wire>, <item:createaddition:zinc_sheet>, <item:createaddition:gold_spool>, <item:createaddition:crude_burner>, <item:createaddition:iron_wire>, <item:createaddition:copper_wire>, <item:createaddition:furnace_burner>, <item:createaddition:redstone_relay>, <item:createaddition:copper_spool>, <item:createaddition:spool>, <item:createaddition:heater>, <item:createaddition:copper_rod>, <item:createaddition:gold_rod>, <item:createaddition:brass_rod>] {
	JEI.hideIngredient(item);
	craftingTable.remove(item);
	<recipetype:create:pressing>.remove(item);
	<recipetype:create:mechanical_crafting>.remove(item);
	<recipetype:createaddition:rolling>.remove(item);
	item.addTooltip(("Disabled" as TextComponent).setStyle(ChatFormatting.GRAY) as TextComponent);
}
