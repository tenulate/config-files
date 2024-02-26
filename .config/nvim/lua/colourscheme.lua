local colorscheme = "gruvbox"

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
    print("Colorscheme not found!")
    vim.cmd("colorscheme default")
    vim.cmd("set background=dark")
    return
end
