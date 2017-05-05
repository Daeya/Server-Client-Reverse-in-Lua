#!/usr/bin/lua50

-- Load the library
socket = require( "libhttpd" );
host = host or "10.0.2.15"
port = port or 8080
if arg then
	host = arg[1] or host
	port = arg[2] or port
end

-- Make a connection to 10.0.2.15
print("Attempting connection to host '" ..host.. "' and port " ..port.. "...")
c = assert(socket.connect(host, port))

-- Read the response
print("Connected! Please type stuff (empty line to stop):")
l = io.read()

--Reverse
while l and l ~= "" and not e do
	assert(c:send(l .. "\n"))

	msg, err = c:receive()
	if not err then
		print("Reversed Message: " .. msg)

	end

	l = io.read()
end
