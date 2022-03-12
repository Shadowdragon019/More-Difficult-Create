var reinforcedPlanks = <item:kubejs:reinforced_planks>;
var reinforcedPlanksSlab = <item:kubejs:reinforced_planks_slab>;
var andesiteAlloy = <item:create:andesite_alloy>;



<recipetype:create:sequenced_assembly>.remove(<item:create:large_cogwheel>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("create/sequenced_assembly/large_cogwheel")
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



<recipetype:create:sequenced_assembly>.remove(<item:create:cogwheel>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("create/sequenced_assembly/cogwheel")
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

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("create/sequenced_assembly/blackstone_bulb_to_oil")
	.transitionTo(<item:kubejs:crushed_blackstone_bulb>)
	.require(<item:biomesoplenty:blackstone_bulb>)
	.loops(3)
	.addOutput(<item:kubejs:blackstone_bulb_paste>, 1)
	.addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(500))
);