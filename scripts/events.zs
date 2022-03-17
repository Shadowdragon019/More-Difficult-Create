import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.block.BlockState;
import crafttweaker.api.block.Block;
import crafttweaker.api.util.math.BlockPos;
import crafttweaker.api.util.math.Random;
import crafttweaker.api.util.InteractionHand;
import crafttweaker.api.text.Component;
import crafttweaker.api.event.entity.living.LivingDeathEvent;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.entity.LivingEntity;
import crafttweaker.api.entity.EntityType;
import crafttweaker.api.item.enchantment.Enchantment;
import stdlib.List;



CTEventManager.register<LivingDeathEvent>((event) => {
	var bulbSpawnPositions = new List<BlockPos>;
	var spawnHeight = 0;
	var spawnWidth = 0;
	var spawnAttempts = 0;
	var checkingHeightProgress = 0;
	var lootingMultiplier = 0;
	var heightOffset = 0;
	var isWither = false;
	
	val attackedEntity = event.entity;
	val blockPos = attackedEntity.onPos; // This is the block below the entity
	val XYZ = blockPos.x as string + " " + blockPos.y as string + " " + blockPos.z as string;
	val level = attackedEntity.level;
	val blockAbove = level.getBlockState(blockPos.offset(0, 1, 0)).block;
	val blockBelow = level.getBlockState(blockPos).block;
	val remote = level.isRemote();
	var random = level.random;
	val entityType = attackedEntity.getType();
	val displayName = attackedEntity.displayName.contents;
	
	//val enchantLevel = event.source.entity.handSlots/*.mainHandItem.asIItemStack().getEnchantmentLevel(<enchantment:minecraft:looting>)*/;
	//for item in enchantLevel {
	//	// Doing remote doesn't help
	//		print(item.asIItemStack().registryName/*.getEnchantmentLevel(<enchantment:minecraft:looting>)*/);
	//}
	
	if ((!remote) && (level.dimension == <resource:minecraft:the_nether>)) {
		if (entityType == <entitytype:minecraft:wither_skeleton>) {
			spawnHeight = 3;
			spawnWidth = 3;
			spawnAttempts = 2;
			lootingMultiplier = 1;
			isWither = true;
		} else if (entityType == <entitytype:minecraft:wither>) {
			spawnHeight = 17;
			spawnWidth = 21;
			spawnAttempts = 300;
			lootingMultiplier = 6969;
			isWither = true;
		}
		
		if (isWither) {
			for i in 0 .. random.nextInt(spawnAttempts) /* + looting level * lootingMultiplier */ {
				bulbSpawnPositions.add(blockPos.offset(random.nextInt(spawnWidth) - (spawnWidth - 1) / 2, heightOffset, random.nextInt(spawnWidth) - (spawnWidth - 1) / 2));
			}
			heightOffset = ((spawnHeight - 1) / -2) - 0;
			for bulbBlockPos in bulbSpawnPositions {
				checkingHeightProgress = 0;
				for i in 0 .. spawnHeight {
					print("Trying: " + bulbBlockPos.offset(0, heightOffset + checkingHeightProgress + 1, 0).toShortString);
					if ((level.getBlockState(bulbBlockPos.offset(0, heightOffset + checkingHeightProgress, 0)) == <blockstate:minecraft:blackstone>) && (level.isEmptyBlock(bulbBlockPos.offset(0, heightOffset + checkingHeightProgress + 1, 0)))) {
						val server = level.asServerLevel().server;
						// server.executeCommand("particle minecraft:dragon_breath " + bulbBlockPos.x as string + " " + (bulbBlockPos.y + 1 ) as string + " " + bulbBlockPos.z as string + " 0.25 0.25 0.25 0.01 50", true);
						level.setBlockAndUpdate(bulbBlockPos.offset(0, heightOffset + checkingHeightProgress + 1, 0), <blockstate:biomesoplenty:blackstone_bulb>);
						print("Success");
						// Makes it place multiple Blackstone Bulbs at a time, encourages people to tinker with mechanics a bit more for optimal farms
						// There was break; but then it caused java.lang.ArrayIndexOutOfBoundsException errors

					} else {
						print("Fail");
						
					}
					checkingHeightProgress += 1;
				}
			}
		}
	}
	
	
	
});