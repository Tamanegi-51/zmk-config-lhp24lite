local status = {}

function status.on_update()
    local layer = zmk.layer.active()
    local x = zmk.analog.get_x()
    local y = zmk.analog.get_y()

    zmk.display.clear()

    zmk.display.write("Layer: " .. layer, 0, 0)
    zmk.display.write("X: " .. x, 0, 1)
    zmk.display.write("Y: " .. y, 0, 2)
end

return status
