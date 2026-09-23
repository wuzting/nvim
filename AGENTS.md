# AGENTS.md - Neovim Configuration Repository

This document provides guidelines for agentic coding assistants working on this Neovim configuration repository.

## Project Overview

This is a Neovim configuration written in Lua, using lazy.nvim as the plugin manager. The configuration is modular, with core settings in `lua/core/` and plugin configurations in `lua/plugins/configs/`. No Cursor rules (`.cursor/rules/` or `.cursorrules`) or Copilot instructions (`.github/copilot-instructions.md`) were found in the repository.

## Build/Lint/Test Commands

This repository does not have a traditional build system. However, the following quality checks can be performed:

### Formatting with stylua
```bash
# Format all Lua files
stylua lua/

# Format specific file
stylua lua/core/utils.lua
```

### Linting with luacheck
```bash
# Lint all Lua files
luacheck lua/

# Lint specific file
luacheck lua/core/utils.lua
```

### Neovim Health Check
```bash
nvim --headless -c 'checkhealth' -c 'qa'
```

### Plugin Management
```bash
# Open lazy.nvim UI to manage plugins
nvim --headless -c 'Lazy' -c 'qa'
```

### Testing Plugin Configurations
Since this is a configuration repository, "testing" typically involves loading the configuration in Neovim and checking for errors in `:messages`.

## Code Style Guidelines

### File Structure
- Each Lua module should export a table with its functions
- Use the pattern `local M = {}` at the top and `return M` at the bottom
- Place related files in appropriate directories:
  - Core configuration: `lua/core/`
  - Plugin configurations: `lua/plugins/configs/`
  - Custom extensions: `lua/custom/` (if exists)

### Indentation and Formatting
- Formatting is enforced by **StyLua**: run `stylua .` before committing. CI runs `stylua --check`.
- See `stylua.toml` for the rules: **4 spaces**, double quotes, parentheses on calls.

### Imports and Requires
- StyLua normalises calls, so write `local utils = require("core.utils")`
- For dynamic requires, use parentheses: `local module = require(some_variable)`
- Group related requires together at the top of the file
- Avoid circular dependencies

### Naming Conventions
- **Variables and functions**: Use `snake_case`
- **Module tables**: Use `M` as the local module table variable
- **Constants**: Use `UPPER_SNAKE_CASE` if defining true constants
- **Plugin configuration variables**: Name after the plugin, e.g., `M.telescope`

### Function Definitions
- Define functions as fields on the module table: `M.load_config = function()`
- For local helper functions, use `local function helper()`
- Use descriptive function names that indicate action

### Table Structures
- Use inline tables for simple key-value pairs
- Use multi-line tables for complex structures
- Align table values when it improves readability

### Error Handling
- Use `vim.notify()` for user-facing error messages
- For LSP errors, use `vim.lsp.log.error()`
- Validate inputs in user-facing functions
- Use `pcall()` when calling potentially failing external APIs

### Plugin Configuration Patterns
- Each plugin config file should export a setup function or configuration table
- Follow the plugin's own API conventions
- Use lazy-loading where appropriate (via lazy.nvim)
- Document any custom mappings or commands added

### Key Mapping Conventions
- Define mappings in `lua/core/mappings.lua` grouped by plugin
- Use structure: `M.plugin_name = { plugin = true, mode = { ["key"] = { action, desc } } }`
- Description should be concise but clear
- Use `vim.keymap.set()` for dynamic mappings

### Documentation
- Add brief comments for complex logic
- Document public API functions with a one-line description
- Keep comments up-to-date with code changes

## lazy.nvim Plugin Management

### Adding Plugins
1. Add to `lua/plugins/init.lua`
2. Create config in `lua/plugins/configs/` if needed
3. Configure lazy-loading appropriately
4. Run `:Lazy sync` to update

### Plugin Configs
- File names match plugin names
- Export setup function or config table
- Follow plugin's API conventions

## Common Patterns

- **Module Initialization**: Use `local M = {}` pattern with setup functions
- **LSP Configuration**: Reuse `M.on_attach` and `M.capabilities` from `lspconfig.lua`
- **Autocommands**: Use `vim.api.nvim_create_autocmd()` with explicit groups
- **Plugin Setup**: Follow each plugin's recommended setup pattern

## Development Tools

- **Formatting**: Use stylua (`cargo install stylua`)
- **Linting**: Use luacheck (`luarocks install luacheck`)
- **Editor**: Use `.luarc.json` for Lua Language Server

## Commit Guidelines

- Keep commits focused on single concerns
- Test configuration changes in Neovim before committing
- Update README.md if adding significant functionality
- Use conventional commit messages:
  - `feat:` for new features
  - `fix:` for bug fixes
  - `docs:` for documentation changes
  - `style:` for formatting changes
  - `refactor:` for code refactoring
  - `chore:` for maintenance tasks

## Troubleshooting

If the configuration fails to load:
1. Check `:messages` for errors
2. Run `:Lazy` to verify plugin installation
3. Run `:checkhealth` for system diagnostics
4. Check LSP logs with `:LspLog`

---

*This file is intended to help coding assistants understand and work effectively with this Neovim configuration repository.*