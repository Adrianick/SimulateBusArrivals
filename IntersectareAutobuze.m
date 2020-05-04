function [Probabilitatea] = IntersectareAutobuze(n)

    PlecareAutobuz1 = randi([600 1800],1,n); % Primul autobuz pleaca intre 10 si 30 min (600-1800 secunde)
    PlecareAutobuz2 = randi([900 1500],1,n); % Al doilea autobuz pleaca intre 15 si 25 min (900-1500 secunde)

    StatieAutobuz1 = randi([120 180],1,n);
    StatieAutobuz2 = randi([60 240],1,n);
    
    

end

