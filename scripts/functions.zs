import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.tag.MCTag;
import stdlib.List;



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



// Wrapped Int //
public function makeINT(input as int) as INT {
	return new INT(input);

}



// OreType //
public function makeOreType(oreVariant as string, ore as IItemStackWithMarks) as OreType {
	var oreRemainder = <item:minecraft:air>;
	var overrideChance = 12;
	if oreVariant == "stone" {
		oreRemainder = <item:minecraft:cobblestone>;
		
	} else if oreVariant == "granite" {
		oreRemainder = <item:minecraft:granite>;
		
	} else if oreVariant == "diorite" {
		oreRemainder = <item:minecraft:diorite>;
		
	} else if oreVariant == "tuff" {
		oreRemainder = <item:minecraft:tuff>;
		
	} else if oreVariant == "deepslate" {
		oreRemainder = <item:minecraft:cobbled_deepslate>;
		
	} else if oreVariant == "andesite" {
		oreRemainder = <item:minecraft:andesite>;
		
	} else if oreVariant == "shale" {
		oreRemainder = <item:quark:shale>;
		
	} else if oreVariant == "jasper" {
		oreRemainder = <item:quark:jasper>;
		
	} else if oreVariant == "phyllite" {
		oreRemainder = <item:unearthed:cobbled_phyllite>;
		
	} else if oreVariant == "slate" {
		oreRemainder = <item:unearthed:cobbled_slate>;
		
	} else if oreVariant == "gabbro" {
		oreRemainder = <item:unearthed:gabbro>;
		
	} else if oreVariant == "granodiorite" {
		oreRemainder = <item:unearthed:granodiorite>;
		
	} else if oreVariant == "rhyolite" {
		oreRemainder = <item:unearthed:rhyolite>;
		
	} else if oreVariant == "white_granite" {
		oreRemainder = <item:unearthed:white_granite>;
		
	} else if oreVariant == "limestone" {
		oreRemainder = <item:unearthed:cobbled_limestone>;
		
	} else if oreVariant == "beige_limestone" {
		oreRemainder = <item:unearthed:cobbled_beige_limestone>;
		
	} else if oreVariant == "grey_limestone" {
		oreRemainder = <item:unearthed:cobbled_grey_limestone>;
		
	} else if oreVariant == "siltstone" {
		oreRemainder = <item:unearthed:siltstone>;
		
	} else if oreVariant == "mudstone" {
		oreRemainder = <item:unearthed:mudstone>;
		
	} else if oreVariant == "conglomerate" {
		oreRemainder = <item:unearthed:conglomerate>;
		
	} else if oreVariant == "sand" {
		oreRemainder = <item:minecraft:sand>;
		overrideChance = 48;
		
	} else if oreVariant == "sandstone" {
		oreRemainder = <item:minecraft:sandstone>;
		
	} else if oreVariant == "netherrack" {
		oreRemainder = <item:minecraft:netherrack>;
		
	} else if oreVariant == "air" {
		oreRemainder = <item:minecraft:air>;
		
	}
	
	return new OreType(oreVariant, ore, oreRemainder.addMark("anvil_crushing", overrideChance));

}



public function nibCrafting(name as string, nugget as IItemStack, ingot as IItemStack, block as IItemStack) as void {
	craftingTable.addShapeless("minecraft/crafting_table/shaped/" + name + "/ingot_to_nugget", nugget * 9, 
		[ingot]
	);
	craftingTable.addShaped("minecraft/crafting_table/shaped/" + name + "/nugget_to_ingot", ingot, [
		[nugget, nugget, nugget],
		[nugget, nugget, nugget],
		[nugget, nugget, nugget]
	]);
	craftingTable.addShapeless("minecraft/crafting_table/shaped/" + name + "/block_to_ingot", ingot * 9, 
		[block]
	);
	craftingTable.addShaped("minecraft/crafting_table/shaped/" + name +"/ingot_to_block", block, [
		[ingot, ingot, ingot],
		[ingot, ingot, ingot],
		[ingot, ingot, ingot]
	]);
}