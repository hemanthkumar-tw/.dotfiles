if true then return {} end -- Disabled for now, remove this to enable it.

return {
  "catppuccin/nvim",
  name = "catppuccin",
  -- lazy = false,
  -- priority = 1000, -- Ensures it loads before all other UI elements
  opts = {
    flavour = "mocha",
    transparent_background = true,
  },
}
