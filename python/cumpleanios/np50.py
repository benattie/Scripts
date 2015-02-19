import numpy as np
from numpy import random
from scipy.stats import itemfreq
from timeit import default_timer as timer


def grupo(gente, size):
    for i in range(0, size):
        gente[i] = random.randint(1, 366)


def coincidencia(gente, ngente):
    exito = 0
    count = itemfreq(gente)
    for r in count[:, 1]:
        if(r > ngente):
            exito = 1
            break
    return exito


def montecarlo(n_grupos, n_iguales):
    # inicio del programa
    pob = 1
    p = 0
    while(p < 0.5):
        n_exitos = 0
        j = 0
        while(j < n_grupos):
            # genero el grupo
            gente = np.zeros((pob, 1))
            grupo(gente, pob)
            # sumo 1 al numero de exitos si hubo al menos un grupo de n personas con el mismo cumpleanios
            match = coincidencia(gente, n_iguales)
            n_exitos += match
            j += 1
        p = float(n_exitos) / n_grupos
        pob += 1
    return pob - 1


# Programa principal
fpout = open("p50vsn.dat", "w")
fpout.write("#num de personas n_p50\n")
montetime = open("montetime.dat", "w")
montetime.write("np50    tiempo de ejecucion\n")
inicio = 1
fin = 2
i = 0
out_data = np.zeros((fin - inicio, 2))
out_data[:, 0] = range(inicio, fin)
for n_same in range(inicio, fin):
    print(n_same)
    start = timer()
    out_data[i, 1] = montecarlo(100000, n_same)
    end = timer()
    montetime.write("%4d %4.4f" % (n_same, end - start))
    i += 1
np.savetxt(fpout, out_data, fmt='%1.4f')
montetime.close()
fpout.close()
print("Done!")
