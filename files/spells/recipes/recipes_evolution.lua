local evolutions = {
	{
		spells = { "LIGHT_BULLET", "LIGHT_BULLET" },
		result = { "SS_LIGHT_BULLET_2" },
	},
	{
		spells = { "SS_LIGHT_BULLET_2", "SS_LIGHT_BULLET_2" },
		result = { "SS_LIGHT_BULLET_3" },
	},
	{
		spells = { "DIGGER", "DIGGER" },
		result = { "SS_DIGGER_2" },
	},
	{
		spells = { "DIGGER", "POWERDIGGER" },
		result = { "SS_DIGGER_2" },
	},
	{
		spells = { "POWERDIGGER", "POWERDIGGER" },
		result = { "SS_DIGGER_2" },
	},
	{
		spells = { "SS_DIGGER_2", "SS_DIGGER_2" },
		result = { "SS_DIGGER_3" },
	},
	{
		spells = { "SPITTER", "SPITTER" },
		result = { "SPITTER_TIER_2" },
	},
	{
		spells = { "SPITTER_TIER_2", "SPITTER_TIER_2" },
		result = { "SPITTER_TIER_3" },
	},
	{
		spells = { "RUBBER_BALL", "RUBBER_BALL" },
		result = { "SS_RUBBER_BALL_2" },
	},
	{
		spells = { "SS_RUBBER_BALL_2", "SS_RUBBER_BALL_2" },
		result = { "SS_RUBBER_BALL_3" },
	},
	{
		spells = { "BULLET", "BULLET" },
		result = { "SS_BULLET_2" },
	},
	{
		spells = { "SS_BULLET_2", "SS_BULLET_2" },
		result = { "SS_BULLET_3" },
	},
	{
		spells = { "HEAVY_BULLET", "HEAVY_BULLET" },
		result = { "SS_HEAVY_BULLET_2" },
	},
	{
		spells = { "SS_HEAVY_BULLET_2", "SS_HEAVY_BULLET_2" },
		result = { "SS_HEAVY_BULLET_3" },
	},
	{
		spells = { "SLOW_BULLET", "SLOW_BULLET" },
		result = { "SS_SLOW_BULLET_2" },
	},
	{
		spells = { "SS_SLOW_BULLET_2", "SS_SLOW_BULLET_2" },
		result = { "SS_SLOW_BULLET_3" },
	},
	{
		spells = { "BUBBLESHOT", "BUBBLESHOT" },
		result = { "SS_BUBBLESHOT_2" },
	},
	{
		spells = { "SS_BUBBLESHOT_2", "SS_BUBBLESHOT_2" },
		result = { "SS_BUBBLESHOT_3" },
	},
	{
		spells = { "ARROW", "ARROW" },
		result = { "SS_ARROW_2" },
	},
	{
		spells = { "SS_ARROW_2", "SS_ARROW_2" },
		result = { "SS_ARROW_3" },
	},
	{
		spells = { "GRENADE", "GRENADE" },
		result = { "GRENADE_TIER_2" },
	},
	{
		spells = { "GRENADE_TIER_2", "GRENADE_TIER_2" },
		result = { "GRENADE_TIER_3" },
	},
	{
		spells = { "ROCKET", "ROCKET" },
		result = { "ROCKET_TIER_2" },
	},
	{
		spells = { "ROCKET_TIER_2", "ROCKET_TIER_2" },
		result = { "ROCKET_TIER_3" },
	},
	{
		spells = { "BUCKSHOT", "BUCKSHOT" },
		result = { "SS_BUCKSHOT_2" },
	},
	{
		spells = { "SS_BUCKSHOT_2", "SS_BUCKSHOT_2" },
		result = { "SS_BUCKSHOT_3" },
	},
	{
		spells = { "ANTIHEAL", "ANTIHEAL" },
		result = { "SS_HEAL_BULLET_2" },
	},
	{
		spells = { "HEAL_BULLET", "ANTIHEAL" },
		result = { "SS_HEAL_BULLET_2" },
	},
	{
		spells = { "HEAL_BULLET", "HEAL_BULLET" },
		result = { "SS_HEAL_BULLET_2" },
	},
	{
		spells = { "SS_HEAL_BULLET_2", "SS_HEAL_BULLET_2" },
		result = { "SS_HEAL_BULLET_3" },
	},
	{
		spells = { "BOMB", "BOMB" },
		result = { "SS_BOMB_2" },
	},
	{
		spells = { "SS_BOMB_2", "SS_BOMB_2" },
		result = { "SS_BOMB_3" },
	},
	{
		spells = { "DYNAMITE", "DYNAMITE" },
		result = { "SS_DYNAMITE_2" },
	},
	{
		spells = { "SS_DYNAMITE_2", "SS_DYNAMITE_2" },
		result = { "SS_DYNAMITE_3" },
	},
	{
		spells = { "DISC_BULLET", "DISC_BULLET" },
		result = { "SS_DISC_BULLET_2" },
	},
	{
		spells = { "SS_DISC_BULLET_2", "SS_DISC_BULLET_2" },
		result = { "SS_DISC_BULLET_3" },
	},
	{
		spells = { "POLLEN", "POLLEN" },
		result = { "SS_POLLEN_2" },
	},
	{
		spells = { "SS_POLLEN_2", "SS_POLLEN_2" },
		result = { "SS_POLLEN_3" },
	},
	{
		spells = { "LASER_EMITTER", "LASER_EMITTER" },
		result = { "SS_LASER_EMITTER_2" },
	},
	{
		spells = { "SS_LASER_EMITTER_2", "SS_LASER_EMITTER_2" },
		result = { "SS_LASER_EMITTER_3" },
	},
}

local current_count = #SSRecipes
for i = 1, #evolutions do
	SSRecipes[current_count + i] = evolutions[i]
end
