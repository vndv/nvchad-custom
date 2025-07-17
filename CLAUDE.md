# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration repository that extends NvChad v2.5. It's designed to be used as a starter configuration that imports the main NvChad plugin and adds custom configurations on top.

## Architecture

- **Main entry point**: `init.lua` - bootstraps lazy.nvim and loads the configuration
- **Configuration structure**:
  - `lua/chadrc.lua` - Main configuration file for NvChad settings (theme, UI options)
  - `lua/options.lua` - Neovim options (extends nvchad.options)
  - `lua/mappings.lua` - Custom keymaps (extends nvchad.mappings) 
  - `lua/autocmds.lua` - Autocommands (extends nvchad.autocmds)
  - `lua/plugins/init.lua` - Custom plugin specifications
  - `lua/configs/` - Plugin-specific configuration files

## Key Files

- `init.lua:19` - NvChad plugin import from branch v2.5
- `lua/chadrc.lua:8` - Theme configuration (currently "onedark")
- `lua/plugins/init.lua:3` - conform.nvim for formatting
- `lua/plugins/init.lua:10` - LSP configuration
- `lua/configs/lspconfig.lua:3` - Enabled LSP servers (html, cssls)
- `lua/configs/conform.lua:3` - Formatter configuration (stylua for Lua)

## Common Operations

Since this is a Neovim configuration (not a development project), there are no build/test/lint commands. The configuration is applied when Neovim starts.

**Configuration management**:
- Edit `lua/chadrc.lua` to change themes or UI settings
- Add custom plugins to `lua/plugins/init.lua`
- Configure LSP servers in `lua/configs/lspconfig.lua`
- Add formatters to `lua/configs/conform.lua`

**Testing configuration**:
- Start Neovim to test the configuration
- Use `:Lazy` to manage plugins
- Use `:checkhealth` to verify setup

## Important Notes

- This configuration extends NvChad, so many settings are inherited from the base plugin
- The `lazy-lock.json` file locks plugin versions (similar to package-lock.json)
- Custom configurations should extend rather than replace NvChad defaults
- LSP servers need to be installed separately (not managed by this config)