import crafttweaker.api.event.entity.player.interact.RightClickBlockEvent;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.block.BlockState;
import crafttweaker.api.util.math.BlockPos;
import crafttweaker.api.util.InteractionHand;
import crafttweaker.api.block.Block;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.type.player.Inventory;



CTEventManager.register<RightClickBlockEvent>((event) => {
	val player = event.player;
    val blockPos = event.blockPos;
	val inventory = player.inventory;
	val selectedItem = inventory.selected.asIItemStack();
	val level = player.level;
	val blockState = level.getBlockState(blockPos);
	val block = blockState.block;
	var placeBlockState = <blockstate:minecraft:air>;
	var toRemoveItem = <item:minecraft:air>;
	var toAddItem = <item:minecraft:air>;
	var placeBlockPos = blockPos;
	var placeBlock = false;
	val removeItemSlot = inventory.findSlotMatchingItem(selectedItem);
	val removeItemStack = <item:minecraft:air>;
	if (removeItemSlot > 0) {
		removeItemStack = inventory.getItem(removeItemSlot).asIItemStack();
	}
	
	if (block in <tag:blocks:minecraft:cauldrons>) {
		if (selectedItem.registryName == <item:minecraft:lava_bucket>.registryName) {
			event.cancel();
			
		}
		if (block == <block:minecraft:lava_cauldron>) {
			if (selectedItem.registryName == <item:minecraft:glass_bottle>.registryName) {
				placeBlock = true;
				placeBlockState = <blockstate:minecraft:cauldron>;
				toAddItem = <item:alexsmobs:lava_bottle>;
				toRemoveItem = <item:minecraft:glass_bottle>;
				
			} else if (selectedItem.registryName == <item:minecraft:bucket>.registryName) {
				event.cancel();
				
			}
			
		} else {
			if (selectedItem == <item:alexsmobs:lava_bottle>) {
				placeBlock = true;
				placeBlockState = <blockstate:minecraft:lava_cauldron>;
				toAddItem = <item:minecraft:glass_bottle>;
				toRemoveItem = <item:alexsmobs:lava_bottle>;
				
			}
			
		}
		
	} else if ((block == <block:minecraft:lava>) || (block == <block:minecraft:flowing_lava>)) {
		print("E");
		
	}
	
	if ((placeBlock) && (!(event.player.isLocalPlayer) && (event.getHand() == InteractionHand.MAIN_HAND))) {
		level.setBlockAndUpdate(placeBlockPos, placeBlockState);
		player.swing(InteractionHand.MAIN_HAND);
		// inventory.removeItem(toRemoveItem);
		inventory.setItem(removeItemSlot, selectedItem * (selectedItem.amount - 1));
		inventory.add(toAddItem);
	}
	
});