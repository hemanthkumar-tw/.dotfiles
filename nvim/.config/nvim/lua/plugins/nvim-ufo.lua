return {
  "kevinhwang91/nvim-ufo",
  opts = {
    provider_selector = function(bufnr, filetype, buftype)
      return "" -- Disable ufo temporarily
      -- return { "treesitter", "indent" } -- Disable ufo temporarily
    end,
  },
}
