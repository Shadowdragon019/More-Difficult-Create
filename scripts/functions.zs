import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.tag.MCTag;



// Crafting Table //
public function slabCrafting(name as string, block as IItemStack, slab as IItemStack) as void {
	craftingTable.addShaped(name, slab * 6, [
		[block, block, block]
	]);
}
public function replaceCraftingTableShaped(recipeName as string, output as IItemStack, ingredients as IIngredient[][]) as void {
	craftingTable.remove(output);
	craftingTable.addShaped(recipeName, output, ingredients);
}



// Rolling Bitch No Support //
public function addRollingRecipe(name as string, input as IIngredient, output as IItemStack) as void {
	<recipetype:createaddition:rolling>.addJsonRecipe("create_addition/rolling/" + name, {
		"input": input,
		"result": {
			"item": output.registryName,
			"count": output.amount
		}
		
	});
	
}



// Tags //
public function replaceTags (tag as MCTag<ItemDefinition>, items as IItemStack[]) as void {
    for item in tag {
		tag.remove(item);
		
	}
	
	for item in items {
		tag.add(item);
		
	}
	
}