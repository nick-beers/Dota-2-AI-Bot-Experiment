X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_tranquil_boots",
	"item_medallion_of_courage",
	"item_spirit_vessel",
	"item_solar_crest",
	"item_orchid",
	"item_bloodthorn",
	"item_black_king_bar",
	"item_boots_of_bearing",
	--"item_aghanims_shard",
	"item_ultimate_scepter_2",
	"item_ethereal_blade",
	"item_aghanims_shard",
};

X["builds"] = {
	{3,2,1,1,1,4,1,3,3,3,4,2,2,2,4},
	{3,2,2,1,2,4,2,1,1,1,4,3,3,3,4}
}

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  IBUtil.GetRandomBuild(X['builds']), skills, 
	  {1,3,6,7}, talents
);

return X