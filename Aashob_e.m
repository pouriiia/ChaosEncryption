% Pouria Taghipour
clear
[sound,fs] = audioread('sound/SoundName');
sound(:,1) = sound(:,1) * 0.3;
m = 4;
x = 0.1;
% Enter The sound Sample
for i = 1 : 00000000 
    x = m * x * (1-x);
    sound(i,1) = sound(i,1) + x;
end
figure
plot (sound(:,1))
audiowrite('Output/output.wav',sound(:,1),fs)
