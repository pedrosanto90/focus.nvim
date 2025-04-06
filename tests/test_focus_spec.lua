local focus = require("focus")

describe("Focus timer", function()
  it("chama o callback quando focus termina", function()
    local called = false

    focus.focus_start(0.01, function()
      called = true
    end)

    vim.wait(2000, function()
      return called
    end, 50)

    assert.is_true(called)
  end)

  it("chama o callback quando break termina", function()
    local called = false

    focus.break_start(0.01, function()
      called = true
    end)

    vim.wait(2000, function()
      return called
    end, 50)

    assert.is_true(called)
  end)
end)
