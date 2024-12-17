#> Called by pocket_dimension:portal/entrance/create

scoreboard players set @s pd.portal.destination.dim 4
scoreboard players operation @s pd.portal.this.dim = #pd.temp.dim pd.portal.this.dim

data modify entity @s item.tag.portal set from storage pocket_dimension:main root.portal
data modify entity @s item.tag.portal.this.pos set from entity @s Pos

execute if score #pd.pocket_dimension.is_private PDFlag matches 1 run tag @s add pd.portal.private

execute if score #pd.temp.portal.max_uses PDFlag matches 1.. run scoreboard players operation @s pd.config.portal.max_uses = #pd.temp.portal.max_uses PDFlag

execute if score #pd.portal.display_name PDFlag matches 1 run function pocket_dimension:portal/entrance/name/create_display

function pocket_dimension:effects/portal/entrance/apply
