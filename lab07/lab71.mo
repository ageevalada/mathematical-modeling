model lab71
parameter Real a=0.77;
parameter Real b=0.000075;
parameter Real N = 1203;

Real n(start=15); 

equation

der(n) = (a + b*n)*(N - n);

annotation(experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.002));

end lab71;
