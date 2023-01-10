local home = os.getenv("HOME")
local db = require("dashboard")
db.preview_command = "cat | lolcat -F 0.3"

db.preview_file_path = home .. "/.config/nvim/static/start.cat"
db.preview_file_height = 11
db.preview_file_width = 70
db.custom_center = {
	{
		icon = "  ",
		desc = "Recently latest session                  ",
		shortcut = "SPC s l",
		action = "SessionLoad",
	},
	{
		icon = "  ",
		desc = "Find  File                              ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
		shortcut = "SPC f",
	},
	{
		icon = "  ",
		desc = "File Browser                            ",
		action = "Telescope file_browser",
		shortcut = "SPC Tab",
	},
	{
		icon = "  ",
		desc = "Open Personal dotfiles                  ",
		action = "tabnew $MYVIMRC | tcd %:p:h",
		shortcut = "SPC f d",
	},
}
