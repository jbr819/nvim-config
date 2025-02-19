require('telescope').setup{
  defaults = {
    -- Add the file ignore patterns here
    file_ignore_patterns = {
      "%.pyc$",        
      "__pycache__/",  
      "%.git/",
      "__init__.py",
      "%.JPG$","%.jpg$", "%.jpeg$", "%.png$", "%.gif$", "%.bmp$", "%.tiff$", "%.webp$",
      "%.pdf$", 
      "%.zip$", "%.tar$", "%.rar$",
      "%.exe$", "%.bin$",
    },
  },
}
