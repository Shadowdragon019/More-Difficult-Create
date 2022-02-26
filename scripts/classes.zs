import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.tag.MCTag;
import stdlib.List;


// Int Wrapper
public class INT {
	public var Int as int : get, set;
	
	public this(Int as int) {
		this.Int = Int;
		
	}	
	public asInt() as int {
		return Int;
		
	}
	public asDouble(Int2 as int) as double {
		return Int2 as double;
		
	}
	
	
	
	public implicit as int => this.Int;
	public implicit as double => asDouble(this);
	public implicit as string => this.Int as string;
	
}



public expand int {
	// Could do this also
	// public implicit as INT => new INT(this);
	public implicit as INT => makeINT(this);
}



public class Mark {
	
	public var name as string : get;
	public var ints as List<INT> : get;
	
	public this(name as string, ints as List<INT>) {
		this.name = name;
		this.ints = ints;
		
    }
	
	public asString() as string {
		var stringInts = "";
		for i, stringInt in ints as INT[] {
			if (i == ints.length - 1) {
				stringInts = stringInts + stringInt.Int;
				
			} else {
				stringInts = stringInts + stringInt.Int + ", ";
				
			}
			
		}
		
		return name + " " + stringInts;
		
	}
	
}



public class IItemStackWithMarks {
	
	public var itemStack as IItemStack : get;
	public var marks as List<Mark> : get;
	
	public this(itemStack as IItemStack, marks as List<Mark>) {
		this.itemStack = itemStack;
		this.marks = marks;
		
    }
	
	public getMarkInts(input as string) as List<INT> {
		for mark in marks {
			if (mark.name == input) {
				return mark.ints;
				
			}
			
		}
		
		return new List<INT>;
		
	}
	
	public printMe() as void {
		// \nitem\nname: 1, 2, 3, 4\nname2: 2, 3, 4, 5
		
		var returnString = "\n Item: " + itemStack.registryName as string;
		for i, mark in marks as Mark[] {
			returnString = returnString + "\n Mark: " + mark.name + ": ";
			
			for i, stringInt in mark.ints as INT[] {
				if (i == mark.ints.length - 1) {
					returnString = returnString + stringInt.Int;
					
				} else {
					returnString = returnString + stringInt.Int + ", ";
					
				}
				
			}
			
		}
		
		print(returnString);
		
	}
	
	public addMark(name as string, markInts... as int[]) as IItemStackWithMarks {
		var addedINTs = new List<INT>;
		for markInt in markInts {
			addedINTs.add(markInt);
			
		}
		
		marks.add(new Mark(name, addedINTs));
		
		return this;
		
	}
	
	// () can be used
	public implicit as IItemStack => this.itemStack;
	public implicit as IIngredient => this.itemStack as IIngredient;
	public implicit as List<Mark> => this.marks;
	
	public get registryName as ResourceLocation => itemStack.registryName;
	public get definition as ItemDefinition => itemStack.definition;
}



// IItemStack
public expand IItemStack {
	
	public addMark(name as string, markInts... as int[]) as IItemStackWithMarks {
		var addedINTs = new List<INT>;
		
		for markInt in markInts {
			addedINTs.add(markInt);
			
		}
		
		return new IItemStackWithMarks(this, [new Mark(name, addedINTs)]);
		
	}
	
	public implicit as IItemStackWithMarks => new IItemStackWithMarks(this, new List<Mark>);
	
}



// var egg = new IItemStackWithMarks(<item:minecraft:egg>, [new Mark("boiling", [10, 20, 30]), new Mark("super_boiling", [1, 2, 3])]);
// var egg = addMark(<item:minecraft:egg>, "boiling", [10, 20, 30]);
// var egg = addMark(<item:minecraft:egg>, "boiling", [10, 20, 30]).addMark("super_boiling", [1, 2, 3]);
// var egg = <item:minecraft:egg>.addMark("boiling", [10, 20, 30]);
// var egg = <item:minecraft:egg>.addMark("boiling", [makeINT(10), makeINT(20), makeINT(30)] as List<INT>).addMark("super_boiling", [makeINT(1), makeINT(2), makeINT(3)] as List<INT>);
// var egg = <item:minecraft:egg>.addMark("boiling", 10, 20, 30).addMark("super_boiling", 1, 2, 3);

