-- Luacheck configuration for this Neovim configuration.
std = "luajit"

-- Neovim exposes its API through the global `vim` table.
globals = { "vim" }

-- Plugin configs and ASCII art intentionally contain long lines.
max_line_length = false
