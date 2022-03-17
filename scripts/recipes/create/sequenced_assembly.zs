var reinforcedPlanks = <item:kubejs:reinforced_planks>;
var reinforcedPlanksSlab = <item:kubejs:reinforced_planks_slab>;
var andesiteAlloy = <item:create:andesite_alloy>;
var sequencedAssembly = <recipetype:create:sequenced_assembly>;



sequencedAssembly.remove(<item:create:large_cogwheel>);
sequencedAssembly.addRecipe(sequencedAssembly.builder("create/sequenced_assembly/large_cogwheel")
	.transitionTo(<item:create:incomplete_large_cogwheel>)
	.require(<item:create:andesite_alloy>)
	.loops(3)
	.addOutput(<item:create:large_cogwheel> * 6, 32)
	.addOutput(<item:create:andesite_alloy>, 2)
	.addOutput(<item:minecraft:andesite>, 1)
	.addOutput(<item:create:cogwheel>, 1)
	.addOutput(<item:minecraft:stick>, 1)
	.addOutput(<item:minecraft:iron_nugget>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(reinforcedPlanks))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(reinforcedPlanksSlab))
	.addStep<mods.createtweaker.CuttingRecipe>()
);



sequencedAssembly.remove(<item:create:cogwheel>);
sequencedAssembly.addRecipe(sequencedAssembly.builder("create/sequenced_assembly/cogwheel")
	.transitionTo(<item:create:incomplete_cogwheel>)
	.require(<item:create:andesite_alloy>)
	.loops(4)
	.addOutput(<item:create:cogwheel> * 12, 32)
	.addOutput(<item:create:andesite_alloy>, 2)
	.addOutput(<item:minecraft:andesite>, 1)
	.addOutput(<item:create:large_cogwheel>, 1)
	.addOutput(<item:minecraft:stick>, 1)
	.addOutput(<item:minecraft:iron_nugget>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(reinforcedPlanksSlab))
	.addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(50))
);

sequencedAssembly.addRecipe(sequencedAssembly.builder("create/sequenced_assembly/blackstone_bulb_to_oil")
	.transitionTo(<item:kubejs:crushed_blackstone_bulb>)
	.require(<item:biomesoplenty:blackstone_bulb>)
	.loops(3)
	.addOutput(<item:kubejs:blackstone_bulb_paste>, 1)
	.addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(500))
);

sequencedAssembly.addRecipe(sequencedAssembly.builder("create/sequenced_assembly/water-proof_planks")
	.transitionTo(<item:kubejs:incomplete_sticky_water-proof_planks>)
	.require(<tag:items:crafttweaker:very_strudy/planks>)
	.loops(4)
	.addOutput(<item:kubejs:sticky_water-proof_planks>, 1)
	.addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:createaddition:seed_oil> * 250))
);