# Importare librarii
import numpy as np

# Definire variabile initiale
A = int(input("Enter A : "))
B = int(input("Enter B : "))
n = int(input("Enter n : "))

N = A + B
p = A / N
total = 0

howMany = 15000
for i in range(0, howMany):
    
    
    X = 0
    i = 0  
    A2 = A
    N2 = N
    #X2 = X
    # Algoritm generare varibila hipergeometrica
    while i < n:
        U = np.random.uniform(0, 1)
    
        S = 0
        if U < p:
            X = X + 1
            S = 1
    
        N2 = N2 - 1
        A2 = A2 - S
        p = A2 / N2
    
        i = i + 1 # n pasi

    total += X
    
#print(A, ' ', B, ' ', n)
hipergeometriceDinPython = np.random.hypergeometric(A, B, n, howMany)
mediaHipergeometricelor = sum(hipergeometriceDinPython)/howMany

# Compararea rezultatelor
print('Media unor variabile hipergeometrice din python : ',mediaHipergeometricelor)
print('Media variabilelor hipergeometrice din algoritmul meu: ',total/howMany) 
    
    
#print(X)

########## Pentru compararea dintre media n*K/N (), cea din python
########## si cea simulata de mine alegem aceleasi date de intrare


