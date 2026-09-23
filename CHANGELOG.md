# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.0] - 2026-09-23

First tagged release.

### Added
- Modular, lazy.nvim-based Neovim configuration written in Lua.
- UI: tokyonight colorscheme, alpha-nvim dashboard, lualine statusline,
  bufferline tabs, indent-blankline guides, which-key hints and
  render-markdown.
- LSP via mason.nvim and nvim-lspconfig (`html`, `cssls`, `vtsls`, `vue_ls`,
  `clangd`, `cmake`, `lua_ls`, `pyright`) with the `:MasonInstallAll` command.
- Completion with nvim-cmp, LuaSnip, friendly-snippets and nvim-autopairs.
- Treesitter parsing, highlighting, indentation and folding.
- File navigation with nvim-tree and telescope.
- Git integration with gitsigns.nvim and mini.diff.
- Terminal and AI integration via toggleterm.nvim and opencode.nvim.
- OSC52 clipboard copy support and save-time whitespace cleanup.
- Bilingual README (English / Simplified Chinese) with a language switcher.
- AGENTS.md guide for AI coding assistants.

### Removed
- codecompanion.nvim plugin and its DeepSeek adapter configuration.

[Unreleased]: https://github.com/wuzting/nvim/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/wuzting/nvim/releases/tag/v0.1.0
