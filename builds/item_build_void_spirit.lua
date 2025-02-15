X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_null_talisman",
	"item_magic_wand",
	"item_phase_boots",
	"item_maelstrom",
	"item_cyclone",
	"item_lesser_crit",
	"item_black_king_bar",
	--"item_aghanims_shard",
	"item_ultimate_scepter_2",
	"item_shivas_guard",
	"item_greater_crit",
	"item_wind_waker",
	"item_mjollnir",
	"item_aghanims_shard",
};			

X["builds"] = {
	{3,1,3,1,3,4,3,2,1,1,4,2,2,2,4},
	{3,1,3,2,3,4,3,1,1,1,4,2,2,2,4}
}

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  IBUtil.GetRandomBuild(X['builds']), skills, 
	  {2,4,6,7}, talents
);

return X