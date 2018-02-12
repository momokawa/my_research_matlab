% this function return the power output

function output = get_power_output(torque_array, velocity_array)
    output = (velocity_array.velocity.Data).*(torque_array.Data);
end
