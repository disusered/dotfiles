-- TODO: Workspace symbols
-- Map('n', '<leader>y', T('lsp_dynamic_workspace_symbols'), {})

-- TODO: Grep on !
-- Map('n', '!', T('grep_string'), {})

local snap = require'snap'

local function producer(args)
  -- Defaults for all producers
  local defaults = {
    prompt = args.prompt or "Results",
    suffix = " »",
    producer = args.producer or "ripgrep.file",
    select = args.select or snap.get'select.file'.select,
    multiselect = args.multiselect or snap.get'select.file'.multiselect,
    views = args.views or {snap.get'preview.file'},
    args = {"--hidden", "--iglob", "!.git/*"},
    mappings = {
      ["enter-split"] = {"<C-s>"},
      ["next-item"] = {"<C-n>", "<Down>"},
      ["prev-item"] = {"<C-p>", "<Up>"},
    },
    preview = true,
    layout = snap.get('layout').bottom
  }

  -- Use builtin config helper
  return snap.config.file(defaults)
end

snap.maps {
  {"<Leader>p", producer {producer = snap.get'consumer.fzy'(snap.get'producer.git.file'), prompt = "Git Files"}},
  {"<Leader>f", producer {producer = "ripgrep.file", prompt = "Files"}},
  {"<Leader>b", producer {producer = "vim.buffer", prompt = "Buffers"}},
  {"<Leader>o", producer {producer = "vim.oldfile", prompt = "Recently Used"}},
  {"<Leader>r", producer {
    producer = snap.get'consumer.limit'(10000, snap.get'producer.ripgrep.vimgrep'),
    prompt = "Grep",
    select = snap.get'select.vimgrep'.select,
    multiselect = snap.get'select.vimgrep'.multiselect,
    views = {snap.get'preview.vimgrep'}
  }}
}
