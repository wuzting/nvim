# 更新日志

**简体中文** | [English](CHANGELOG.en.md)

本项目的所有重要变更都记录在此文件中。

格式基于 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/)，
版本号遵循[语义化版本](https://semver.org/lang/zh-CN/)。

## [Unreleased]

### 新增
- 新增 `CHANGELOG.md`（简体中文）与英文版 `CHANGELOG.en.md`。
- 新增 MIT `LICENSE`。

### 变更
- 仓库重命名为 `wznvim`，并同步更新所有引用。
- 默认 README 改为简体中文，英文版移至 `README.en.md`。

## [0.1.0] - 2026-09-23

首个发布版本。

### 新增
- 基于 lazy.nvim 的模块化 Lua Neovim 配置。
- 界面：tokyonight 配色、alpha-nvim 启动页、lualine 状态栏、bufferline 标签页、
  indent-blankline 缩进参考线、which-key 键位提示与 render-markdown。
- 通过 mason.nvim 与 nvim-lspconfig 提供 LSP（`html`、`cssls`、`vtsls`、`vue_ls`、
  `clangd`、`cmake`、`lua_ls`、`pyright`），并提供 `:MasonInstallAll` 命令。
- 基于 nvim-cmp、LuaSnip、friendly-snippets 与 nvim-autopairs 的自动补全。
- treesitter 语法解析、高亮、缩进与折叠。
- 基于 nvim-tree 与 telescope 的文件导航。
- 基于 gitsigns.nvim 与 mini.diff 的 Git 集成。
- 基于 toggleterm.nvim 与 opencode.nvim 的终端与 AI 集成。
- OSC52 剪贴板复制支持，以及保存时清理行尾空白。
- 双语 README（英文 / 简体中文），带语言切换。
- 面向 AI 编程助手的 AGENTS.md 说明。

### 移除
- codecompanion.nvim 插件及其 DeepSeek adapter 配置。

[Unreleased]: https://github.com/wuzting/wznvim/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/wuzting/wznvim/releases/tag/v0.1.0
