#>1.16
replaceitem entity @a[advancements={loumardes:scaffolding_rush/replenish/lime_concrete_powder=true}] weapon.mainhand air
replaceitem entity @a[advancements={loumardes:scaffolding_rush/replenish/lime_concrete_powder=true}] weapon.mainhand minecraft:lime_concrete_powder{CanPlaceOn:["minecraft:scaffolding","#loumardes:lobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}

#1.17
#item replace entity @a[advancements={loumardes:scaffolding_rush/replenish/lime_concrete_powder=true}] weapon.mainhand air
#item replace entity @a[advancements={loumardes:scaffolding_rush/replenish/lime_concrete_powder=true}] weapon.mainhand minecraft:lime_concrete_powder

advancement revoke @a only loumardes:scaffolding_rush/replenish/lime_concrete_powder
