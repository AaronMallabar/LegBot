function [figureNum] = plotData(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, first, last, figureNum)

%% Kick Out
ymin = -2;
ymax = 2;
figure(figureNum); figureNum = figureNum + 1;
subplot(2,2,1);
plot(kickOut.C1(:,first:last));
title('Kick Out: Channel 1');
ylim([ymin ymax]);
subplot(2,2,2);
plot(kickOut.C2(:,first:last));
title('Kick Out: Channel 2');
ylim([ymin ymax]);
subplot(2,2,3);
plot(kickOut.C3(:,first:last));
title('Kick Out: Channel 3');
ylim([ymin ymax]);
subplot(2,2,4);
plot(kickOut.C4(:,first:last));
title('Kick Out: Channel 4');
ylim([ymin ymax]);

%% Kick IN
ymin = -2;
ymax = 2;
figure(figureNum); figureNum = figureNum + 1;
subplot(2,2,1);
plot(kickIn.C1(:,first:last));
title('Kick In: Channel 1');
ylim([ymin ymax]);
subplot(2,2,2);
plot(kickIn.C2(:,first:last));
title('Kick In: Channel 2');
ylim([ymin ymax]);
subplot(2,2,3);
plot(kickIn.C3(:,first:last));
title('Kick In: Channel 3');
ylim([ymin ymax]);
subplot(2,2,4);
plot(kickIn.C4(:,first:last));
title('Kick In: Channel 4');
ylim([ymin ymax]);

%% Dorsiflexion
ymin = -2;
ymax = 2;
figure(figureNum); figureNum = figureNum + 1;
subplot(2,2,1);
plot(Dorsiflexion.C1(:,first:last));
title('Ankle Dorsiflexion: Channel 1');
ylim([ymin ymax]);
subplot(2,2,2);
plot(Dorsiflexion.C2(:,first:last));
title('Ankle Dorsiflexion: Channel 2');
ylim([ymin ymax]);
subplot(2,2,3);
plot(Dorsiflexion.C3(:,first:last));
title('Ankle Dorsiflexion: Channel 3');
ylim([ymin ymax]);
subplot(2,2,4);
plot(Dorsiflexion.C4(:,first:last));
title('Ankle Dorsiflexion: Channel 4');
ylim([ymin ymax]);

%% Plantarflexion
ymin = -2;
ymax = 2;
figure(figureNum); figureNum = figureNum + 1;
subplot(2,2,1);
plot(Plantarflexion.C1(:,first:last));
title('Ankle Plantarflexion: Channel 1');
ylim([ymin ymax]);
subplot(2,2,2);
plot(Plantarflexion.C2(:,first:last));
title('Ankle Plantarflexion: Channel 2');
ylim([ymin ymax]);
subplot(2,2,3);
plot(Plantarflexion.C3(:,first:last));
title('Ankle Plantarflexion: Channel 3');
ylim([ymin ymax]);
subplot(2,2,4);
plot(Plantarflexion.C4(:,first:last));
title('Ankle Plantarflexion: Channel 4');
ylim([ymin ymax]);

%% Resting
ymin = -2;
ymax = 2;
figure(figureNum); figureNum = figureNum + 1;
subplot(2,2,1);
plot(Rest.C1(:,first:last));
title('Resting: Channel 1');
ylim([ymin ymax]);
subplot(2,2,2);
plot(Rest.C2(:,first:last));
title('Resting: Channel 2');
ylim([ymin ymax]);
subplot(2,2,3);
plot(Rest.C3(:,first:last));
title('Resting: Channel 3');
ylim([ymin ymax]);
subplot(2,2,4);
plot(Rest.C4(:,first:last));
title('Resting: Channel 4');
ylim([ymin ymax]);

end

