local sprite_generator = dofile_once("mods/spell_synthesis/files/scripts/sprite_generator.lua") --- @type ss_sprite_generator

---@type action[]
-- stylua: ignore
local spells = {
	{ -- Spark Bolt
		id = "SS_LIGHT_BULLET_2",
		name = "$ss_action_light_bullet_2",
		description = "$ss_actiondesc_light_bullet_2",
		sprite = "mods/spell_synthesis/files/spells/evolutions/light_bullet/light_bullet_2.png",
		related_projectiles = { "mods/spell_synthesis/files/spells/evolutions/light_bullet/SS_LIGHT_BULLET_2.xml" },
		type = ACTION_TYPE_PROJECTILE,
		spawn_level = "10",
		spawn_probability = "0",
		mana = 8,
		action = function()
			add_projectile("mods/spell_synthesis/files/spells/evolutions/light_bullet/SS_LIGHT_BULLET_2.xml")
			c.fire_rate_wait = c.fire_rate_wait + 4
			c.screenshake = c.screenshake + 0.4
			c.spread_degrees = c.spread_degrees - 2.0
			c.damage_critical_chance = c.damage_critical_chance + 7
		end,
	},
	{
		id = "SS_LIGHT_BULLET_3",
		name = "$ss_action_light_bullet_2",
		description = "$ss_actiondesc_light_bullet_3",
		sprite = "mods/spell_synthesis/files/spells/evolutions/light_bullet/light_bullet_3.png",
		related_projectiles = { "mods/spell_synthesis/files/spells/evolutions/light_bullet/SS_LIGHT_BULLET_3.xml" },
		type = ACTION_TYPE_PROJECTILE,
		spawn_level = "10",
		spawn_probability = "0",
		mana = 12,
		action = function()
			add_projectile("mods/spell_synthesis/files/spells/evolutions/light_bullet/SS_LIGHT_BULLET_3.xml")
			c.fire_rate_wait = c.fire_rate_wait + 6
			c.screenshake = c.screenshake + 0.3
			c.spread_degrees = c.spread_degrees - 3.0
			c.damage_critical_chance = c.damage_critical_chance + 10
		end,
	},
	{ -- Digger
		id = "SS_DIGGER_2",
		name = "$ss_action_digger_2",
		description = "$ss_actiondesc_digger_2",
		sprite = "mods/spell_synthesis/files/spells/evolutions/digger/digger_2.png",
		related_projectiles = { "mods/spell_synthesis/files/spells/evolutions/digger/ss_digger_2.xml" },
		type = ACTION_TYPE_PROJECTILE,
		spawn_level = "10",
		spawn_probability = "0",
		mana = 0,
		sound_loop_tag = "sound_digger",
		action = function()
			add_projectile("mods/spell_synthesis/files/spells/evolutions/digger/ss_digger_2.xml")
			c.fire_rate_wait = c.fire_rate_wait + 1
			current_reload_time = current_reload_time - ACTION_DRAW_RELOAD_TIME_INCREASE - 10
		end,
	},
	{
		id = "SS_DIGGER_3",
		name = "$ss_action_digger_3",
		description = "$ss_actiondesc_digger_3",
		sprite = "mods/spell_synthesis/files/spells/evolutions/digger/digger_3.png",
		related_projectiles = { "mods/spell_synthesis/files/spells/evolutions/digger/ss_digger_3.xml" },
		type = ACTION_TYPE_PROJECTILE,
		spawn_level = "10",
		spawn_probability = "0",
		mana = 2,
		sound_loop_tag = "sound_digger",
		action = function()
			add_projectile("mods/spell_synthesis/files/spells/evolutions/digger/ss_digger_3.xml")
			current_reload_time = current_reload_time - ACTION_DRAW_RELOAD_TIME_INCREASE - 10
		end,
	},
	{ --Bouncy burst
		id          = "SS_RUBBER_BALL_2",
		name 		= "$ss_action_rubber_ball_2",
		description = "$ss_actiondesc_rubber_ball_2",
		sprite 		= "mods/spell_synthesis/files/spells/evolutions/rubber_ball/rubber_ball_2.png",
		related_projectiles	= {"mods/spell_synthesis/files/spells/evolutions/rubber_ball/rubber_ball_2.xml"},
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "10",
		spawn_probability                 = "0",
		price = 120,
		mana = 10,
		action 		= function()
			add_projectile("mods/spell_synthesis/files/spells/evolutions/rubber_ball/rubber_ball_2.xml")
			add_projectile("mods/spell_synthesis/files/spells/evolutions/rubber_ball/rubber_ball_2.xml")
			c.fire_rate_wait = c.fire_rate_wait - 2
			c.spread_degrees = c.spread_degrees + 7.0
		end,
	},
	{
		id          = "SS_RUBBER_BALL_3",
		name 		= "$ss_action_rubber_ball_3",
		description = "$ss_actiondesc_rubber_ball_3",
		sprite 		= "mods/spell_synthesis/files/spells/evolutions/rubber_ball/rubber_ball_3.png",
		related_projectiles	= {"mods/spell_synthesis/files/spells/evolutions/rubber_ball/rubber_ball_3.xml"},
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "10",
		spawn_probability                 = "0",
		price = 240,
		mana = 20,
		action 		= function()
			add_projectile("mods/spell_synthesis/files/spells/evolutions/rubber_ball/rubber_ball_3.xml")
			add_projectile("mods/spell_synthesis/files/spells/evolutions/rubber_ball/rubber_ball_3.xml")
			add_projectile("mods/spell_synthesis/files/spells/evolutions/rubber_ball/rubber_ball_3.xml")
			c.fire_rate_wait = c.fire_rate_wait - 2
			c.spread_degrees = c.spread_degrees + 14.0
		end,
	},
}

if actions then
	local index = #actions
	for i = 1, #spells do
		actions[index + i] = spells[i]
	end
end
