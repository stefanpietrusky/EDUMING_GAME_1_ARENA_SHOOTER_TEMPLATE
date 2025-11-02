paravalue = paraminvalue;
exiting = true;
templayer = layer_create(-10000);
filter = fx_create(filtername);
layer_set_fx(templayer, filter);
fx_set_parameter(filter, paraname, paravalue);