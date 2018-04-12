function [] = wavelets()
kickIn = kickInC4(:,1);
kickOut = kickOutC4(:,1);
Dorsiflexion = DorsiflexionC4(:,1);
plantarflexion = PlantarflexionC4(:,1);
rest = Rest4(:,1);

[kickInWave,l] = wavedec(kickIn,3,'db2');
KickInapprox = appcoef(kickInWave,l,'db2');
[KI1,KI2,KI3] = detcoef(kickInWave,l,[1 2 3]);
figure(6);
subplot(5,1,1);
plot(kickIn);
title('Kick In: Original');
subplot(5,1,2)
plot(KickInapprox)
title('Approximation Coefficients')
subplot(5,1,3)
plot(KI3)
title('Level 3 Detail Coefficients')
subplot(5,1,4)
plot(KI2)
title('Level 2 Detail Coefficients')
subplot(5,1,5)
plot(KI1)
title('Level 1 Detail Coefficients')


[kickOutWave,l] = wavedec(kickOut,3,'db2');
KickOutapprox = appcoef(kickOutWave,l,'db2');
[KO1,KO2,KO3] = detcoef(kickOutWave,l,[1 2 3]);
figure(7);
set(gcf,'Position',get(0,'Screensize'));
subplot(5,1,1);
plot(kickOut);
title('Kick Out: Original');
subplot(5,1,2)
plot(KickOutapprox)
title('Approximation Coefficients')
subplot(5,1,3)
plot(KO3)
title('Level 3 Detail Coefficients')
subplot(5,1,4)
plot(KO2)
title('Level 2 Detail Coefficients')
subplot(5,1,5)
plot(KO1)
title('Level 1 Detail Coefficients')

[DorsiflexionWave,l] = wavedec(Dorsiflexion,3,'db2');
Dorsiflexionapprox = appcoef(DorsiflexionWave,l,'db2');
[D1,D2,D3] = detcoef(DorsiflexionWave,l,[1 2 3]);
figure(8);
set(gcf,'Position',get(0,'Screensize'));
subplot(5,1,1);
plot(Dorsiflexion);
title('Dorsiflexion: Original');
subplot(5,1,2)
plot(Dorsiflexionapprox)
title('Approximation Coefficients')
subplot(5,1,3)
plot(D3)
title('Level 3 Detail Coefficients')
subplot(5,1,4)
plot(D2)
title('Level 2 Detail Coefficients')
subplot(5,1,5)
plot(D1)
title('Level 1 Detail Coefficients')

[PlantarflexionWave,l] = wavedec(plantarflexion,3,'db2');
Plantarflexionapprox = appcoef(PlantarflexionWave,l,'db2');
[P1,P2,P3] = detcoef(PlantarflexionWave,l,[1 2 3]);
figure(9);
set(gcf,'Position',get(0,'Screensize'));
subplot(5,1,1);
plot(plantarflexion);
title('Plantarflexion: Original');
subplot(5,1,2)
plot(Plantarflexionapprox)
title('Approximation Coefficients')
subplot(5,1,3)
plot(P3)
title('Level 3 Detail Coefficients')
subplot(5,1,4)
plot(P2)
title('Level 2 Detail Coefficients')
subplot(5,1,5)
plot(P1)
title('Level 1 Detail Coefficients')

[restWave,l] = wavedec(rest,3,'db2');
restapprox = appcoef(restWave,l,'db2');
[r1,r2,r3] = detcoef(restWave,l,[1 2 3]);
figure(10);
subplot(5,1,1);
plot(rest);
title('rest: Original');
subplot(5,1,2)
plot(restapprox)
title('Approximation Coefficients')
subplot(5,1,3)
plot(r3)
title('Level 3 Detail Coefficients')
subplot(5,1,4)
plot(r2)
title('Level 2 Detail Coefficients')
subplot(5,1,5)
plot(r1)
title('Level 1 Detail Coefficients')
end

