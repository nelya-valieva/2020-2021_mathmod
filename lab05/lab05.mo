model lab05
parameter Real a = 0.38;
parameter Real b = 0.39;
parameter Real c = 0.043;
parameter Real d = 0.042;

//parameter Real x0 = 8.0;
//parameter Real y0 = 30.0;

parameter Real x0 = 0.39/0.042;
parameter Real y0 = 0.38/0.043;

Real x(start=x0);
Real y(start=y0);

equation
der(x) = -a*x + c*x*y;
der(y) = b*y - d*x*y;

end lab05;

