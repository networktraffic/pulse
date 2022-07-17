# information
a) to use this in studio, you could create a `ModuleScript` and put the `src.lua` contents or just paste it within your own script

b) if you want to use this for exploit environment development, just simply make an http request to the raw `src.lua` contents file or paste it within the script and use from there

```lua
pulse:set( <function> closure )
pulse:undo( <void> )
```

# exploit environment usage
```lua
local timer = loadstring( game:HttpGetAsync( 'https://raw.githubusercontent.com/networktraffic/pulse/main/src.lua' ) )( )
local example_hook = pulse.new( function( )
    print( 'hi!' )
end )

example_hook.closure( )

example_hook:set( function( )
    print( 'bye!' )
end )

example_hook.closure( )
example_hook:undo( )
example_hook.closure( )
```
