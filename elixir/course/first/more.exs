logo_file = fn
  :dem -> "donkey.png"
  :rep -> "elephant.png"
  :lib -> "statue.png"
  :green -> "flower.png"
  _ -> "missing.png"
end

file = logo_file.(:dem)
IO.puts(file)
