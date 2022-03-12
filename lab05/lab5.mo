model lab5

  parameter Real a=0.61;
  parameter Real b=0.059; 
  parameter Real c=0.51;
  parameter Real d=0.047;

Real x(start=9); 
Real y(start=12); 

equation
der(x) = -a*x +b*x*y; 
der(y) = c*y - d*x*y; 
equation

annotation(experiment(StartTime = 0, StopTime = 500, Tolerance = 1e-6, Interval = 0.002));

end lab5;
