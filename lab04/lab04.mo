model lab04
//1 случай
//parameter Real w=sqrt(2.7); //w-частота
//parameter Real g=0; //g-затухание

//2 случай
//parameter Real w=sqrt(2.7); //w-частота
//parameter Real g=2.7; //g-затухание

//3 случай
parameter Real w=sqrt(2.7); //w-частота
parameter Real g=17.0; //g-затухание

parameter Real x0 = 0.7;
parameter Real y0 = 0.7;

Real x(start=x0);
Real y(start=y0);

function f 
  input Real t;
  output Real result;
algorithm
  //result:=0;
  result:=0.7*sin(7.0*t);
end f;

equation
der(x) = y;
der(y) = -w*w*x - g*y -f(time);

end lab04;


