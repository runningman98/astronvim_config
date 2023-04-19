return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettierd.with {
      --   extra_filetypes = { "htmldjango" },
      -- },
      -- -- null_ls.builtins.formatting.shfmt.with {
      --   extra_args = { "-i", "2", "-ci" },
      -- },
      null_ls.builtins.formatting.djlint.with {
        extra_args = { "--indent", "2" },
        extra_filetypes = { "html" },
      },
    }
    return config -- return final config table
  end,
}
