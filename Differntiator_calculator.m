clc
clear all
close all
%Intake of candidate number 
candidate_number=input('Enter your candidate number: \n'); 
%introducing the expression with the variables as x=time (t) and y=
%displacement (y)
dydt=@(t,y)[y(2);-10*y(2)-16*y(1)+16];
%Using ode45 function to evaluate the first and second derivative of the
%expression when the inital y value is 0 and dy/dt is 0.
[T,Y]=ode45(dydt,[0,candidate_number/25000],[0;0]);
%plotting the first expression (y vs t) 
plot(T,Y(:,1))
hold on
%plotting the second expression (dy/dt vs dt)
plot(T,Y(:,2))
grid on
legend('y vs t','dy/dt vs t')
%finding the maximum value of y given the first expression
max_1=max(Y(:,1));
%finding the time at which the maximum occurs
max_1t=max(T(:,1));
fprintf('The maximum value in expression y is: \n');
disp(max_1);
fprintf('The time at which the maximum occurs in y: \n');
disp(max_1t);
[max_2, indexOfMaxValue] = max(Y(:,2));
fprintf('The maximum value in expression dy/dt is: \n');
disp(max_2);
%Since the time value does not exceeed 1, the increment of the time
%interval divided by the index increment
time_2 = (candidate_number/25000)/indexOfMaxValue;
fprintf('The time at which the maximum occurs in dy/dt: \n');
disp(time_2);



