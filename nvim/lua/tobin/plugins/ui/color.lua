local colorsscheme = {
  { name = 'folke/tokyonight.nvim', theme = 'tokyonight-night', enabled = true },
  { name = 'ellisonleao/gruvbox.nvim', theme = 'gruvbox', enabled = false },
  { name = 'Mofiqul/dracula.nvim', theme = 'dracula', enabled = false },
}

local object = {}

for _, scheme in pairs(colorsscheme) do
  if scheme.enabled == false then
    table.insert(object, { scheme.name, cond = scheme.enabled })
  else
    table.insert(object, {
      scheme.name,
      cond = true,
      lazy = false,
      config = function()
        vim.cmd('colorscheme ' .. scheme.theme)
      end,
    })
  end
end

return object
