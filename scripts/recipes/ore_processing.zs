import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.IData;
import mods.create.CrushingManager;



var air = <item:minecraft:air>;



var zinc = new MaterialGroup("zinc",
	<item:create:zinc_ingot>, <item:create:zinc_block>, <item:create:zinc_nugget>, 
	<item:create:raw_zinc>.addMark("anvil_crushing", 1, 25), <item:create:raw_zinc_block>.addMark("anvil_crushing", 11, 25), <item:create:crushed_zinc_ore>, <item:kubejs:zinc_dust>, 
	new OreTypeCollection("zinc", <tag:items:forge:ores/zinc>, [
		makeOreType("stone", <item:create:zinc_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("deepslate", <item:create:deepslate_zinc_ore>.addMark("anvil_crushing", 1, 85))
		
	]), 
	air, air, air, air, 
	air, air
);
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
		makeOreType("deepslate", <item:minecraft:deepslate_iron_ore>.addMark("anvil_crushing", 1, 85)),
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
		makeOreType("sand", <item:unearthed:sandstone_gold_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("netherrack", <item:minecraft:nether_gold_ore>.addMark("anvil_crushing", 0, 55))
		
	]), 
	<item:kubejs:golden_plate>, <item:kubejs:semi-pressed_golden_plate>.addMark("anvil_crushing", 1), <item:kubejs:molten_golden>, <item:kubejs:molten_golden_plate>, 
	<item:createaddition:gold_rod>, <item:createaddition:gold_wire>
);
var lapis = new MaterialGroup("lapis", 
	<item:minecraft:lapis_lazuli>.addMark("anvil_crushing", 2), <item:minecraft:lapis_block>, air, 
	<item:minecraft:lapis_lazuli>.addMark("anvil_crushing", 8, 10), <item:minecraft:lapis_lazuli>.addMark("anvil_crushing", 72, 10), <item:minecraft:lapis_lazuli>, air, 
	new OreTypeCollection("lapis", <tag:items:forge:ores/lapis>, [
		makeOreType("stone", <item:minecraft:lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("deepslate", <item:minecraft:deepslate_lapis_ore>.addMark("anvil_crushing", 12, 15)),
		makeOreType("andesite", <item:mores:andesite_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("diorite", <item:mores:diorite_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("granite", <item:mores:granite_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("tuff", <item:mores:tuff_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("shale", <item:mores:shale_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("jasper", <item:mores:jasper_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("phyllite", <item:unearthed:phyllite_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("slate", <item:unearthed:slate_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("gabbro", <item:unearthed:gabbro_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("granodiorite", <item:unearthed:granodiorite_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("rhyolite", <item:unearthed:rhyolite_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("white_granite", <item:unearthed:white_granite_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("limestone", <item:unearthed:limestone_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("beige_limestone", <item:unearthed:beige_limestone_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("grey_limestone", <item:unearthed:grey_limestone_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("siltstone", <item:unearthed:siltstone_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("mudstone", <item:unearthed:mudstone_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("conglomerate", <item:unearthed:conglomerate_lapis_ore>.addMark("anvil_crushing", 8, 10)),
		makeOreType("sand", <item:unearthed:sandstone_lapis_ore>.addMark("anvil_crushing", 8, 10))
		
	]), 
	air, air, air, air,
	air, air
);
var netheriteScrap = new MaterialGroup("netherite_scrap",
	air, air, air, 
	air, air, <item:minecraft:netherite_scrap>, air,
	new OreTypeCollection("netherite_scrap", <tag:items:forge:ores/netherite_scrap>, [
		makeOreType("air", <item:minecraft:ancient_debris>.addMark("anvil_crushing", 1, 25))
		
	]), 
	air, air, air, air, 
	air, air
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
var quartz = new MaterialGroup("quartz",
	air, air, air, 
	air, air, <item:minecraft:quartz>, air,
	new OreTypeCollection("quartz", <tag:items:forge:ores/quartz>, [
		makeOreType("air", <item:minecraft:nether_quartz_ore>.addMark("anvil_crushing", 1, 25))
		
	]), 
	air, air, air, air, 
	air, air
);
var diamond = new MaterialGroup("diamond", 
	<item:minecraft:diamond>, <item:minecraft:diamond_block>, air, 
	<item:minecraft:diamond>.addMark("anvil_crushing", 1, 25), <item:minecraft:diamond>, <item:minecraft:diamond>, air, 
	new OreTypeCollection("diamond", <tag:items:forge:ores/diamond>, [
		makeOreType("stone", <item:minecraft:diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("deepslate", <item:minecraft:deepslate_diamond_ore>.addMark("anvil_crushing", 1, 85)),
		makeOreType("andesite", <item:mores:andesite_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("diorite", <item:mores:diorite_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("granite", <item:mores:granite_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("tuff", <item:mores:tuff_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("shale", <item:mores:shale_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("jasper", <item:mores:jasper_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("phyllite", <item:unearthed:phyllite_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("slate", <item:unearthed:slate_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("gabbro", <item:unearthed:gabbro_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("granodiorite", <item:unearthed:granodiorite_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("rhyolite", <item:unearthed:rhyolite_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("white_granite", <item:unearthed:white_granite_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("limestone", <item:unearthed:limestone_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("beige_limestone", <item:unearthed:beige_limestone_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("grey_limestone", <item:unearthed:grey_limestone_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("siltstone", <item:unearthed:siltstone_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("mudstone", <item:unearthed:mudstone_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("conglomerate", <item:unearthed:conglomerate_diamond_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("sand", <item:unearthed:sandstone_diamond_ore>.addMark("anvil_crushing", 1, 25))
		
	]), 
	air, air, air, air, 
	air, air
);
var emerald = new MaterialGroup("emerald", 
	<item:minecraft:emerald>, <item:minecraft:emerald_block>, air, 
	<item:minecraft:emerald>.addMark("anvil_crushing", 1, 25), <item:minecraft:emerald>, <item:minecraft:emerald>, air, 
	new OreTypeCollection("emerald", <tag:items:forge:ores/emerald>, [
		makeOreType("stone", <item:minecraft:emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("deepslate", <item:minecraft:deepslate_emerald_ore>.addMark("anvil_crushing", 1, 85)),
		makeOreType("andesite", <item:mores:andesite_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("diorite", <item:mores:diorite_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("granite", <item:mores:granite_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("tuff", <item:mores:tuff_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("shale", <item:mores:shale_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("jasper", <item:mores:jasper_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("phyllite", <item:unearthed:phyllite_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("slate", <item:unearthed:slate_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("gabbro", <item:unearthed:gabbro_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("granodiorite", <item:unearthed:granodiorite_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("rhyolite", <item:unearthed:rhyolite_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("white_granite", <item:unearthed:white_granite_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("limestone", <item:unearthed:limestone_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("beige_limestone", <item:unearthed:beige_limestone_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("grey_limestone", <item:unearthed:grey_limestone_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("siltstone", <item:unearthed:siltstone_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("mudstone", <item:unearthed:mudstone_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("conglomerate", <item:unearthed:conglomerate_emerald_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("sand", <item:unearthed:sandstone_emerald_ore>.addMark("anvil_crushing", 1, 25))
		
	]), 
	air, air, air, air, 
	air, air
);
var coal = new MaterialGroup("coal", 
	<item:minecraft:coal>, <item:minecraft:coal_block>, air, 
	<item:minecraft:coal>.addMark("anvil_crushing", 1, 25), <item:minecraft:coal>, <item:minecraft:coal>, air, 
	new OreTypeCollection("coal", <tag:items:forge:ores/coal>, [
		makeOreType("stone", <item:minecraft:coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("deepslate", <item:minecraft:deepslate_coal_ore>.addMark("anvil_crushing", 1, 85)),
		makeOreType("andesite", <item:mores:andesite_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("diorite", <item:mores:diorite_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("granite", <item:mores:granite_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("tuff", <item:mores:tuff_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("shale", <item:mores:shale_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("jasper", <item:mores:jasper_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("phyllite", <item:unearthed:phyllite_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("slate", <item:unearthed:slate_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("gabbro", <item:unearthed:gabbro_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("granodiorite", <item:unearthed:granodiorite_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("rhyolite", <item:unearthed:rhyolite_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("white_granite", <item:unearthed:white_granite_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("limestone", <item:unearthed:limestone_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("beige_limestone", <item:unearthed:beige_limestone_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("grey_limestone", <item:unearthed:grey_limestone_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("siltstone", <item:unearthed:siltstone_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("mudstone", <item:unearthed:mudstone_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("conglomerate", <item:unearthed:conglomerate_coal_ore>.addMark("anvil_crushing", 1, 25)),
		makeOreType("sand", <item:unearthed:sandstone_coal_ore>.addMark("anvil_crushing", 1, 25))
		
	]), 
	air, air, air, air, 
	air, air
);
var redstone = new MaterialGroup("redstone", 
	<item:minecraft:redstone>, <item:minecraft:redstone_block>, air, 
	<item:minecraft:redstone>.addMark("anvil_crushing", 5, 60), <item:minecraft:redstone>, <item:minecraft:redstone>, air, 
	new OreTypeCollection("redstone", <tag:items:forge:ores/redstone>, [
		makeOreType("stone", <item:minecraft:redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("deepslate", <item:minecraft:deepslate_redstone_ore>.addMark("anvil_crushing", 8, 40)),
		makeOreType("andesite", <item:mores:andesite_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("diorite", <item:mores:diorite_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("granite", <item:mores:granite_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("tuff", <item:mores:tuff_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("shale", <item:mores:shale_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("jasper", <item:mores:jasper_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("phyllite", <item:unearthed:phyllite_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("slate", <item:unearthed:slate_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("gabbro", <item:unearthed:gabbro_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("granodiorite", <item:unearthed:granodiorite_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("rhyolite", <item:unearthed:rhyolite_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("white_granite", <item:unearthed:white_granite_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("limestone", <item:unearthed:limestone_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("beige_limestone", <item:unearthed:beige_limestone_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("grey_limestone", <item:unearthed:grey_limestone_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("siltstone", <item:unearthed:siltstone_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("mudstone", <item:unearthed:mudstone_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("conglomerate", <item:unearthed:conglomerate_redstone_ore>.addMark("anvil_crushing", 5, 60)),
		makeOreType("sand", <item:unearthed:sandstone_redstone_ore>.addMark("anvil_crushing", 5, 60))
		
	]), 
	air, air, air, air, 
	air, air
);



var allMaterials = [zinc, copper, iron, gold, brass, andesiteAlloy, netheriteScrap, quartz, diamond, emerald, coal, redstone];
var plateMaterials = [copper, iron, gold, brass, andesiteAlloy];
var oreMaterials = [zinc, copper, iron, gold, netheriteScrap, lapis, quartz, diamond, emerald, coal, redstone];

var material as IItemStackWithMarks;
var semiPressed as IItemStackWithMarks;
var plate as IItemStackWithMarks;
var dust as IItemStackWithMarks;
var raw as IItemStackWithMarks;
var rawBlock as IItemStackWithMarks;
var crushed as IItemStackWithMarks;
var groupName as string;



for materialGroup in plateMaterials {
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
for materialGroup in oreMaterials {
	material = materialGroup.material;
	groupName = materialGroup.groupName;
	dust = materialGroup.dust;
	raw = materialGroup.raw;
	var rawACInts = raw.getMarkInts("anvil_crushing");
	crushed = materialGroup.crushed;
	rawBlock = materialGroup.rawBlock;
	var rawBlockACInts = rawBlock.getMarkInts("anvil_crushing");
	
	
	
	for oreType in materialGroup.oreTypeCollection.oreTypes {
		var ore = oreType.ore;
		var oreACInts = ore.getMarkInts("anvil_crushing");
		var oreRemainder = oreType.oreRemainder;
		var oreVariant = oreType.oreVariant;
		/*
		// Wheel Crushing //
		<recipetype:create:crushing>.removeByInput(ore);
		<recipetype:create:crushing>.addRecipe("create/wheel_crushing/ores/" + groupName + "/" + oreVariant, [dust.itemStack * (ore.getMarkInts("wheel_crushing/dust")[0]), dust.itemStack % (ore.getMarkInts("wheel_crushing/dust")[1]), <item:create:experience_nugget> % 75, oreRemainder.itemStack % (oreRemainder.getMarkInts("wheel_crushing/chance")[0])], ore, 200);
		*/
		// Anvil Crushing //
		if !(oreACInts.length == 0) {
			if !(oreACInts[0].Int == 0) {
				<recipetype:lychee:block_crushing>.addJsonRecipe("lychee/anvil_crushing/blocks/ores/" + oreVariant + "/" + groupName, {
					"type": "lychee:block_crushing",
					"landing_block": ore.registryName,
					"post": [
						{
							"type": "drop_item",
							"item": crushed.registryName,
							"count": oreACInts[0].Int
						},
						{
							"type": "drop_item",
							"item": crushed.registryName,
							"contextual": {
								"type": "chance",
								"chance": oreACInts[1].Int / 100.0
							}
						},
						{
							"type": "drop_item",
							"item": "create:experience_nugget",
							"contextual": {
								"type": "chance",
								"chance": 0.75
							}
						},
						{
							"type": "place",
							"block": oreRemainder.registryName
						}
					]
				});
			} else {
				<recipetype:lychee:block_crushing>.addJsonRecipe("lychee/anvil_crushing/blocks/ores/" + oreVariant + "/" + groupName, {
					"type": "lychee:block_crushing",
					"landing_block": ore.registryName,
					"post": [
						{
							"type": "drop_item",
							"item": crushed.registryName,
							"contextual": {
								"type": "chance",
								"chance": oreACInts[1].Int / 100.0
							}
						},
						{
							"type": "drop_item",
							"item": "create:experience_nugget",
							"contextual": {
								"type": "chance",
								"chance": 0.75
							}
						},
						{
							"type": "place",
							"block": oreRemainder.registryName
						}
					]
				});
			}
		}
	}
	if (!(rawACInts.length == 0) && !(raw.registryName == crushed.registryName)) {
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
					"count": rawACInts[0].Int
				},
				{
					"type": "drop_item",
					"item": crushed.registryName,
					"contextual": {
						"type": "chance",
						"chance": rawACInts[1].Int / 100.0
					}
				},
				{
					"type": "drop_item",
					"item": "create:experience_nugget",
					"contextual": {
						"type": "chance",
						"chance": 0.75
					}
				}
			]
		});
	}
	if (!(rawBlockACInts.length == 0) && !(rawBlock.registryName == crushed.registryName)) {
		<recipetype:lychee:block_crushing>.addJsonRecipe("lychee/anvil_crushing/blocks/ores/" + groupName, {
			"type": "lychee:block_crushing",
			"landing_block": rawBlock.registryName,
			"post": [
				{
					"type": "drop_item",
					"item": crushed.registryName,
					"count": rawBlockACInts[0].Int
				},
				{
					"type": "drop_item",
					"item": crushed.registryName,
					"contextual": {
						"type": "chance",
						"chance": rawBlockACInts[1].Int / 100.0
					}
				},
				{
					"type": "drop_item",
					"item": "create:experience_nugget",
					"count": 9,
					"contextual": {
						"type": "chance",
						"chance": 0.75
					}
				},
				{
					"type": "place",
					"block": "*"
				}
			]
		});
	}
}