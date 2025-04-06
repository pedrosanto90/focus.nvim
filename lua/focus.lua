local M = {}

local timer = vim.loop.new_timer()

local focus_start = function(iTime)
  local time = iTime * 60
  timer:start(0, 1000, vim.schedule_wrap(function()
    if time <= 0 then
      timer:stop()
      vim.system({ "spd-say", "work session done" })
      vim.system({ "notify-send", "-u", "normal", "-i", "alarm-symbolic", "Pomodoro", " Work Session done!" })
      vim.notify("Let's take a 5min brake", "info")
    else
      time = time - 1
      vim.api.nvim_echo({ { string.format("Focus: %02d:%02d", math.floor(time / 60), time % 60) } },
        false, {})
    end
  end))
end

M.focus_start = focus_start
-- start(1)

return M
