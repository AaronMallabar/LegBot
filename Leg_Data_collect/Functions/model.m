function [] = model( action, figureNumber )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
figure(figureNumber + 1)
axis([-10 10 -10 10]);

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

startPoints = [10 0; 6 1; 2 0; 2 1.75];
change = endPoints - startPoints;
plot(startPoints(:,2), startPoints(:,1));

for i = 1:10
    x = startPoints(:,2) + i*change(:,2)./10;
    y = startPoints(:,1) + i*change(:,1)./10;
    plot(x, y);drawnow
    axis([-10 10 -10 10]);
    pause(.5);
end

%legend('Rest', 'kickOut', 'kickIn', 'plantar', 'dorsi');
end

