-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- pack 
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.just" },
  { import = "astrocommunity.docker.lazydocker"},
  -- { import = "astrocommunity.pack.markdown" },

  { import = "astrocommunity.colorscheme.github-nvim-theme" },
  { import = "astrocommunity.recipes.telescope-lsp-mappings" },
  { import = "astrocommunity.motion.tabout-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  { import = "astrocommunity.terminal-integration.vim-tmux-navigator"},
  { import = "astrocommunity.file-explorer.oil-nvim"},
}
