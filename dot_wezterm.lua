local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

-- This is where you actually apply your config choices
-- -------------------------------------------------------------------
-- COLOR SCHEMES
-- -------------------------------------------------------------------
-- config.color_scheme = 'Gruvbox Material (Gogh)'
config.color_scheme = 'GruvboxDarkHard'
-- config.color_scheme = 'Gruvbox Light'
-- config.color_scheme = 'Tokyo Night'
-- config.color_scheme = 'Vitesse'
-- config.color_scheme = 'Builtin Solarized Dark'
--
-- LIGHT THEMES
-- config.color_scheme = 'aikofog (terminal.sexy)'
-- config.color_scheme = 'Ashes (light) (terminal.sexy)'
-- config.color_scheme = 'Atelier Dune Light (base16)'
-- config.color_scheme = 'Atelier Heath Light (base16)'
-- config.color_scheme = 'Londontube (light) (terminal.sexy)'
-- config.color_scheme = 'Lunaria Light (Gogh)'
-- config.color_scheme = 'Github'
-- config.color_scheme = 'Github (base16)'
-- config.color_scheme = 'Builtin Solarized Light'

-- -------------------------------------------------------------------
-- FONTS
-- -------------------------------------------------------------------
-- config.font = wezterm.font('SF Mono', {})
-- config.font = wezterm.font('Space Mono', {})
config.font = wezterm.font('JetBrainsMono Nerd Font', {})
-- config.font = wezterm.font('DM Mono Medium', {})
-- config.font = wezterm.font('Fira Mono', {})
-- config.font = wezterm.font('Zed Mono', {})
-- config.font = wezterm.font('Liga SFMono Nerd Font Medium', {})
-- config.font = wezterm.font('RobotoMono Nerd Font', {})
-- config.font = wezterm.font('Iosevka', {})
--
config.font_size = 8
config.line_height = 1.35
config.window_frame = {
    font = wezterm.font('SF Mono', {}),
    font_size = 8.0,
}
config.default_prog = { "bash" }
config.native_macos_fullscreen_mode = true
config.keys = {
    {
        key = 'n',
        mods = 'SHIFT|CTRL',
        action = wezterm.action.ToggleFullScreen,
    },
    {
        key = 'R',
        mods = 'CTRL|SHIFT',
        action = act.PromptInputLine {
            description = 'Enter new name for tab',
            action = wezterm.action_callback(function(window, _, line)
                if line then
                    window:active_tab():set_title(line)
                end
            end),
        },
    },
    {
        key = ',',
        mods = 'CTRL',
        action = act.SpawnCommandInNewTab {
            cwd = os.getenv('WEZTERM_CONFIG_DIR'),
            set_environment_variables = {
                TERM = 'screen-256color',
            },
            args = {
                '/usr/bin/nvim',
                os.getenv('WEZTERM_CONFIG_FILE'),
            },
        }
    }
}
config.window_background_opacity = 0.95



return config
