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
        experimental = {
          -- Enable hover/definition/references in Vue interpolations
          templateInterpolationService = false
        },
        completion = {
          -- Include completion for module export and auto import them
          autoImport = true,
          -- Casing conversion for tag completion
          tagCasing = "kebab",
          -- Where Vetur sources scaffold snippets
          useScaffoldSnippets = true
        },
        underline = {
          -- Enable underline `.value` when using composition API.
          refValue = true
        },
        format = {
          -- Enable document formatter
          enable = true,
          -- Configure default code formatters for template blocks
          defaultFormatter = {
            css = "prettier",
            postcss = "prettier",
            sass = "prettier",
            scss = "prettier",
            js = "prettier-eslint",
            ts = "prettier-tslint",
            html = "prettier"
          },
          defaultFormatterOptions = {},
          -- Whether to indent the content of the template blocks
          scriptInitialIndent = false,
          styleInitialIndent = false
        },

        -- Try to use local dependencies (TS only)
        useWorkspaceDependencies = true,

        -- Which diagnostics to enable or disable
        validation = {
          interpolation = true,
          script = true,
          style = true,
          template = true,
          templateProps = false
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

