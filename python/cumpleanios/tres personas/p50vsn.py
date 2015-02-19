import numpy as np
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
    poblacion = 2
    p = 0
    while(p < 0.5):
        n_exitos = 0
        j = 0
        while(j < n_grupos):
            # genero el grupo
            gente = np.zeros((poblacion, 1))
            grupo(gente, poblacion)
            # sumo 1 al numero de exitos si hubo al menos un grupo de n personas con el mismo cumpleanios
            match = coincidencia(gente, n_iguales)
            n_exitos += match
            j += 1
        p = float(n_exitos) / n_grupos
        poblacion += n_iguales
    filep.write("%4d %4d %4.4f\n" % (n_iguales, poblacion - n_iguales, p))


@autojit
def main():
    montetime = open("p50_n.dat", "w")
    montetime.write("#n_personas n_p50\n")
    for n_same in range(2, 3):
        print("Buscando coincidencias para %d personas" % n_same)
        montecarlo(montetime, 100000, n_same)
    montetime.close()
    print("Done!")

# Programa principal
main()
