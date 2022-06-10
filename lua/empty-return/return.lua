
function empty_return ()
local isGo = true

print("before")

if isGo then
  return
end

print("after")


end

empty_return()
print("global scope call")

