import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.IData;
import mods.create.CrushingManager;



var air = <item:minecraft:air>;


/*
var zinc = new MaterialGroup("zinc",
	<item:minecraft:zinc_ingot>.addMark("anvil_processing", 4), <item:minecraft:zinc_block>, <item:create:zinc_nugget>, 
	<item:minecraft:raw_zinc>, <item:minecraft:raw_zinc_block>, <item:create:crushed_zinc_ore>, <item:kubejs:zinc_dust>, 
	new OreTypeCollection("zinc", <tag:items:forge:ores/zinc>, [
		makeOreType("stone", <item:minecraft:zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("deepslate", <item:minecraft:deepslate_zinc_ore>.addMark("wheel_crushing/dust", 7, 25)),
		makeOreType("andesite", <item:mores:andesite_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("diorite", <item:mores:diorite_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("granite", <item:mores:granite_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("tuff", <item:mores:tuff_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("shale", <item:mores:shale_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("jasper", <item:mores:jasper_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("phyllite", <item:unearthed:phyllite_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("slate", <item:unearthed:slate_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("gabbro", <item:unearthed:gabbro_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("granodiorite", <item:unearthed:granodiorite_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("rhyolite", <item:unearthed:rhyolite_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("white_granite", <item:unearthed:white_granite_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("limestone", <item:unearthed:limestone_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("beige_limestone", <item:unearthed:beige_limestone_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("grey_limestone", <item:unearthed:grey_limestone_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("siltstone", <item:unearthed:siltstone_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("mudstone", <item:unearthed:mudstone_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("conglomerate", <item:unearthed:conglomerate_zinc_ore>.addMark("wheel_crushing/dust", 5, 25)),
		makeOreType("sandstone", <item:unearthed:sandstone_zinc_ore>.addMark("wheel_crushing/dust", 5, 25))
		
	]), 
	<item:kubejs:zinc_plate>, <item:kubejs:semi-pressed_zinc_plate>.addMark("anvil_crushing", 1), <item:kubejs:molten_zinc>, <item:kubejs:molten_zinc_plate>, 
	<item:createaddition:zinc_rod>, <item:createaddition:zinc_wire>
);
*/
var copper = new MaterialGroup("copper", 
	<item:minecraft:copper_ingot>.addMark("anvil_crushing", 4), <item:minecraft:copper_block>, <item:create:copper_nugget>, 
	<item:minecraft:raw_copper>.addMark("anvil_crushing", 4, 35), <item:minecraft:raw_copper_block>.addMark("anvil_crushing", 39, 35), <item:create:crushed_copper_ore>, <item:kubejs:copper_dust>, 
	new OreTypeCollection("copper", <tag:items:forge:ores/copper>, [
		makeOreType("stone", <item:minecraft:copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("deepslate", <item:minecraft:deepslate_copper_ore>.addMark("anvil_crushing", 6, 55)),
		makeOreType("andesite", <item:mores:andesite_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("diorite", <item:mores:diorite_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("granite", <item:mores:granite_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("tuff", <item:mores:tuff_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("shale", <item:mores:shale_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("jasper", <item:mores:jasper_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("phyllite", <item:unearthed:phyllite_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("slate", <item:unearthed:slate_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("gabbro", <item:unearthed:gabbro_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("granodiorite", <item:unearthed:granodiorite_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("rhyolite", <item:unearthed:rhyolite_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("white_granite", <item:unearthed:white_granite_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("limestone", <item:unearthed:limestone_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("beige_limestone", <item:unearthed:beige_limestone_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("grey_limestone", <item:unearthed:grey_limestone_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("siltstone", <item:unearthed:siltstone_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("mudstone", <item:unearthed:mudstone_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("conglomerate", <item:unearthed:conglomerate_copper_ore>.addMark("anvil_crushing", 4, 35)),
		makeOreType("sand", <item:unearthed:sandstone_copper_ore>.addMark("anvil_crushing", 4, 35))
		
	]), 
	<item:kubejs:copper_plate>, <item:kubejs:semi-pressed_copper_plate>.addMark("anvil_crushing", 1), <item:kubejs:molten_copper>, <item:kubejs:molten_copper_plate>, 
	<item:createaddition:copper_rod>, <item:createaddition:copper_wire>
);
var iron = new MaterialGroup("iron", 
	<item:minecraft:iron_ingot>.addMark("anvil_crushing", 3), <item:minecraft:iron_block>, <item:minecraft:iron_nugget>, 
	<item:minecraft:raw_iron>.addMark("anvil_crushing", 1, 25), <item:minecraft:raw_iron_block>.addMark("anvil_crushing", 11, 25), <item:create:crushed_iron_ore>, <item:kubejs:iron_dust>, 
	new OreTypeCollection("iron", <tag:items:forge:ores/iron>, [
		makeOreType("stone", <item:minecraft:iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("deepslate", <item:minecraft:deepslate_iron_ore>.addMark("anvil_crushing", 1, 99)),
		makeOreType("andesite", <item:mores:andesite_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("diorite", <item:mores:diorite_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("granite", <item:mores:granite_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("tuff", <item:mores:tuff_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("shale", <item:mores:shale_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("jasper", <item:mores:jasper_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("phyllite", <item:unearthed:phyllite_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("slate", <item:unearthed:slate_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("gabbro", <item:unearthed:gabbro_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("granodiorite", <item:unearthed:granodiorite_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("rhyolite", <item:unearthed:rhyolite_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("white_granite", <item:unearthed:white_granite_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("limestone", <item:unearthed:limestone_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("beige_limestone", <item:unearthed:beige_limestone_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("grey_limestone", <item:unearthed:grey_limestone_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("siltstone", <item:unearthed:siltstone_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("mudstone", <item:unearthed:mudstone_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("conglomerate", <item:unearthed:conglomerate_iron_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("sand", <item:unearthed:sandstone_iron_ore>.addMark("anvil_crushing", 1, 25))
		
	]), 
	<item:kubejs:iron_plate>, <item:kubejs:semi-pressed_iron_plate>.addMark("anvil_crushing", 1), <item:kubejs:molten_iron>, <item:kubejs:molten_iron_plate>, 
	<item:kubejs:iron_rod>, <item:createaddition:iron_wire>
);
var gold = new MaterialGroup("gold", 
	<item:minecraft:gold_ingot>.addMark("anvil_crushing", 2), <item:minecraft:gold_block>, <item:minecraft:gold_nugget>, 
	<item:minecraft:raw_gold>.addMark("anvil_crushing", 1, 25), <item:minecraft:raw_gold_block>.addMark("anvil_crushing", 11, 25), <item:create:crushed_gold_ore>, <item:kubejs:golden_dust>, 
	new OreTypeCollection("gold", <tag:items:forge:ores/gold>, [
		makeOreType("stone", <item:minecraft:gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("deepslate", <item:minecraft:deepslate_gold_ore>.addMark("anvil_crushing", 1, 85)),
		makeOreType("andesite", <item:mores:andesite_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("diorite", <item:mores:diorite_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("granite", <item:mores:granite_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("tuff", <item:mores:tuff_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("shale", <item:mores:shale_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("jasper", <item:mores:jasper_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("phyllite", <item:unearthed:phyllite_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("slate", <item:unearthed:slate_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("gabbro", <item:unearthed:gabbro_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("granodiorite", <item:unearthed:granodiorite_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("rhyolite", <item:unearthed:rhyolite_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("white_granite", <item:unearthed:white_granite_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("limestone", <item:unearthed:limestone_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("beige_limestone", <item:unearthed:beige_limestone_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("grey_limestone", <item:unearthed:grey_limestone_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("siltstone", <item:unearthed:siltstone_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("mudstone", <item:unearthed:mudstone_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("conglomerate", <item:unearthed:conglomerate_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("sand", <item:unearthed:sandstone_gold_ore>.addMark("anvil_crushing", 1, 25))
		
	]), 
	<item:kubejs:golden_plate>, <item:kubejs:semi-pressed_golden_plate>.addMark("anvil_crushing", 1), <item:kubejs:molten_golden>, <item:kubejs:molten_golden_plate>, 
	<item:createaddition:gold_rod>, <item:createaddition:gold_wire>
);
var brass = new MaterialGroup("brass",
	<item:create:brass_ingot>.addMark("anvil_crushing", 2), <item:create:brass_block>, <item:create:brass_nugget>, 
	air, air, air, air, 
	new OreTypeCollection("brass", <tag:items:forge:ores>, []), 
	<item:kubejs:brass_plate>, <item:kubejs:semi-pressed_brass_plate>.addMark("anvil_crushing", 1), <item:kubejs:molten_brass>, <item:kubejs:molten_brass_plate>, 
	<item:createaddition:brass_rod>, air
);
var andesiteAlloy = new MaterialGroup("andesite_alloy",
	<item:create:andesite_alloy>.addMark("anvil_crushing", 3), air, air, 
	air, air, air, air, 
	new OreTypeCollection("andesite_alloy", <tag:items:forge:ores>, []), 
	<item:kubejs:andesite_alloy_plate>, <item:kubejs:semi-pressed_andesite_alloy_plate>.addMark("anvil_crushing", 1), <item:kubejs:molten_andesite_alloy>, <item:kubejs:molten_andesite_alloy_plate>, 
	<item:create:shaft>, air
);



var allMaterials = [copper, iron, gold, brass, andesiteAlloy];
var oreMateraisl = [copper, iron, gold];

var material as IItemStackWithMarks;
var semiPressed as IItemStackWithMarks;
var plate as IItemStackWithMarks;
var dust as IItemStackWithMarks;
var raw as IItemStackWithMarks;
var rawBlock as IItemStackWithMarks;
var crushed as IItemStackWithMarks;
var groupName as string;



for materialGroup in allMaterials {
	var secondNumber as int;
	material = materialGroup.material;
	semiPressed = materialGroup.plateSemiPressed;
	plate = materialGroup.plate;
	groupName = materialGroup.groupName;
	
	
	
	var semiPressedArray = new ListData();
	secondNumber = material.getMarkInts("anvil_crushing")[0];
	for i in 0 .. secondNumber {
		semiPressedArray.add(material.itemStack);
		
	}
	var plateArray = new ListData();
	secondNumber = semiPressed.getMarkInts("anvil_crushing")[0];
	for i in 0 .. secondNumber {
		plateArray.add(semiPressed.itemStack);
		
	}
	
	
	
	<recipetype:lychee:block_crushing>.addJsonRecipe("lychee/anvil_crushing/semi_pressed_plates/" + materialGroup.groupName, {
    "type": "lychee:block_crushing",
    "item_in": semiPressedArray,
		"post": [
			{
				"type": "drop_item",
				"item": semiPressed.registryName
			}
			
		]
		
	});
	<recipetype:lychee:block_crushing>.addJsonRecipe("lychee/anvil_crushing/plates/" + materialGroup.groupName, {
    "type": "lychee:block_crushing",
    "item_in": plateArray,
		"post": [
			{
				"type": "drop_item",
				"item": plate.registryName
			}
			
		]
		
	});
	
	
	
	
	<recipetype:create:pressing>.remove(plate);
	
	
	
}



// Ore Crushing //
for materialGroup in oreMateraisl {
	material = materialGroup.material;
	groupName = materialGroup.groupName;
	dust = materialGroup.dust;
	raw = materialGroup.raw;
	crushed = materialGroup.crushed;
	rawBlock = materialGroup.rawBlock;
	
	
	
	for oreType in materialGroup.oreTypeCollection.oreTypes {
		var ore = oreType.ore;
		var oreRemainder = oreType.oreRemainder;
		/*
		// Wheel Crushing //
		<recipetype:create:crushing>.removeByInput(ore);
		<recipetype:create:crushing>.addRecipe("create/wheel_crushing/ores/" + groupName + "/" + oreType.oreVariant, [dust.itemStack * (ore.getMarkInts("wheel_crushing/dust")[0]), dust.itemStack % (ore.getMarkInts("wheel_crushing/dust")[1]), <item:create:experience_nugget> % 75, oreRemainder.itemStack % (oreRemainder.getMarkInts("wheel_crushing/chance")[0])], ore, 200);
		*/
		// Anvil Crushing //
		<recipetype:lychee:block_crushing>.addJsonRecipe("lychee/anvil_crushing/blocks/ores/" + oreType.oreVariant + "/" + groupName, {
			"type": "lychee:block_crushing",
			"landing_block": oreType.ore.registryName,
			"post": [
				{
					"type": "drop_item",
					"item": crushed.registryName,
					"count": oreType.ore.getMarkInts("anvil_crushing")[0].Int
				},
				{
					"type": "drop_item",
					"item": crushed.registryName,
					"contextual": {
						"type": "chance",
						"chance": oreType.ore.getMarkInts("anvil_crushing")[1].Int / 100.0
					}
				},
				{
					"type": "place",
					"block": oreType.oreRemainder.registryName
				}
			]
			
		});
		
	}
	<recipetype:lychee:block_crushing>.addJsonRecipe("lychee/anvil_crushing/items/ores/" + groupName, {
		"type": "lychee:block_crushing",
		"item_in": [
			{
				"item": raw.registryName
			}
		],
		"post": [
			{
				"type": "drop_item",
				"item": crushed.registryName,
				"count": raw.getMarkInts("anvil_crushing")[0].Int
			},
			{
				"type": "drop_item",
				"item": crushed.registryName,
				"contextual": {
					"type": "chance",
					"chance": raw.getMarkInts("anvil_crushing")[1].Int / 100.0
				}
			}
		]
		
	});
	// Whenever I uncomment this code I get a weird error
	<recipetype:lychee:block_crushing>.addJsonRecipe("lychee/anvil_crushing/blocks/ores/" + groupName, {
		"type": "lychee:block_crushing",
		"item_in": [
			{
				"item": rawBlock.registryName
			}
		],
		"post": [
			{
				"type": "drop_item",
				"item": crushed.registryName,
				"count": rawBlock.getMarkInts("anvil_crushing")[0].Int
			},
			{
				"type": "drop_item",
				"item": crushed.registryName,
				"contextual": {
					"type": "chance",
					"chance": rawBlock.getMarkInts("anvil_crushing")[1].Int / 100.0
				}
			}
		]
		
	});
	
}