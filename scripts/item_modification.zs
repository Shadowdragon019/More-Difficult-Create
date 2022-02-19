import crafttweaker.api.item.IItemStack;
import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.text.Component;
import crafttweaker.api.text.TextComponent;
import crafttweaker.api.text.ChatFormatting;
import mods.jei.JEI;



// Food //
<item:minecraft:glow_berries>.food = FoodProperties.create(4, 0.375);



// Tooltips //
for item in <tag:items:crafttweaker:very_strudy> {
	item.defaultInstance.addTooltip("Very sturdy" as Component);
	
}



// Disable JEI Items //
for item in [<item:create:iron_sheet>, <item:create:golden_sheet>, <item:create:brass_sheet>, <item:create:copper_sheet>, <item:createaddition:iron_rod>] {
	JEI.hideIngredient(item);
	item.addTooltip(("JEI Hidden" as TextComponent).setStyle(ChatFormatting.GRAY) as TextComponent);
}
