model lab72
parameter Real a=0.000075;
parameter Real b=0.77;
parameter Real N = 1203;

Real n(start=15); 

equation

der(n) = (a + b*n)*(N - n);

annotation(experiment(StartTime = 0, StopTime = 0.025, Tolerance = 1e-6, Interval = 0.0001));

end lab72;
