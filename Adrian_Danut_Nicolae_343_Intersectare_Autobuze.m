semafor1 = 20;
semafor2 = 25;

n1 = 1000;
probabilitateExacta1K = IntersectareExactaAutobuze(n1, semafor1, semafor2);
probabilitateInterval1K = IntersectareIntervalAutobuze(n1, semafor1, semafor2);

n2 = 10000;
probabilitateExacta10K = IntersectareExactaAutobuze(n2, semafor1, semafor2);
probabilitateInterval10K = IntersectareIntervalAutobuze(n2, semafor1, semafor2);

n3 = 100000;
probabilitateExacta100K = IntersectareExactaAutobuze(n3, semafor1, semafor2);
probabilitateInterval100K = IntersectareIntervalAutobuze(n3, semafor1, semafor2);

n4 = 1000000;
probabilitateExacta1M = IntersectareExactaAutobuze(n4, semafor1, semafor2);
probabilitateInterval1M = IntersectareIntervalAutobuze(n4, semafor1, semafor2);