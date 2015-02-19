fp = open("teorico.dat", "w")
fp.write("# n_personas  probabilidad")
for i in range(1, 80):
    prod = 1
    for j in range(2, i):
        prod *= float(366 - j) / 365
    dato = "%4d %4.4f\n" % (i, 1 - prod)
    fp.write(dato)
fp.close()
