local pulse = { }
pulse.__index = pulse

function pulse.new( closure )
    return setmetatable( { closure = closure }, pulse )
end

function pulse:set( closure )
    local backup = hookfunction( self.closure, closure )
    self.backup = backup
    
    return backup
end

function pulse:undo( )
    hookfunction( self.closure, self.backup ) 
end

return pulse
