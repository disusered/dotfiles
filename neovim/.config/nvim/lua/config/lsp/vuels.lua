local nvim_lsp = require('lspconfig')

require'lspconfig'.vuels.setup{
  -- Vue Language Server start command
  cmd = { vim.loop.os_homedir().."/.volta/bin/vls" },

  -- Start on filetypes
  filetypes = { "vue" },

  init_options = {
    config = {
      css = {},
      emmet = {},
      html = {
        suggest = {}
      },
      javascript = {
        format = {}
      },
      stylusSupremacy = {},
      typescript = {
        format = {}
      },

      -- Vetur options
      vetur = {
        -- Enable hover/definition/references in Vue interpolations
        -- WARNING: Requires JSDoc or TS annotations
        experimental = {
          templateInterpolationService = false
        },
        completion = {
          -- Include completion for module export and auto import them
          autoImport = false,
          -- Casing conversion for tag completion
          tagCasing = "kebab",
          -- Where Vetur sources scaffold snippets
          useScaffoldSnippets = true
        },
        -- Enable underline `.value` when using composition API.
        underline = {
          refValue = true
        },
        format = {
          -- Enable document formatter
          enable = false,
          -- TODO: Fix in the future and deprecate formatting plugins
          -- Configure default code formatters for template blocks
          -- defaultFormatter = {
          --   css = "prettier",
          --   postcss = "prettier",
          --   sass = "sass-formatter",
          --   scss = "prettier",
          --   js = "prettier-eslint",
          --   ts = "prettier-eslint",
          --   html = "prettier"
          -- }
        },

        -- Which built-in diagnostics to enable or disable. Disabling will
        -- fallback to ESLint, which is generally what we want in a project
        -- https://vuejs.github.io/vetur/guide/linting-error.html#linting
        validation = {
          script = false,
          style = false,
          template = false
        }
      }
    }
  },

  -- Define root Vue project directory pattern
  root_dir = nvim_lsp.util.root_pattern("package.json", "vue.config.js", "nuxt.config.js"),

  on_attach = function(client, bufnr)
    -- Register keymaps
    require'config.lsp.maps'(bufnr)

    -- Attach LSP signature plugin and config
    require'config.lspsignature'()

    -- Attach LSP kind plugin and config
    require'config.lspkind'()
  end
}

