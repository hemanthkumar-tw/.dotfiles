return {
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      -- Dynamically locate the Mason-installed debugpy environment
      -- local mason_registry = require("mason-registry")
      -- local debugpy_install_path = mason_registry.get_package("debugpy"):get_install_path()
      -- local debugpy_python_path = debugpy_install_path .. "/venv/bin/python"

      -- Initialize dap-python with the Mason debugger path
      local dap_python = require "dap-python"
      dap_python.setup "uv"

      -- Explicitly set pytest as the testing framework
      dap_python.test_runner = "pytest"
    end,
    -- Map AstroNvim-style keybindings for test debugging
    keys = {
      {
        "<Leader>dPt",
        function() require("dap-python").test_method() end,
        desc = "Debug Python Test (Method)",
      },
      {
        "<Leader>dPc",
        function() require("dap-python").test_class() end,
        desc = "Debug Python Test (Class)",
      },
    },
  },
}
