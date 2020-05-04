# Importare librarii
import numpy as np
import math as math

# Definire variabile initiale
total = 0 
howMany = 15000

# Simulare n variabile normale 4,7
for i in range(0, howMany):

    U = np.random.uniform(0, 1)
    Y = np.random.exponential(1)
    
    # U - 4(limita inferioara ) / diferenta dintre (4+radical din 7 - 4)
    while math.exp(-(Y*Y/2)+Y - 0.5) < U: 
      U = np.random.uniform(0, 1)
      Y = np.random.exponential(1)
      
    #print(math.exp(-(Y*Y/2) + Y - 0.5), ' < ', U)
    
    RD = np.random.uniform(0, 1)
    RD = RD * math.sqrt(7)
    
    U = np.random.uniform(0, 1)
    s = -1
    if U <= 0.5:
      s = 1
    
    X1 = Y * (RD) * s + 4
   
    total += X1

normaleDinPython = np.random.normal(4, math.sqrt(7), howMany) # lognormala curs 4

mediaNormalelor = sum(normaleDinPython)/howMany

print('Media unor variabile normale din python : ',mediaNormalelor)
print('Media variabilelor normale din algoritmul meu: ',total/howMany)
print('Media N(4,7) este 4')
