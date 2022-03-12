#priority 1



// Sturdy //
<tag:items:crafttweaker:very_strudy/logs>.add(<tag:items:minecraft:spruce_logs>);
<tag:items:crafttweaker:very_strudy/logs>.add(<tag:items:minecraft:dark_oak_logs>);
<tag:items:crafttweaker:very_strudy/planks>.add(<item:minecraft:spruce_planks>, <item:minecraft:dark_oak_planks>);
<tag:items:crafttweaker:very_strudy>.add(<tag:items:crafttweaker:very_strudy/logs>);
<tag:items:crafttweaker:very_strudy>.add(<tag:items:crafttweaker:very_strudy/planks>);



// Plates //
<tag:items:minecraft:piglin_loved>.remove(<item:create:golden_sheet>);
<tag:items:minecraft:piglin_loved>.add(<item:kubejs:golden_plate>);
replaceTags(<tag:items:forge:plates>, [<item:kubejs:iron_plate>, <item:kubejs:andesite_alloy_plate>, <item:kubejs:golden_plate>, <item:kubejs:brass_plate>, <item:kubejs:copper_plate>]);
replaceTags(<tag:items:forge:plates/iron>, [<item:kubejs:iron_plate>]);
replaceTags(<tag:items:forge:plates/gold>, [<item:kubejs:golden_plate>]);
replaceTags(<tag:items:forge:plates/brass>, [<item:kubejs:brass_plate>]);
replaceTags(<tag:items:forge:plates/copper>, [<item:kubejs:copper_plate>]);



// Rods //
// Eventually replace
<tag:items:forge:rods/all_metal>.add(<tag:items:forge:rods>);
replaceTags(<tag:items:forge:rods>, [<item:kubejs:iron_rod>]);
replaceTags(<tag:items:forge:rods/iron>, [<item:kubejs:iron_rod>]);



// Lychee //
<tag:items:forge:ingots>.add(<item:create:andesite_alloy>);
<tag:items:lychee:fire_immune>.add(<tag:items:forge:ingots>);
<tag:items:lychee:fire_immune>.add(<tag:items:forge:plates>);
<tag:items:lychee:fire_immune>.add(<tag:items:forge:plates/semi-pressed>);
<tag:items:lychee:fire_immune>.add(<tag:items:forge:hots>);
//<tag:items:lychee:fire_immune>.add();
//<tag:items:lychee:fire_immune>.add();



// Blackstonestone Bulb //
// <tag:blocks:crafttweaker:blackstone_blub_spawnable>.add([<block:minecraft:polished_blackstone_wall>, <block:minecraft:polished_blackstone_brick_slab>, <block:minecraft:polished_blackstone_brick_stairs>, <block:minecraft:cracked_polished_blackstone_bricks>, <block:minecraft:gilded_blackstone>, <block:minecraft:blackstone_slab>, <block:minecraft:blackstone_wall>, <block:minecraft:polished_blackstone>, <block:minecraft:blackstone_stairs>, <block:minecraft:blackstone>, <block:minecraft:polished_blackstone_slab>, <block:minecraft:polished_blackstone_stairs>, <block:minecraft:chiseled_polished_blackstone>, <block:minecraft:polished_blackstone_bricks>, <block:minecraft:polished_blackstone_wall>, <block:minecraft:polished_blackstone_brick_wall>]);