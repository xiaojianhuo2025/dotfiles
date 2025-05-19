-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  ui = {
    backdrop = 100,
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "everforest" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
  rocks = { enabled = false },
})

require('deadcolumn').setup({
    -- Dynamically adjusts the colorcolumn behavior based on editing
    -- mode:
    -- 1. In insert/replace/selection mode: update the color gradually
    --    based on current line length
    -- 2. In other modes: update the color based on longest visible line,
    --    if there's any line that exceeds the colorcolumn limit, show
    --    the colorcolumn with warning color, else conceal the
    --    colorcolumn entirely
    scope = function()
      if vim.fn.mode():find('^[iRss\x13]') ~= nil then
        return vim.fn.strdisplaywidth(vim.fn.getline('.'))
      end

      -- Don't show in read-only buffers
      if not vim.bo.ma or vim.bo.ro then
        return 0
      end

      -- Find maximum length within visible range
      local max_len = math.max(
        unpack(
          vim.tbl_map(
            vim.fn.strdisplaywidth,
            vim.api.nvim_buf_get_lines(
              0,
              vim.fn.line('w0') - 1,
              vim.fn.line('w$'),
              false
            )
          )
        )
      )

      if max_len >= cc_resolve(vim.wo.cc) then
        return max_len
      end
      return 0
    end,
})
