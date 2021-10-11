#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Oct  3 19:34:25 2021

@author: gong
"""

def Pascal_triangle(k):
    blank = []
    for i in range(k):
        list1 = [1]
        if i != 0:
            for j in range(i - 1):
                list1.append(blank[j]+blank[j+1])
            list1.append(1)
        blank = list1

    print(blank)
Pascal_triangle(100)
Pascal_triangle(200)

                