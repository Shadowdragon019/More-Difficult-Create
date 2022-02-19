var verySturyPlanks = <tag:items:crafttweaker:very_strudy/planks>;
var verySturyLogs = <tag:items:crafttweaker:very_strudy/logs>;
var reinforcedPlanks = <item:kubejs:reinforced_planks>;
var reinforcedPlanksSlab = <item:kubejs:reinforced_planks_slab>;
var ironRods = <tag:items:forge:rods/iron>;
var ironPlates = <tag:items:forge:plates/iron>;
var airItem = <item:minecraft:air>;
var woodenRods = <tag:items:forge:rods/wooden>;
var andesiteAlloy = <item:create:andesite_alloy>;



// Iron Stuff //
replaceCraftingTableShaped("minecraft/crafting_table/shaped/iron_helmet", <item:minecraft:iron_helmet>, [
	[ironPlates, ironPlates, ironPlates],
	[ironPlates, airItem, ironPlates]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/iron_chestplate", <item:minecraft:iron_chestplate>, [
	[ironPlates, airItem, ironPlates],
	[ironPlates, ironPlates, ironPlates],
	[ironPlates, ironPlates, ironPlates]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/iron_leggings", <item:minecraft:iron_leggings>, [
	[ironPlates, ironPlates, ironPlates],
	[ironPlates, airItem, ironPlates],
	[ironPlates, airItem, ironPlates]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/iron_boots", <item:minecraft:iron_boots>, [
	[ironPlates, airItem, ironPlates],
	[ironPlates, airItem, ironPlates]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/shield", <item:minecraft:shield>, [
	[ironRods, ironRods, ironRods],
	[ironRods, reinforcedPlanks, ironRods],
	[airItem, ironRods, airItem]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/iron_sword", <item:minecraft:iron_sword>, [
	[ironPlates],
	[ironPlates],
	[woodenRods]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/iron_shovel", <item:minecraft:iron_shovel>, [
	[ironPlates],
	[woodenRods],
	[woodenRods]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/iron_pickaxe", <item:minecraft:iron_pickaxe>, [
	[ironPlates, ironPlates, ironPlates],
	[airItem, woodenRods, airItem],
	[airItem, woodenRods, airItem]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/iron_axe", <item:minecraft:iron_axe>, [
	[ironPlates, ironPlates],
	[ironPlates, woodenRods],
	[airItem, woodenRods]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/iron_hoe", <item:minecraft:iron_hoe>, [
	[ironPlates, ironPlates],
	[airItem, woodenRods],
	[airItem, woodenRods]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/trowel", <item:quark:trowel>, [
	[woodenRods, airItem, airItem],
	[airItem, ironPlates, ironPlates]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/bucket", <item:minecraft:bucket>, [
	[ironPlates, airItem, ironPlates],
	[airItem, ironPlates, airItem]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/compass", <item:minecraft:compass>, [
	[airItem, ironPlates, airItem],
	[ironPlates, <tag:items:forge:dusts/redstone>, ironPlates],
	[airItem, ironPlates, airItem]
]);



// Slab Crafting //
slabCrafting("minecraft/crafting_table/shaped/slab/reinforced_planks", reinforcedPlanks, reinforcedPlanksSlab);



// Andesite Alloy //
craftingTable.remove(andesiteAlloy);
<recipetype:create:mixing>.remove(andesiteAlloy);
craftingTable.addShapeless("minecraft/crafting_table/shapeless/andesite_alloy", andesiteAlloy, [<item:create:zinc_nugget>, <item:minecraft:andesite>, <item:create:zinc_nugget>, <item:minecraft:andesite>, <item:minecraft:basalt>, <item:minecraft:andesite>, <item:create:zinc_nugget>, <item:minecraft:andesite>, <item:create:zinc_nugget>]);



// Reinforced Planks //
craftingTable.addShaped("minecraft/crafting_table/shaped/reinforced_planks", reinforcedPlanks, [
	[ironRods, verySturyPlanks, ironRods],
	[verySturyPlanks, verySturyPlanks, verySturyPlanks],
	[ironRods, verySturyPlanks, ironRods]
]);



// Cogs //
replaceCraftingTableShaped("minecraft/crafting_table/shaped/cogwheel", <item:create:cogwheel> * 4, [
	[reinforcedPlanksSlab, reinforcedPlanksSlab, reinforcedPlanksSlab],
	[reinforcedPlanksSlab, andesiteAlloy, reinforcedPlanksSlab],
	[reinforcedPlanksSlab, reinforcedPlanksSlab, reinforcedPlanksSlab]
]);
replaceCraftingTableShaped("minecraft/crafting_table/shaped/large_cogwheel", <item:create:large_cogwheel> * 2, [
	[reinforcedPlanksSlab, reinforcedPlanks, reinforcedPlanksSlab],
	[reinforcedPlanks, andesiteAlloy, reinforcedPlanks],
	[reinforcedPlanksSlab, reinforcedPlanks, reinforcedPlanksSlab]
]);

// Casings //
replaceCraftingTableShaped("minecraft/crafting_table/shaped/andesite_casing", <item:create:andesite_casing>, [
	[verySturyPlanks, verySturyPlanks, verySturyPlanks], 
	[andesiteAlloy, verySturyLogs, andesiteAlloy], 
	[verySturyPlanks, verySturyPlanks, verySturyPlanks]
]);