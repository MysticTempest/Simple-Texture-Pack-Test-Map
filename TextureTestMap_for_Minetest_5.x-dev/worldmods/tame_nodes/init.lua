minetest.register_alias("flowers:mushroom_red", "tame_nodes:mushroom_red")
minetest.register_alias("flowers:mushroom_brown", "tame_nodes:mushroom_brown")
minetest.register_alias("fire:permanent_flame", "tame_nodes:flame")
minetest.register_alias("fire:basic_flame", "tame_nodes:flame")
minetest.register_alias("farming:soil", "tame_nodes:soil")
minetest.register_alias("farming:dry_soil", "tame_nodes:dry_soil")
minetest.register_alias("farming:desert_sand_soil", "tame_nodes:desert_sand_soil")



--
-- Mushrooms
--

minetest.register_node("tame_nodes:mushroom_red", {
	description = ("Tame Red Mushroom"),
	tiles = {"flowers_mushroom_red.png"},
	inventory_image = "flowers_mushroom_red.png",
	wield_image = "flowers_mushroom_red.png",
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {crumbly=3, not_in_creative_inventory=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	}
})

minetest.register_node("tame_nodes:mushroom_brown", {
	description = ("Tame Brown Mushroom"),
	tiles = {"flowers_mushroom_brown.png"},
	inventory_image = "flowers_mushroom_brown.png",
	wield_image = "flowers_mushroom_brown.png",
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {crumbly=3, not_in_creative_inventory=1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1),
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, -2 / 16, 3 / 16},
	}
})



--
-- Flames
--

minetest.register_node("tame_nodes:flame", {
	description = ("Tame Flame"),
	drawtype = "firelike",
	tiles = {
		{
			name = "fire_basic_flame_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1
			},
		},
	},
	inventory_image = "fire_basic_flame.png",
	paramtype = "light",
	light_source = 13,
	walkable = false,
	buildable_to = true,
	sunlight_propagates = true,
	floodable = true,
	groups = {crumbly=3, not_in_creative_inventory=1},
	drop = "",
	on_flood = flood_flame,
})


--
-- Farming Soil
-- 

minetest.register_node("tame_nodes:soil", {
	description = ("Tame Farming Soil"),
	tiles = {"default_dirt.png^farming_soil.png", "default_dirt.png"},
	drop = "",
	groups = {crumbly=3, not_in_creative_inventory=1},
	sounds = default.node_sound_dirt_defaults(),
})


minetest.register_node("tame_nodes:dry_soil", {
	description = ("Tame Farming Dry Soil"),
	tiles = {"default_dry_dirt.png^farming_soil.png", "default_dry_dirt.png"},
	drop = "",
	groups = {crumbly=3, not_in_creative_inventory=1},
	sounds = default.node_sound_dirt_defaults(),
})


minetest.register_node("tame_nodes:desert_sand_soil", {
	description = ("Tame Farming Desert Sand Soil"),
	drop = "",
	tiles = {"farming_desert_sand_soil.png", "default_desert_sand.png"},
	groups = {crumbly=3, not_in_creative_inventory = 1},
	sounds = default.node_sound_sand_defaults(),
})
