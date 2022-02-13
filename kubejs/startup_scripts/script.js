global.addItemsToTag = []

function addItemToTag(item, tag) {
	item = `kubejs:${item}`
	tag = `forge:${tag.toLowerCase()}`
	global.addItemsToTag.push([item, tag])
}

onEvent('item.registry', event => {
	// Prefix is before
	// Infix is middle
	// Suffix is after
	// Fix After //
	function makeItemsWithSuffix(materials, suffixes) {
		suffixes.forEach(suffix => {
			materials.forEach(material => {
				var itemAsTag = (`${material}_${suffix}`).replace(" ", "_").toLowerCase()
				
				event.create(itemAsTag, item => item.displayName(`${material} ${suffix}`))
				addItemToTag(itemAsTag, `${suffix}s`)
				addItemToTag(itemAsTag, `${suffix}s/${material.replace(" ", "_").toLowerCase()}`)
			})
		})
	}
	
	// Fix Before //
	function makeItemsWithPrefix(materials, prefixes) {
		prefixes.forEach(prefix => {
			materials.forEach(material => {
				var itemAsTag = (`${prefix}_${material}`).replace(" ", "_").toLowerCase()
				
				event.create(itemAsTag, item => { item.displayName(`${prefix} ${material}`)})
				addItemToTag(itemAsTag, `${prefix}s`)
				addItemToTag(itemAsTag, `${prefix}s/${material.replace(" ", "_").toLowerCase()}`)
			})
		})
	}
	
	// Fix Around Middle //
	function makeItemsWithSuffixAndPrefix(materials, fixes) {
		fixes.forEach(fix => {
			materials.forEach(material => {
				var prefix = fix[0]
				var suffix = fix[1]
				var itemAsTag = (`${prefix}_${material}_${suffix}`).replace(" ", "_").toLowerCase()
				
				event.create(itemAsTag, item => { item.displayName(`${prefix} ${material} ${suffix}`)})
				addItemToTag(itemAsTag, `${suffix}s/${prefix}`)
				addItemToTag(itemAsTag, `${suffix}s/${prefix}/${material.replace(" ", "_").toLowerCase()}`)
			})
		})
	}
	
	/*
	IRON Rod 
	IRON Plate
	Semi Pressed IRON Plate
	Molten IRON
	Molten IRON Plate
	
	*/
	makeItemsWithSuffix(["Iron"], ["Rod"])
	makeItemsWithSuffix(["Iron", "Andesite Alloy"], ["Plate"])
	
	makeItemsWithPrefix(["Iron", "Andesite Alloy"], ["Molten"])
	
	makeItemsWithSuffixAndPrefix(["Iron", "Andesite Alloy"], [ ["Semi-Pressed", "Plate"], ["Molten", "Plate"] ])
	
	
	
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
			
			onEvent('item.registry', event => {
				event.create(itemAsString, item => item.displayName(`${material} ${suffix}`))
			})
			
			onEvent('tags.items', event => {
				event.add(`forge:${type}`, itemAsString)
			})
			
		})
		
	})
	
}

makeItemsWithSuffixes(["Iron"], ["Rod", "Sheet"])
makeItemsWithSuffixes(["Andesite Alloy"], ["Sheet"])
*/

onEvent('block.registry', event => {
	event.create('reinforced_planks', block => {
		block.material('wood')
		block.hardness(1)
		block.displayName('Reinforced Planks')
		block.tag('minecraft:mineable/axe')
	})
	
	event.create('reinforced_planks_slab', block => {
		block.material('wood')
		block.hardness(1)
		block.displayName('Reinforced Planks Slab')
		block.type('slab')
		block.tag('minecraft:mineable/axe')
	})
})