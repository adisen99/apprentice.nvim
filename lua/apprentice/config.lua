-- Config module to setup user configuration for plugins, languages and options

local config = {
	-- TODO: add default options
	-- options = {},
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
