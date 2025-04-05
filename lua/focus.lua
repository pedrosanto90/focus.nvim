local M = {}

local timer = vim.loop.new_timer()

local start = function(iTime)
  local time = iTime * 60
  timer:start(0, 1000, vim.schedule_wrap(function()
    if time <= 0 then
      timer:stop()
      vim.notify("Let's take a 5min brake", "info")
    else
      time = time - 1
      vim.api.nvim_echo({ { string.format("Focus: %02d:%02d", math.floor(time / 60), time % 60) } },
        false, {})
    end
  end))
end

M.start = start
start(1)

return M
