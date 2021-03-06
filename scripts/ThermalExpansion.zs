import drummer.utils.NBTUtils;

# Pulverizer
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:glass>);

# Sawmill
mods.thermalexpansion.Sawmill.addRecipe(1600, <minecraft:planks>, <minecraft:stick> * 6, <ThermalExpansion:material:512>, 25);
mods.thermalexpansion.Sawmill.addRecipe(1600, <minecraft:planks:1>, <minecraft:stick> * 6, <ThermalExpansion:material:512>, 25);
mods.thermalexpansion.Sawmill.addRecipe(1600, <minecraft:planks:2>, <minecraft:stick> * 6, <ThermalExpansion:material:512>, 25);
mods.thermalexpansion.Sawmill.addRecipe(1600, <minecraft:planks:3>, <minecraft:stick> * 6, <ThermalExpansion:material:512>, 25);
mods.thermalexpansion.Sawmill.addRecipe(1600, <minecraft:planks:4>, <minecraft:stick> * 6, <ThermalExpansion:material:512>, 25);
mods.thermalexpansion.Sawmill.addRecipe(1600, <minecraft:planks:5>, <minecraft:stick> * 6, <ThermalExpansion:material:512>, 25);

#Resonant Flux Capacitor mit GT Pyrotheum
recipes.remove(<ThermalExpansion:capacitor:5>);
recipes.addShaped(<ThermalExpansion:capacitor:5>, [
   [ null, <minecraft:redstone>, null ],
   [ <ore:ingotEnderium>, <ThermalExpansion:capacitor:4>.marked("capacitor"), <ore:ingotEnderium>],
   [ <minecraft:redstone>, <ore:dustPyrotheum>, <minecraft:redstone>]],
   function(output, inputs, crafting) {
		val energy = NBTUtils.toInt(inputs.capacitor.tag.Energy);
		if(energy==0){
			return output;
		}
		return output.withTag({Energy: energy});
	}
);

#Augment: Overclocked Modular Gearbox mit GT Pyrotheum
recipes.remove(<ThermalExpansion:augment:129>);
recipes.addShaped(<ThermalExpansion:augment:129>, [
   [ null, <ore:ingotGold>, null ],
   [ <ore:ingotBronze>, <ThermalExpansion:material:1>, <ore:ingotBronze> ],
   [ <ore:dustPyrotheum>, <ore:ingotGold>,<ore:dustPyrotheum> ]
]);
