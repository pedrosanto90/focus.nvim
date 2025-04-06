vim.api.nvim_create_user_command("StartFocus", function(opts)
  require("focus").focus_start(opts.args)
end, {
  nargs = 1
})

vim.api.nvim_create_user_command("StartBreak", function(opts)
  require("focus").break_start(opts.args)
end, {
  nargs = 1
})
