# A pomodo like app to use inside neovim

## Instalation
### Dependecies
libnotify
```shell
sudo apt install libnotify-bin
```

```lua
return {
  {
    "pedrosanto90/focus.nvim",
    config = function()
      require "focus"
    end
  }
}
```

## Usage

StartFocus 10
-- Starts a 10min work session
