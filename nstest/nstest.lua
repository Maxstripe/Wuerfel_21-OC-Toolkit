--released to the public domain because of it having 11 lines only
local notestream = require("noteal.notestream")
local shell = require("shell")
local args = shell.parse(...)
f = io.open(args[1])
while true do
::concurr::
local l = f:read("*line")
if l == nil then break end
local w = notestream.do_command(l) / 1000
if w == 0 then goto concurr end
os.sleep(w)
end
f:close()