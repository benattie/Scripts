import numpy as np
from time import time
from numpy import random
from scipy.stats import itemfreq
from numba import autojit


@autojit
def grupo(gente, size):
    for i in range(0, size):
        gente[i] = random.randint(1, 366)


@autojit
def coincidencia(gente, ngente):
    exito = 0
    count = itemfreq(gente)
    for r in count[:, 1]:
        if(r >= ngente):
            exito = 1
            break
    return exito


@autojit
def montecarlo(filep, n_grupos, n_iguales):
    # inicio del programa
    start = time()
    gr_inicial = 80
    gr_final = 100
    prob_exito = np.zeros((gr_final - gr_inicial + 1, 2))
    for i in range(gr_inicial, gr_final):
        text = "%2.2f %%" % (float(i - gr_inicial) / (gr_final - gr_inicial) * 100.00)
        print(text)
        n_exitos = 0
        j = 0
        while(j < n_grupos):
            # genero el grupo
            gente = np.zeros((i, 1))
            grupo(gente, i)
            # sumo 1 al numero de exitos si hubo al menos un grupo de n personas con el mismo cumpleanios
            match = coincidencia(gente, n_iguales)
            n_exitos += match
            j += 1
        prob_exito[i - gr_inicial][0] = i
        prob_exito[i - gr_inicial][1] = float(n_exitos) / n_grupos
    monte = time()
    name = "resultados_%d_grupos.dat" % n_grupos
    fp = open(name, "w")
    fp.write("#n_gente  p_exito\n")
    np.savetxt(fp, prob_exito, fmt='%1.4f')
    fp.close()
    text = "%6d %6.4f\n" % (n_grupos, monte - start)
    filep.write(text)

# Programa principal
n_same = 2
montetime = open("timevsngrupo.dat", "w")
montetime.write("#tiempo n_personas\n")
montecarlo(montetime, 100000, n_same)
montetime.close()
print("Done!")
