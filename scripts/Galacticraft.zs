# Custom Canister Recipes with GT Plates
recipes.remove(<GalacticraftCore:item.canister:1>);
recipes.addShaped(<GalacticraftCore:item.canister:1> * 2, [
    [<ore:plateCopper>, null, <ore:plateCopper>],
    [<ore:plateCopper>, null, <ore:plateCopper>],
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]
]);

recipes.remove(<GalacticraftCore:item.canister>);
recipes.addShaped(<GalacticraftCore:item.canister> * 2, [
    [<ore:plateTin>, null, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]
]);


# EnderIO Silicon <-> Raw Silicon
recipes.addShapeless( <EnderIO:itemMaterial>, [<GalacticraftCore:item.basicItem:2>] );
recipes.addShapeless( <GalacticraftCore:item.basicItem:2>, [<EnderIO:itemMaterial>] );