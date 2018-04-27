function [startPoints] = model( action, figureNumber, startPoints )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
figure(figureNumber)
xlim([-6 6]);
ylim([0 12]);
% axis([0 12 -6 6]);

if action == 1
    kickOutPoints = [10 0; 6 1; 2 2; 2.75 3.5];
    endPoints = kickOutPoints;
elseif action == 2   
    kickInPoints = [10 0; 6 1; 4 -2; 2.5 -1.25];
    endPoints = kickInPoints;   
elseif action == 3   
    plantarPoints = [10 0; 6 1; 2 0; .5 1.5];
    endPoints = plantarPoints;  
elseif action == 4   
    dorsiPoints = [10 0; 6 1; 2 0; 3.5 1.5];
    endPoints = dorsiPoints;    
elseif action == 5  
    Rest = [10 0; 6 1; 2 0; 2 1.75];
    endPoints = Rest;  
end

switch nargin
    case 2
        startPoints = [10 0; 6 1; 2 0; 2 1.75];
    case 1
        startPoints = [10 0; 6 1; 2 0; 2 1.75];
    otherwise
end

change = endPoints - startPoints;
plot(startPoints(:,2), startPoints(:,1));

steps = 20;

for i = 1:steps
    x = startPoints(:,2) + i*change(:,2)./steps;
    y = startPoints(:,1) + i*change(:,1)./steps;
    plot(x, y);%drawnow
    axis([-10 10 0 12]);
    pause(.1);
end

startPoints = endPoints;

%legend('Rest', 'kickOut', 'kickIn', 'plantar', 'dorsi');
end

