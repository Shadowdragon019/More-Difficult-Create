<recipetype:lychee:item_inside>.addJsonRecipe("lychee/item_inside/lava_cauldron/test", {
	"type": "lychee:item_inside",
    "item_in": {
        "item": "minecraft:iron_ingot"
    },
    "block_in": "minecraft:lava_cauldron",
    "post": [
        {
            "type": "drop_item",
            "item": "kubejs:molten_iron"
        },
        {
            "type": "place",
            "block": "minecraft:cauldron"
        }
    ]
});