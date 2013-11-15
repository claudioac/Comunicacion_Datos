#!/usr/bin/env python
# -*- coding: utf-8 -*-

# -*- coding: utf-8 -*-
"""bit de paridad"""



def paridadFlag(trama):
    bit = sum(trama)
    return int(not bit%2)

#ejemplo
print "ejemplos : \n"
trama = [0,1]

print "el bit de paridad para ", trama, " es ",paridadFlag(trama=trama)


trama = [0,1,1]
print "el bit de paridad para ", trama, " es ",paridadFlag(trama=trama)




