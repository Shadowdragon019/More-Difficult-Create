global.addItemsToTag = []

function addItemToTag(item, tag) {
	item = `kubejs:${item}`
	tag = `forge:${tag.toLowerCase()}`
	global.addItemsToTag.push([item, tag])
}

onEvent(`item.registry`, event => {
	// Prefix is before
	// Infix is middle
	// Suffix is after
	// Fix After //
	function makeItemsWithSuffix(materials, suffixes) {
		suffixes.forEach(suffix => {
			materials.forEach(material => {
				var tagMaterial = material
				
				if (tagMaterial == "Golden") {
					tagMaterial = "Gold"
				}
				
				var itemAsTag = (`${material}_${suffix}`).replace(" ", "_").toLowerCase()
				
				event.create(itemAsTag, item => item.displayName(`${material} ${suffix}`))
				addItemToTag(itemAsTag, `${suffix}s`)
				addItemToTag(itemAsTag, `${suffix}s/${tagMaterial.replace(" ", "_").toLowerCase()}`)
			})
		})
	}
	
	// Fix Before //
	function makeItemsWithPrefix(materials, prefixes) {
		prefixes.forEach(prefix => {
			materials.forEach(material => {
				var tagMaterial = material
				
				if (tagMaterial == "Golden") {
					tagMaterial = "Gold"
				}
				
				var itemAsTag = (`${prefix}_${material}`).replace(" ", "_").toLowerCase()
				
				event.create(itemAsTag, item => { item.displayName(`${prefix} ${material}`)})
				addItemToTag(itemAsTag, `${prefix}s`)
				addItemToTag(itemAsTag, `${prefix}s/${tagMaterial.replace(" ", "_").toLowerCase()}`)
			})
		})
	}
	
	// Fix Around Middle //
	function makeItemsWithSuffixAndPrefix(materials, fixes) {
		fixes.forEach(fix => {
			materials.forEach(material => {
				var prefix = fix[0]
				var suffix = fix[1]
				var tagMaterial = material
				console.log("\nPrefix: " + prefix + "\nSuffix: " + suffix + "\nMaterial: " + material)
				
				if (tagMaterial == "Golden") {
					tagMaterial = "Gold"
				}
				
				var itemAsTag = (`${prefix}_${material}_${suffix}`)
				itemAsTag = itemAsTag.replace(" ", "_").replace(" ", "_").toLowerCase()
				// Why are " " and " " fucking different???
				console.log(itemAsTag)
				
				event.create(itemAsTag, item => { item.displayName(`${prefix} ${material} ${suffix}`)})
				addItemToTag(itemAsTag, `${suffix}s/${prefix}`)
				addItemToTag(itemAsTag, `${suffix}s/${prefix}/${tagMaterial.replace(" ", "_").toLowerCase()}`)
				if ((prefix + suffix).includes("Hot")) {
					addItemToTag(itemAsTag, `lychee:fire_immune`)
					
				}
			})
		})
	}
	
	/*
	IRON Rod 
	IRON Plate
	IRON Dust
	Semi Pressed IRON Plate
	Semi Pressed Hot IRON Plate
	Hot IRON
	Hot IRON Plate
	
	*/
	makeItemsWithSuffix(["Iron"], ["Rod"])
	makeItemsWithSuffix(["Iron", "Copper", "Golden", "Zinc"], ["Dust"])
	makeItemsWithSuffix(["Iron", "Copper", "Golden", "Brass", "Andesite Alloy"], ["Plate"])
	
	makeItemsWithPrefix(["Iron", "Copper", "Golden", "Brass", "Andesite Alloy"], ["Hot"])
	
	makeItemsWithSuffixAndPrefix(["Iron", "Copper", "Golden", "Brass", "Andesite Alloy"], [ ["Semi-Pressed", "Plate"], ["Hot", "Plate"], ["Semi-Pressed Hot", "Plate"] ])
	
	// event.create(`name`, item => { item.displayName(`Name`)})
	event.create(`crushed_blackstone_bulb`, item => { item.displayName(`Crushed Blackstone Bulb`)})
	event.create(`blackstone_bulb_paste`, item => { item.displayName(`Blackstone Bulb Paste`)})
	
	event.create(`tin_nugget`, item => { item.displayName(`Tin Nugget`)})
	event.create(`tin_ingot`, item => { item.displayName(`Tin Ingot`)})
	
	
})



/*
// Material After //
function makeItemsWithSuffixes(materials, suffixes) {
	var type = ""
	var itemAsString = ""
	suffixes.forEach(suffix => {
		materials.forEach(material => {
			itemAsString = (`${material}_${suffix}`).replace(" ", "_").toLowerCase()
			if (suffix == "Sheet") {
				type = "plates"
			} else {
			type = suffix.toLowerCase()
			}
			
			onEvent(`item.registry`, event => {
				event.create(itemAsString, item => item.displayName(`${material} ${suffix}`))
			})
			
			onEvent(`tags.items`, event => {
				event.add(`forge:${type}`, itemAsString)
			})
			
		})
		
	})
	
}

makeItemsWithSuffixes(["Iron"], ["Rod", "Sheet"])
makeItemsWithSuffixes(["Andesite Alloy"], ["Sheet"])
*/

onEvent(`block.registry`, event => {
	event.create(`reinforced_planks`, block => {
		block.material(`wood`)
		block.hardness(1)
		block.displayName(`Reinforced Planks`)
		block.tag(`minecraft:mineable/axe`)
	})
	event.create(`reinforced_planks_slab`, block => {
		block.material(`wood`)
		block.hardness(1)
		block.displayName(`Reinforced Planks Slab`)
		block.type(`slab`)
		block.tag(`minecraft:mineable/axe`)
	})
	
	event.create(`incomplete_sticky_water-proof_planks`, block => {
		block.material(`wood`)
		block.hardness(1)
		block.displayName(`Incomplete Sticky Water-Proof Planks`)
		block.tag(`minecraft:mineable/axe`)
	})
	event.create(`sticky_water-proof_planks`, block => {
		block.material(`wood`)
		block.hardness(1)
		block.displayName(`Sticky Water-Proof Planks`)
		block.tag(`minecraft:mineable/axe`)
	})
	event.create(`water-proof_planks`, block => {
		block.material(`wood`)
		block.hardness(1)
		block.displayName(`Water-Proof Planks`)
		block.tag(`minecraft:mineable/axe`)
	})
	event.create(`water-proof_planks_slab`, block => {
		block.material(`wood`)
		block.hardness(1)
		block.displayName(`Water-Proof Planks Slab`)
		block.type(`slab`)
		block.tag(`minecraft:mineable/axe`)
	})
	
	event.create(`tin_block`, block => {
		block.material(`rock`)
		block.hardness(5)
		block.resistance(6)
		block.displayName(`Tin Block`)
		block.tag(`minecraft:mineable/pickaxe`)
	})
	
	
})