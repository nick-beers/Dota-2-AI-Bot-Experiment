X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(2));

X["items"] = { 
	"item_magic_wand",
	"item_power_treads_agi",
	"item_sange_and_yasha",
	"item_black_king_bar",
	"item_basher",
	"item_skadi",
	--"item_aghanims_shard",
	"item_butterfly",
	"item_ultimate_scepter_2",
	"item_monkey_king_bar",
	"item_aghanims_shard",
};			

X["builds"] = {
	{1,2,3,3,3,1,3,4,1,1,4,2,2,2,4},
	{1,2,3,3,3,4,3,1,1,1,4,2,2,2,4},
	{1,2,3,3,2,4,3,2,3,2,4,1,1,1,4}
}

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  IBUtil.GetRandomBuild(X['builds']), skills, 
	  {2,4,5,7}, talents
);

return X