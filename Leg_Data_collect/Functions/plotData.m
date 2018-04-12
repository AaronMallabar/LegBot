function [] = plotData( )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
load('LegData_13.mat');
% Kick Out
ymin = -2;
ymax = 2;
figure(1);
subplot(2,2,1);
plot(kickOutC1(:,21:40));
title('Kick Out: Channel 1');
ylim([ymin ymax]);
subplot(2,2,2);
plot(kickOutC2(:,21:40));
title('Kick Out: Channel 2');
ylim([ymin ymax]);
subplot(2,2,3);
plot(kickOutC1(:,21:40));
title('Kick Out: Channel 3');
ylim([ymin ymax]);
subplot(2,2,4);
plot(kickOutC1(:,21:40));
title('Kick Out: Channel 4');
ylim([ymin ymax]);

% Kick IN
ymin = -2;
ymax = 2;
figure(2);
subplot(2,2,1);
plot(kickInC1(:,21:40));
title('Kick In: Channel 1');
ylim([ymin ymax]);
subplot(2,2,2);
plot(kickInC1(:,21:40));
title('Kick In: Channel 2');
ylim([ymin ymax]);
subplot(2,2,3);
plot(kickInC1(:,21:40));
title('Kick In: Channel 3');
ylim([ymin ymax]);
subplot(2,2,4);
plot(kickInC1(:,21:40));
title('Kick In: Channel 4');
ylim([ymin ymax]);

% Dorsiflexion
ymin = -2;
ymax = 2;
figure(3);
subplot(2,2,1);
plot(DorsiflexionC1(:,21:40));
title('Ankle Dorsiflexion: Channel 1');
ylim([ymin ymax]);
subplot(2,2,2);
plot(DorsiflexionC1(:,21:40));
title('Ankle Dorsiflexion: Channel 2');
ylim([ymin ymax]);
subplot(2,2,3);
plot(DorsiflexionC1(:,21:40));
title('Ankle Dorsiflexion: Channel 3');
ylim([ymin ymax]);
subplot(2,2,4);
plot(DorsiflexionC1(:,21:40));
title('Ankle Dorsiflexion: Channel 4');
ylim([ymin ymax]);

% Plantarflexion
ymin = -2;
ymax = 2;
figure(4);
subplot(2,2,1);
plot(PlantarflexionC1(:,21:40));
title('Ankle Plantarflexion: Channel 1');
ylim([ymin ymax]);
subplot(2,2,2);
plot(PlantarflexionC1(:,21:40));
title('Ankle Plantarflexion: Channel 2');
ylim([ymin ymax]);
subplot(2,2,3);
plot(PlantarflexionC1(:,21:40));
title('Ankle Plantarflexion: Channel 3');
ylim([ymin ymax]);
subplot(2,2,4);
plot(PlantarflexionC1(:,21:40));
title('Ankle Plantarflexion: Channel 4');
ylim([ymin ymax]);

% Resting
ymin = -2;
ymax = 2;
figure(5);
subplot(2,2,1);
plot(Rest1);
title('Resting: Channel 1');
ylim([ymin ymax]);
subplot(2,2,2);
plot(Rest2);
title('Resting: Channel 2');
ylim([ymin ymax]);
subplot(2,2,3);
plot(Rest3);
title('Resting: Channel 3');
ylim([ymin ymax]);
subplot(2,2,4);
plot(Rest4);
title('Resting: Channel 4');
ylim([ymin ymax]);

end

