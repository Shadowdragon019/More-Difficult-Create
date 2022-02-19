import crafttweaker.api.ingredient.IIngredient;



var plateCrushing = [
	[<tag:items:forge:ingots/iron>.asIIngredient(), <tag:items:forge:plates/semi-pressed/iron>.asIIngredient(), <item:kubejs:iron_plate>],
	[<item:create:andesite_alloy>, <tag:items:forge:plates/semi-pressed/andesite_alloy>.asIIngredient(), <item:kubejs:andesite_alloy_plate>],
	[<tag:items:forge:ingots/copper>.asIIngredient(), <tag:items:forge:plates/semi-pressed/copper>.asIIngredient(), <item:kubejs:copper_plate>],
	[<tag:items:forge:ingots/brass>.asIIngredient(), <tag:items:forge:plates/semi-pressed/brass>.asIIngredient(), <item:kubejs:brass_plate>],
	[<tag:items:forge:ingots/gold>.asIIngredient(), <tag:items:forge:plates/semi-pressed/gold>.asIIngredient(), <item:kubejs:golden_plate>]
	
] as IIngredient[][];



for items in plateCrushing {
	var ingot = items[0];
	var semiPressed = items[1];
	var plate = items[2];
	
	<recipetype:lychee:block_crushing>.addJsonRecipe("lychee/anvil_crushing/plates/" + ingot.items[0].registryName.path, {
    "type": "lychee:block_crushing",
    "item_in": [
			ingot, ingot, ingot
		],
		"post": [
			{
				"type": "drop_item",
				"item": semiPressed.items[0].registryName,
				"count": 1
			}
			
		]
		
	});
	
	<recipetype:lychee:block_crushing>.addJsonRecipe("lychee/anvil_crushing/plates/" + semiPressed.items[0].registryName.path, {
    "type": "lychee:block_crushing",
    "item_in": [
			semiPressed
		],
		"post": [
			{
				"type": "drop_item",
				"item": plate.items[0].registryName,
				"count": 1
			}
			
		]
		
	});
	
	<recipetype:create:pressing>.remove(plate);
	
}