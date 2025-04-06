vim.api.nvim_create_user_command("StartFocus", function(opts)
  local time = tonumber(opts.args)
  if not time then
    time = 45
  end
  require("focus").focus_start(time)
end, {
  nargs = "?"
})

vim.api.nvim_create_user_command("StartBreak", function(opts)
  local time = tonumber(opts.args)
  if not time then
    time = 15
  end
  require("focus").break_start(time)
end, {
  nargs = "?"
})
