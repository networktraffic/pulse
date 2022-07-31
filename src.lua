local pulse = { }
pulse.__index = pulse

function pulse.new( closure )
    return setmetatable( { closure = closure }, pulse )
end

function pulse:set( closure )
    if not self.backup then
        self.backup = replaceclosure( self.closure, closure )
    end
end

function pulse:undo( )
    if self.backup then
        self.backup = nil
        replaceclosure( self.closure, self.backup ) 
    end
end

return pulse
