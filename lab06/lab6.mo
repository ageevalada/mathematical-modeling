model lab6
  parameter Real alpha=0.01;
  parameter Real beta=0.02;
  
  Real S(start = 10836);
  Real I(start = 220);
  Real R(start = 44);
equation

//Случай I < 1
//der(S) = 0;
//der(I) = - beta*I;
//der(R) = beta*I;

//Случай I > 1
der(S) = -alpha*S;
der(I) = alpha*S - beta*I;
der(R) = beta*I;

annotation(experiment(StartTime = 0, StopTime = 300, Tolerance = 1e-6, Interval = 0.01));
end lab6;
