X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_arcane_boots",
	"item_aether_lens",
	"item_force_staff",
	"item_glimmer_cape",
	"item_cyclone",
	"item_ultimate_scepter_2",
	"item_blink"
};			

X["builds"] = {
	{1,2,2,1,2,4,2,1,1,3,4,3,3,3,4},
	{1,2,2,3,1,4,2,2,1,1,4,3,3,3,4}
}

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  IBUtil.GetRandomBuild(X['builds']), skills, 
	  {2,4,5,7}, talents
);

return X