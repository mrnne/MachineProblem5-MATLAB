% MACHINE PROBLEM 5 MATLAB
% defining the vectors x,y and n
n = (0:1:199);
y = zeros(size(x));

x = input('Input equation for x(n): ');

% loop over the vector n, calculate the values of y
for i=1:200
if n(i) == 0
y(i) = -1.5*x(i) + 2*x(i+1)- 0.5*x(i+2);
elseif n(i) < 199
y(i) = 0.5*x(i+1) - 0.5*x(i-1);
else
y(i) = 1.5*x(i) - 2*x(i-1) + 0.5*x(i-2);
end
end

% plot x in terms of n
plot(n,x,'r-');

% hold the current figure
hold on; 

% plot y in terms of n in the same figure as x(n)
plot(n,y,'b-');

% release the current figure
hold off; 

% specify the legend
legend('x','y');

% specify the x label
xlabel('x(n)'); 

% specify the y label
ylabel('y(n)'); 

% specify the title
title('Machine Problem 5'); 