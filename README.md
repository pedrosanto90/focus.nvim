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
| `StartFocus 25` | starts a 45min session |
|--|--|
|`StartBreake 15` | starts a 15min break |
