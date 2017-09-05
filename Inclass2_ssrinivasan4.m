%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

for ii = 1:20
    if mod(ii,2) ~= 0
      disp(ii)
    end
end

% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 

for ii= 1:2:19
    disp(ii)
end

% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)
disp(num2str(1:2:19))

%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 

for ii = 1:100
    z(ii) = ii*ii;
end

ii=1:100
z=ii.^2

%b. 
z = 0;
for ii = 1:100
    z = z + ii;
end

ii=1:100
z=sum(ii)

%c.
xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,2)^2);
end

xx=rand(50,2);
z2=sqrt(xx(:,1).^2 + xx(:,2).^2)


% d. what is the formula in c computing?
%the formula is the pythagorean theorem, calculating the length of the 

%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.

x=linspace(0, 4*pi)
s=sin(x)
c=cos(x)
plot(x, s, '--r');
hold on;
plot(x, c);
legend({'sin(x)', 'cos(x)'})

%b. repeat the above but where each graph is in a different subplot in the
% same figure.
pl1=subplot(2,1,1);
x=linspace(0, 4*pi);
s=sin(x);
plot(pl1, x, s, '--r')
title(pl1, 'Sin(x)')

pl2=subplot(2,1,2);
c=cos(x);
plot(pl2, x, c);
title(pl2, 'Cos(x)');

%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.
figure;
plot(xy_dat)
%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,1);
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command
scatter(xy_dat(:,1), xy_dat(:,2),20,fluor,'filled')