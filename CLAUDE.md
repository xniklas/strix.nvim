# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Neovim colorscheme plugin called "Strix" with comprehensive support for modern Neovim features. Currently implements the "night" theme with a modular architecture supporting base highlight groups, treesitter syntax highlighting, and LSP semantic tokens.

## Architecture

### Entry Points
- `colors/strix-{day,night}.lua` - Standard Neovim colorscheme interface that calls `require("strix").load()`

### Core Modules
- `lua/strix/init.lua` - Main module with colorscheme loading logic and highlight application
- `lua/strix/config.lua` - Default configuration including style options and theme settings
- `lua/strix/colors/init.lua` - Color utilities with blending, lightening, darkening functions and palette expansion
- `lua/strix/colors/night.lua` - Night theme color palette (day.lua exists but empty)

### Highlight Modules
- `lua/strix/highlights.lua` - Base Neovim highlight groups including UI, syntax, LSP, and diagnostics
- `lua/strix/treesitter.lua` - Treesitter highlight groups for enhanced syntax highlighting
- `lua/strix/semantic_tokens.lua` - LSP semantic token highlights for supported language servers

### Reference Files
- `lua/strix/*_groups.txt` - Reference lists of highlight groups for each module

## Development Commands

- **Code formatting**: `stylua .` (configured for 2-space indentation, 120-column width)
- **Testing colorscheme**: Load via `:colorscheme strix-night` or `require("strix").load({ style = "night" })`

## Key Features

### Color System
- Advanced color blending utilities for creating variants (lighter, darker, dimmer, brighter)
- Automatic palette expansion with `bg_darker`, `bg_lighter`, color variants like `blue_dim`, `blue_bright`
- Semantic backgrounds using `blend()` function instead of generic `bg_highlight`

### Highlight Coverage
- Complete base Neovim highlight groups (UI, syntax, diagnostics, LSP, git, etc.)
- Full treesitter support for modern syntax highlighting
- LSP semantic tokens for enhanced language server integration
- Proper handling of empty highlight groups like `@none`

### Configuration Options
- Theme variants: "night" (implemented), "day" (placeholder)
- Transparency support
- Terminal color integration
- Configurable italic styles for comments, keywords, functions, variables

## Installation with lazy.nvim

```lua
{
  dir = "/path/to/strix-colorscheme",
  name = "strix",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme strix-night")
  end,
}
```