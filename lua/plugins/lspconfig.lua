return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Disable standard pyright to avoid conflicts
      pyright = {
        enabled = false,
      },
      -- Enable basedpyright
      basedpyright = {
        enabled = true,
        settings = {
          basedpyright = {
            -- These settings mirror the standard pyright analysis behavior
            -- Using basedpyright to have navigation
            analysis = {
              autoSearchPaths = true,
              diagnosticMode = "openFilesOnly",
              useLibraryCodeForTypes = true,
              -- 'basic' is the standard type checking mode.
              -- Change to 'off' if you only want navigation, or 'strict' for stricter checking.
              typeCheckingMode = "basic",
            },
          },
        },
      },
      ["*"] = {
        keys = {
          -- Add a keymap
          --{ "H", "<cmd>echo 'hello'<cr>", desc = "Say Hello" },
          -- Change an existing keymap
          --{ "K", "<cmd>echo 'custom hover'<cr>", desc = "Custom Hover" },
          -- Disable a keymap
          --{ "gd", false },
        },
      },
    },
  },
}
