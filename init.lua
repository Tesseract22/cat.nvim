require("cat")
print("Hello, TesseractCat")


local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('calincru/flex-bison-syntax')
vim.call('plug#end')
