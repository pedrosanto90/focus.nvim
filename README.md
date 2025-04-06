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

| Command | Function |
|--|--|
| `StartFocus 25` | starts a 25min session |
|--|--|
|`StartBreake 10` | starts a 10min break |
|--|--|
|`StartFcous` | starts a default session of 45min |
|--|--|
|`StartBreak` | starts a default break of 15min |  
|`StartSession 3` | starts a full session of 3 focus+work (default 45m+15min) |

If no arguments passed default is 3 full sessions
Time allways 45min focus + 15min break
