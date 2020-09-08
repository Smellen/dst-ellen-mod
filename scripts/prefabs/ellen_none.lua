local assets =
{
	Asset( "ANIM", "anim/ellen.zip" ),
	Asset( "ANIM", "anim/ghost_ellen_build.zip" ),
}

local skins =
{
	normal_skin = "ellen",
	ghost_skin = "ghost_ellen_build",
}

return CreatePrefabSkin("ellen_none",
{
	base_prefab = "ellen",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"ELLEN", "CHARACTER", "BASE"},
	build_name_override = "ellen",
	rarity = "Character",
})