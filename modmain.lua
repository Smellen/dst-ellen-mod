PrefabFiles = {
	"ellen",
	"ellen_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/ellen.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/ellen.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/ellen.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/ellen.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/ellen_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/ellen_silho.xml" ),

    Asset( "IMAGE", "bigportraits/ellen.tex" ),
    Asset( "ATLAS", "bigportraits/ellen.xml" ),
	
	Asset( "IMAGE", "images/map_icons/ellen.tex" ),
	Asset( "ATLAS", "images/map_icons/ellen.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ellen.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ellen.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_ellen.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_ellen.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_ellen.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_ellen.xml" ),
	
	Asset( "IMAGE", "images/names_ellen.tex" ),
    Asset( "ATLAS", "images/names_ellen.xml" ),
	
	Asset( "IMAGE", "images/names_gold_ellen.tex" ),
    Asset( "ATLAS", "images/names_gold_ellen.xml" ),
}

AddMinimapAtlas("images/map_icons/ellen.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.ellen = "The Sample Character"
STRINGS.CHARACTER_NAMES.ellen = "Esc"
STRINGS.CHARACTER_DESCRIPTIONS.ellen = "*Perk 1\n*Perk 2\n*Perk 3"
STRINGS.CHARACTER_QUOTES.ellen = "\"Quote\""
STRINGS.CHARACTER_SURVIVABILITY.ellen = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.ELLEN = require "speech_ellen"

-- The character's name as appears in-game 
STRINGS.NAMES.ELLEN = "Esc"
STRINGS.SKIN_NAMES.ellen_none = "Esc"

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("ellen", "FEMALE", skin_modes)