// egg.printMe();



public class OreType {
	
	public var oreVariant as string : get;
	public var ore as IItemStackWithMarks : get;
	public var oreRemainder as IItemStackWithMarks : get;
	
	
	public this(oreVariant as string, ore as IItemStackWithMarks, oreRemainder as IItemStackWithMarks) {
		this.oreVariant = oreVariant;
		this.ore = ore;
		this.oreRemainder = oreRemainder;
		
    }
	
}



public class OreTypeCollection {
	// copper
	// stone: minecraft:copper_ore, minecraft:cobblestone
	// deepslate: minecraft:deepslate_copper_ore, minecraft:cobbled_deepslate
	public var collectionName as string : get;
	public var oresTag as MCTag<ItemDefinition>: get;
	public var oreTypes as OreType[] : get;
	
	public this(collectionName as string, oresTag as MCTag<ItemDefinition>, oreTypes as OreType[]) {
		this.collectionName = collectionName;
		this.oresTag = oresTag;
		this.oreTypes = oreTypes;
		
    }
	
	public printMe() as void {
		var returnString = "\n " + collectionName;
		
		for ore in oreTypes {
			returnString = returnString + "\n " + ore.oreVariant + ": " + ore.ore.registryName + ", " + ore.oreRemainder.registryName;
			
		}
		
		print(returnString);
		
	}
	
}



/*var eeee = new OreTypeCollection("copper", [
	makeOreType("stone", <item:minecraft:copper_ore>, <item:minecraft:cobblestone>),
	makeOreType("deepslate", <item:minecraft:deepslate_copper_ore>, <item:minecraft:cobbled_deepslate>),
	makeOreType("andesite", <item:mores:andesite_copper_ore>, <item:minecraft:andesite>),
	makeOreType("diorite", <item:mores:diorite_copper_ore>, <item:minecraft:diorite>),
	makeOreType("granite", <item:mores:granite_copper_ore>, <item:minecraft:granite>),
	makeOreType("tuff", <item:mores:tuff_copper_ore>, <item:minecraft:tuff>)
	
]);*/



/*for OreType in eeee.oreTypes {
	craftingTable.addShaped(OreType.oreVariant, OreType.oreRemainder, [
		[OreType.ore, OreType.ore, OreType.ore], 
		[OreType.ore, OreType.ore, OreType.ore], 
		[OreType.ore, OreType.ore, OreType.ore]
	]);
	
}*/



public class MaterialGroup {

	public var groupName as string : get;
	public var material as IItemStackWithMarks : get;
	public var block as IItemStackWithMarks : get;
	public var nugget as IItemStackWithMarks : get;
	public var raw as IItemStackWithMarks : get;
	public var rawBlock as IItemStackWithMarks : get;
	public var crushed as IItemStackWithMarks : get;
	public var dust as IItemStackWithMarks : get;
	public var oreTypeCollection as OreTypeCollection : get;
	public var plate as IItemStackWithMarks : get;
	public var plateSemiPressed as IItemStackWithMarks : get;
	public var molten as IItemStackWithMarks : get;
	public var moltenPlate as IItemStackWithMarks : get;
	public var rod as IItemStackWithMarks : get;
	public var wire as IItemStackWithMarks : get;
	
	public this(groupName as string, material as IItemStackWithMarks, block as IItemStackWithMarks, nugget as IItemStackWithMarks, raw as IItemStackWithMarks, rawBlock as IItemStackWithMarks, crushed as IItemStackWithMarks, dust as IItemStackWithMarks, oreTypeCollection as OreTypeCollection, plate as IItemStackWithMarks, plateSemiPressed as IItemStackWithMarks, molten as IItemStackWithMarks, moltenPlate as IItemStackWithMarks, rod as IItemStackWithMarks, wire as IItemStackWithMarks) {
		this.groupName = groupName;
		this.material = material;
		this.block = block;
		this.nugget = nugget;
		this.raw = raw;
		this.rawBlock = rawBlock;
		this.crushed = crushed;
		this.dust = dust;
		this.oreTypeCollection = oreTypeCollection;
		this.plate = plate;
		this.plateSemiPressed = plateSemiPressed;
		this.molten = molten;
		this.moltenPlate = moltenPlate;
		this.rod = rod;
		this.wire = wire;
		
    }
	
}