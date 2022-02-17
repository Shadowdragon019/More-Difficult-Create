import crafttweaker.api.tag.MCTag;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.recipe.IRecipeManager;
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.text.Component;
import crafttweaker.api.text.Style;
import crafttweaker.api.text.BaseComponent;
import crafttweaker.api.text.TextComponent;
import crafttweaker.api.text.TextColor;
import crafttweaker.api.text.ChatFormatting;
import crafttweaker.api.event.Event;
import crafttweaker.api.event.AnvilUpdateEvent;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.data.IData;
import mods.jei.JEI;

// Variables //
var verySturyPlanks = <tag:items:crafttweaker:very_strudy/planks>;
var verySturyLogs = <tag:items:crafttweaker:very_strudy/logs>;
var reinforcedPlanks = <item:kubejs:reinforced_planks>;
var reinforcedPlanksSlab = <item:kubejs:reinforced_planks_slab>;
var ironRods = <tag:items:forge:rods/iron>;
var ironPlates = <tag:items:forge:plates/iron>;
var airItem = <item:minecraft:air>;
var woodenRods = <tag:items:forge:rods/wooden>;

// Tags //
// Items //
// Functions //
function replaceTags (tag as MCTag<ItemDefinition>, items as IItemStack[]) as void {
    for item in tag {
		tag.remove(item);
		
	}
	
	for item in items {
		tag.add(item);
		
	}
	
}

<tag:items:crafttweaker:very_strudy/logs>.add(<tag:items:minecraft:spruce_logs>);
<tag:items:crafttweaker:very_strudy/logs>.add(<tag:items:minecraft:dark_oak_logs>);
<tag:items:crafttweaker:very_strudy/planks>.add(<item:minecraft:spruce_planks>, <item:minecraft:dark_oak_planks>);
<tag:items:crafttweaker:very_strudy>.add(<tag:items:crafttweaker:very_strudy/logs>);
<tag:items:crafttweaker:very_strudy>.add(<tag:items:crafttweaker:very_strudy/planks>);

<tag:items:forge:rods/all_metal>.add(<tag:items:forge:rods>);

replaceTags(<tag:items:forge:plates>, [<item:kubejs:iron_plate>, <item:kubejs:andesite_alloy_plate>]);
replaceTags(<tag:items:forge:plates/iron>, [<item:kubejs:iron_plate>]);

replaceTags(<tag:items:forge:rods>, [<item:kubejs:iron_rod>]);
replaceTags(<tag:items:forge:rods/iron>, [<item:kubejs:iron_rod>]);

// Tooltips //
for item in <tag:items:crafttweaker:very_strudy> {
	item.defaultInstance.addTooltip("Very sturdy" as Component);
	
}

// Disable JEI Items //
for item in [<item:create:iron_sheet>, <item:createaddition:iron_rod>] {
	JEI.hideIngredient(item);
	item.addTooltip(("JEI Hidden" as TextComponent).setStyle(ChatFormatting.GRAY) as TextComponent);
}

// Event //
/*
A cool idea but it doesn't work
CTEventManager.register<AnvilUpdateEvent>((event) => {
	var left = event.left;
	var right = event.right;
	if ((left in <tag:items:forge:ingots/iron>) & (right in <tag:items:forge:ingots/iron>)) {
		event.output = <item:kubejs:iron_plate>;
		event.setAllow();
		
	}
	
});
*/

// Recipes //
// Functions //
function addRollingRecipe(name as string, input as IIngredient, output as IItemStack) as void {
	<recipetype:createaddition:rolling>.addJsonRecipe("create_addition/rolling/" + name, {
		"input": input,
		"result": {
			"item": output.registryName,
			"count": output.amount
		}
		
	});
	
}


// Plates //
var plateCrushing = [[<tag:items:forge:ingots/iron>.asIIngredient(), <tag:items:forge:plates/semi-pressed/iron>.asIIngredient(), <item:kubejs:iron_plate>], [<item:create:andesite_alloy>, <tag:items:forge:plates/semi-pressed/andesite_alloy>.asIIngredient(), <item:kubejs:andesite_alloy_plate>]] as IIngredient[][];
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

function slabCrafting(name as string, block as IItemStack, slab as IItemStack) as void {
	craftingTable.addShaped(name, slab * 6, [
		[block, block, block]
	]);
}

function replaceCraftingTableShaped(recipeName as string, output as IItemStack, ingredients as IIngredient[][]) as void {
	craftingTable.remove(output);
	craftingTable.addShaped(recipeName, output, ingredients);
}

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
slabCrafting("minecraft/crafting_table/shaped/slab/reinforced_planks", <item:kubejs:reinforced_planks>, <item:kubejs:reinforced_planks_slab>);

// Andesite Alloy //
craftingTable.remove(<item:create:andesite_alloy>);
<recipetype:create:mixing>.remove(<item:create:andesite_alloy>);
craftingTable.addShapeless("minecraft/crafting_table/shapeless/andesite_alloy", <item:create:andesite_alloy>, [<item:create:zinc_nugget>, <item:minecraft:andesite>, <item:create:zinc_nugget>, <item:minecraft:andesite>, <item:minecraft:basalt>, <item:minecraft:andesite>, <item:create:zinc_nugget>, <item:minecraft:andesite>, <item:create:zinc_nugget>]);

// Shaft //
craftingTable.remove(<item:create:shaft>);
<recipetype:create:cutting>.remove(<item:create:shaft>);

