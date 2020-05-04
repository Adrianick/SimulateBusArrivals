function [probabilitateaIntersectiei] = IntersectareIntervalAutobuze(n, semafor1, semafor2)

    plecareAutobuz1 = randi([600 1800],1,n); % Primul autobuz pleaca intre 10 si 30 min (600-1800 secunde)
    plecareAutobuz2 = randi([900 1500],1,n); % Al doilea autobuz pleaca intre 15 si 25 min (900-1500 secunde)

    statieAutobuz1 = randi([120 180],1,n); % Primul autobuz stationeaza intre 2 si 3 min (120-180 secunde)
    statieAutobuz2 = randi([60 240],1,n); % Al doilea autobuz stationeaza intre 1 si 4 min (60-240 secunde)
    
    ecuatieAutobuz1 = plecareAutobuz1 + statieAutobuz1 + semafor1; % semafor1 data de intrare cunoscuta(in secunde)
    ecuatieAutobuz2 = plecareAutobuz2 + statieAutobuz2 + semafor2; % semafor2 data de intrare cunoscuta(in secunde)

    ecuatia = ecuatieAutobuz1 - ecuatieAutobuz2; % fiecare simulare in parte este egalata, 
                                                    % scaderea trebuie sa dea 0 daca sunt egale
    ecuatia = abs(ecuatia);
    
    extraSecunde = randi([60 180],1,n);
    
    probabilitateaIntersectiei = sum(ecuatia <= extraSecunde) / n; % de cate ori traseul1 - traseul2 a rezultat 0 secunde 
                                                       % inseamna ca ambele autobuze au ajuns in exact acelasi timp 
    
end


