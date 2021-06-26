local nvim_lsp = require('lspconfig')

require'lspconfig'.vuels.setup{
  -- Vue Language Server start command
  cmd = { "vls" },

  -- Start on filetypes
  filetypes = { "vue" },

  init_options = {
    config = {
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
          useScaffoldSnippets = false
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
        useWorkspaceDependencies = false,
        -- Which diagnostics to enable or disable
        validation = {
          interpolation = false,
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
  end
}

