-- Config module to setup user configuration for plugins, languages and options

local custom_colors = require('couleur.colors')

local config = {
  colors = {
    dark0_hard = "#111111",
    dark0 = "#182227",
    dark0_soft = "#252c31",
    dark1 = "#2a343a",
    dark2 = "#2e373b",
    dark3 = "#3f4b52",
    dark4 = "#555e61",
    light0_hard = "#f0f0f0",
    light0 = "#fbfbfb",
    light0_soft = "#f2f2f2",
    light1 = "#ebebeb",
    light2 = "#d5d5d5",
    light3 = "#bdbdbd",
    light4 = "#a8a8a8",
    bright_red = "#dda790",
    bright_green = "#8bb664",
    bright_yellow = "#e9c062",
    bright_blue = "#68a9eb",
    bright_purple = "#bfabcb",
    bright_aqua = "#b5d8f6",
    bright_orange = "#dad085",
    neutral_red = "#a03b1e",
    neutral_green = "#99cf50",
    neutral_yellow = "#c59820",
    neutral_blue = "#3c98d9",
    neutral_purple = "#484d79",
    neutral_aqua = "#89bdff",
    neutral_orange = "#c98344",
    error = "#900708",
	  faded_red = "#b83939",
    faded_green = "#babb63",
    faded_yellow = "#dad085",
    faded_blue = "#94aadb",
    faded_purple = "#675e6e",
    faded_aqua = "#a9b5a7",
    faded_orange = "#c59820",
    gray = "#9a9a9a",
  },
	plugins = {},
	langs = {}
}

local function apply_config(config_table)
	local function parse_sections(section_group_name)
		if not config_table[section_group_name] then
			return
		end
		for section_name, _ in pairs(config_table[section_group_name]) do
			config[section_group_name][section_name] = config_table[section_group_name][section_name]
		end
	end
	parse_sections('options')
  -- parse colors
  if config_table.colors ~= "table" then
    config.colors = custom_colors.set(config_table.colors)
  end
	-- parse plugins
	if config_table.plugins then
		config.plugins = config_table.plugins
	end
	-- parse langs
	if config_table.langs then
		config.langs = config_table.langs
	end
end

return {config = config, apply_config = apply_config}
