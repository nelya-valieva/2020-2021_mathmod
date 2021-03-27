model lab07

parameter Real N = 1430; 
parameter Real x0 = 11;
Real x(start=x0);

function k
  input Real t;
  output Real result;
algorithm
  result := 0.62;
  //result := 0.000024;
  //result := 0.5*t;
end k;

function p
  input Real t;
  output Real result;
algorithm
  result := 0.000023;
  //result := 0.4;
  //result := 0.5*t;
end p;

equation
der(x) = (k(time) + p(time) * x) * (N - x);

end lab07;