// Rods //
<recipetype:createaddition:rolling>.remove(<tag:items:forge:plates/iron>);
addRollingRecipe("rods/iron", <tag:items:forge:plates/iron>, <item:kubejs:iron_rod> * 2);
addRollingRecipe("rods/shaft", <tag:items:forge:plates/andesite_alloy>, <item:create:shaft> * 4);

// Reinforced Planks //
craftingTable.addShaped("minecraft/crafting_table/shaped/reinforced_planks", <item:kubejs:reinforced_planks>, [
	[ironRods, verySturyPlanks, ironRods],
	[verySturyPlanks, verySturyPlanks, verySturyPlanks],
	[ironRods, verySturyPlanks, ironRods]
]);

// Cogs //
<recipetype:create:sequenced_assembly>.remove(<item:create:large_cogwheel>);
<recipetype:create:sequenced_assembly>.addJsonRecipe("create/sequenced_assembly/large_cogwheel", {
    "type": "create:sequenced_assembly",
  "ingredient": {
    "item": "create:andesite_alloy"
  },
  "transitionalItem": {
    "item": "create:incomplete_large_cogwheel"
  },
  "sequence": [
    {
      "type": "create:deploying",
      "ingredients": [
        {
          "item": "create:incomplete_large_cogwheel"
        },
        {
          "item": "kubejs:reinforced_planks"
        }
      ],
      "results": [
        {
          "item": "create:incomplete_large_cogwheel"
        }
      ]
    },
    {
      "type": "create:deploying",
      "ingredients": [
        {
          "item": "create:incomplete_large_cogwheel"
        },
        {
          "item": "kubejs:reinforced_planks_slab"
        }
      ],
      "results": [
        {
          "item": "create:incomplete_large_cogwheel"
        }
      ]
    },
    {
      "type": "create:cutting",
      "ingredients": [
        {
          "item": "create:incomplete_large_cogwheel"
        }
      ],
      "results": [
        {
          "item": "create:incomplete_large_cogwheel"
        }
      ],
      "processingTime": 50
    }
  ],
  "results": [
    {
      "item": "create:large_cogwheel",
      "count": 6,
      "chance": 32.0
    },
    {
      "item": "create:andesite_alloy",
      "chance": 2.0
    },
    {
      "item": "minecraft:andesite"
    },
    {
      "item": "create:cogwheel"
    },
    {
      "item": "minecraft:stick"
    },
    {
      "item": "minecraft:iron_nugget"
    }
  ],
  "loops": 3
});
	
craftingTable.remove(<item:create:large_cogwheel>);
craftingTable.addShaped("minecraft/crafting_table/shaped/large_cogwheel", <item:create:large_cogwheel> * 2, [
	[<item:kubejs:reinforced_planks_slab>, <item:kubejs:reinforced_planks>, <item:kubejs:reinforced_planks_slab>],
	[<item:kubejs:reinforced_planks>, <item:create:andesite_alloy>, <item:kubejs:reinforced_planks>],
	[<item:kubejs:reinforced_planks_slab>, <item:kubejs:reinforced_planks>, <item:kubejs:reinforced_planks_slab>]
]);

<recipetype:create:sequenced_assembly>.remove(<item:create:cogwheel>);
<recipetype:create:sequenced_assembly>.addJsonRecipe("create/sequenced_assembly/cogwheel", {
  "type": "create:sequenced_assembly",
  "ingredient": {
    "item": "create:andesite_alloy"
  },
  "transitionalItem": {
    "item": "create:incomplete_cogwheel"
  },
  "sequence": [
    {
      "type": "create:deploying",
      "ingredients": [
        {
          "item": "create:incomplete_cogwheel"
        },
        {
          "item": "kubejs:reinforced_planks_slab"
        }
      ],
      "results": [
        {
          "item": "create:incomplete_cogwheel"
        }
      ]
    },
    {
      "type": "create:cutting",
      "ingredients": [
        {
          "item": "create:incomplete_cogwheel"
        }
      ],
      "results": [
        {
          "item": "create:incomplete_cogwheel"
        }
      ],
      "processingTime": 50
    }
  ],
  "results": [
    {
      "item": "create:cogwheel",
      "count": 8,
      "chance": 32.0
    },
    {
      "item": "create:andesite_alloy",
      "chance": 2.0
    },
    {
      "item": "minecraft:andesite"
    },
    {
      "item": "create:large_cogwheel"
    },
    {
      "item": "minecraft:stick"
    },
    {
      "item": "minecraft:iron_nugget"
    }
  ],
  "loops": 4
});

craftingTable.remove(<item:create:cogwheel>);
craftingTable.addShaped("minecraft/crafting_table/shaped/cogwheel", <item:create:cogwheel> * 4, [
	[<item:kubejs:reinforced_planks_slab>, <item:kubejs:reinforced_planks_slab>, <item:kubejs:reinforced_planks_slab>],
	[<item:kubejs:reinforced_planks_slab>, <item:create:andesite_alloy>, <item:kubejs:reinforced_planks_slab>],
	[<item:kubejs:reinforced_planks_slab>, <item:kubejs:reinforced_planks_slab>, <item:kubejs:reinforced_planks_slab>]
]);

craftingTable.remove(<item:create:andesite_casing>);
craftingTable.addShaped("minecraft/crafting_table/shaped/andesite_casing", <item:create:andesite_casing>, [
	[verySturyPlanks, verySturyPlanks, verySturyPlanks], 
	[<item:create:andesite_alloy>, verySturyLogs, <item:create:andesite_alloy>], 
	[verySturyPlanks, verySturyPlanks, verySturyPlanks]
]);