array = argument0;

for(var i = 0;i < array_length_1d(array); i++)
{
    instance_deactivate_object(array[i]);
}

array = 0;

return array;
