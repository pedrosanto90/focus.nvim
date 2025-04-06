vim.api.nvim_create_user_command("StartFocus", function(opts)
  local time = tonumber(opts.args) or 45
  require("focus").focus_start(time)
end, {
  nargs = "?"
})

vim.api.nvim_create_user_command("StartBreak", function(opts)
  local time = tonumber(opts.args) or 15
  require("focus").break_start(time)
end, {
  nargs = "?"
})

vim.api.nvim_create_user_command("StartSession", function(opts)
  local session = tonumber(opts.args) or 3
  local focus = require("focus")

  local function run_cycle(n)
    if n == 0 then
      vim.notify("Full Session Done. Good Work!", "info")
      return
    end

    focus.focus_start(45, function()
      focus.break_start(15, function()
        run_cycle(n - 1)
      end)
    end)
  end

  run_cycle(session)
end, {
  nargs = "?"
})
