X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_power_treads_int",
	"item_cyclone",
	"item_ultimate_scepter",
	"item_sphere",
	--"item_aghanims_shard",
	"item_orchid",
	"item_bloodthorn",
	"item_shivas_guard",
	"item_ultimate_scepter_2",
	"item_octarine_core",
	"item_wind_waker",
	"item_aghanims_shard",
};			

X["builds"] = {
	{1,2,1,3,3,4,3,3,2,2,4,2,1,1,4},
	{1,2,3,3,3,4,3,1,2,2,4,2,1,1,4}
}

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  IBUtil.GetRandomBuild(X['builds']), skills, 
	  {2,4,6,8}, talents
);

return X