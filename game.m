% Initial game setting
Nplayer = 3;
Ndice = 5;
TNdice = Nplayer * Ndice;

% simulation setting
Round = 30;

% Start to simulate N round game
rng(0,"twister");
simu = randi([1,6],[Round, TNdice]);
counter = zeros(1,6);
dmap = zeros(TNdice+1,6);
for i = 1:Round
    for j = 1:TNdice
        counter(simu(i,j)) = counter(simu(i,j))+1;
    end 
    for k = 1:6
        dmap(counter(k)+1,k) = dmap(counter(k)+1,k) + 1;
    end
    counter = zeros(1,6);
end

bar3(dmap)
        
