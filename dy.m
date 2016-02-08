function dydt = dy(y, m, c, g)

dydt = g - (c / m) * y;
