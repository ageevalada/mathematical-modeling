model lab73
parameter Real a=0.2;
parameter Real b=0.7;
parameter Real N = 1203;

Real n(start=15); 

equation

der(n) = (a * cos(time) + b*cos(time)*n)*(N - n);

annotation(experiment(StartTime = 0, StopTime = 0.025, Tolerance = 1e-6, Interval = 0.0001));

end lab73;
