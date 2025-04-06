local M = {}

local timer = vim.loop.new_timer()

local focus_start = function(i_time, on_finish)
  local time = i_time * 60
  timer:start(0, 1000, vim.schedule_wrap(function()
    if time <= 0 then
      timer:stop()
      vim.system({ "spd-say", "work session done" })
      vim.system({ "notify-send", "-u", "normal", "-i", "alarm-symbolic", "Pomodoro", " Work Session done!" })
      vim.notify("Let's take a break?", "info")

      if on_finish then
        on_finish()
      end
    else
      time = time - 1
      vim.api.nvim_echo({ { string.format("Focus: %02d:%02d", math.floor(time / 60), time % 60) } },
        false, {})
    end
  end))
end

local break_start = function(i_time, on_finish)
  local time = i_time * 60
  timer:start(0, 1000, vim.schedule_wrap(function()
    if time <= 0 then
      timer:stop()
      vim.system({ "spd-say", "Let's get some work done" })
      vim.system({ "notify-send", "-u", "normal", "-i", "alarm-symbolic", "Pomodoro", "Break is over!" })
      vim.notify("Let's get some work done", "info")

      if on_finish then
        on_finish()
      end
    else
      time = time - 1
      vim.api.nvim_echo({ { string.format("Break: %02d:%02d", math.floor(time / 60), time % 60) } },
        false, {})
    end
  end))
end

M.focus_start = focus_start
M.break_start = break_start

return M
