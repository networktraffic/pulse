# information
this is designed for exploits only, due to the nature of `hookfunction`

getting started: just simply make an http request to the raw `src.lua` contents file

```lua
pulse:set( <function> closure )
pulse:undo( <void> )
```

# usage
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
