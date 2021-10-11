#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Oct  3 21:21:52 2021

@author: gong
"""
from random import randint
import numpy as np
M1=np.random.randint(0,51,(5,10))
M2=np.random.randint(0,51,(10,5))
print(M1)
print(M2)


def Matrix_multip(M1,M2):
    result = np.zeros((len(M1),len(M2[0])),int)
    for i in range(len(M1)):
        for j in range(len(M2[0])):
            for k in range(len(M2)):
                result[i][j] += M1[i][k] * M2[k][j]
    print(result)
Matrix_multip(M1,M2)
