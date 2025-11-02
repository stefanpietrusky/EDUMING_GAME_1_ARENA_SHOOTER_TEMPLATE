if (exiting)
{
	paravalue += paraspd;
    if (paravalue >= paramaxvalue)
    {
		room_goto(targetroom);
    }
}
else
{
    paravalue += -paraspd;
    if (paravalue <= paraminvalue)
    {
        instance_destroy();
    }
}
fx_set_parameter(filter, paraname, paravalue);
