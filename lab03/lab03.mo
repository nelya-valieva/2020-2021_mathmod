model lab03
/*parameter Real a = 0.223;
parameter Real b = 0.774;
parameter Real c = 0.665;
parameter Real h = 0.332;*/

parameter Real a = 0.291;
parameter Real b = 0.865;
parameter Real c = 0.456;
parameter Real h = 0.789;

parameter Real x0 = 222000;
parameter Real y0 = 229000;

Real x(start=x0);
Real y(start=y0);

equation
/*der(x) = -a*x-b*y+abs(sin(time+1));
der(y) = -c*x-h*y+abs(cos(time+2));*/
der(x) = -a*x-b*y+abs(sin(2*time));
der(y) = -c*x*y-h*y+abs(cos(time));
end lab03;
