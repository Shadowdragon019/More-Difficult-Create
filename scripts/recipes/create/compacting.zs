import mods.create.CompactingManager;



<recipetype:create:compacting>.remove(<fluid:createaddition:seed_oil>);
<recipetype:create:compacting>.addRecipe("create/compacting/blackstone_bulb", <constant:create:heat_condition:none>, [<item:kubejs:crushed_blackstone_bulb>], [<item:biomesoplenty:blackstone_bulb>], [], 100);
<recipetype:create:compacting>.addRecipe("create/compacting/crushed_blackstone_bulb", <constant:create:heat_condition:none>, [<fluid:createaddition:seed_oil> * 50], [<item:kubejs:crushed_blackstone_bulb>], [], 100);



/*
Via Mixing - Bulb = Paste
Via 3x Heated Compacting - Paste = 100 oil

*/