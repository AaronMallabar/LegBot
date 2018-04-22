function [] = model( action, figureNumber )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
figure(figureNumber + 1)
hold all
hold on
axis([-10 10 -10 10]);

if action == 1
    kickOutPoints = [10 0; 6 1; 2 2; 2.75 3.5];
    legPoints = kickOutPoints;
elseif action == 2   
    kickInPoints = [10 0; 6 1; 4 -2; 2.5 -1.25];
    legPoints = kickInPoints;   
elseif action == 3   
    plantarPoints = [10 0; 6 1; 2 0; .5 1.5];
    legPoints = plantarPoints;  
elseif action == 4   
    dorsiPoints = [10 0; 6 1; 2 0; 3.5 1.5];
    legPoints = dorsiPoints;    
elseif action == 5  
    Rest = [10 0; 6 1; 2 0; 2 1.75];
    legPoints = Rest;  
end

plot(legPoints(:,2), legPoints(:,1));

%legend('Rest', 'kickOut', 'kickIn', 'plantar', 'dorsi');
end

