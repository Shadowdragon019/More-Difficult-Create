// priority: 0

settings.logAddedRecipes = true
settings.logRemovedRecipes = true
settings.logSkippedRecipes = false
settings.logErroringRecipes = true

onEvent('tags.items', event => {
	global.addItemsToTag.forEach(itemAndTag => {
		var item = itemAndTag[0]
		var tag = itemAndTag[1]
		event.add(tag, item)
	})
})

onEvent('recipes', event => {
	// I tried to do this automatically, but it was like I didn't have control of when stuff happened, fuck you KubeJS in that factor
	// Oh yeah you can't do `[array with stuff].forEach` that errors you have to make a variable & do:
	// var array = [array with stuff]
	// array.forEach
	// I pissed
	event.replaceOutput({}, 'create:iron_sheet', 'kubejs:iron_plate')
	event.replaceOutput({}, 'createaddition:iron_rod', 'kubejs:iron_rod')
	
})

// Ingredient.of('#forge:ingots').stacks