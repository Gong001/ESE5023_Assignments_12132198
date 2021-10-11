#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Oct  2 16:57:04 2021

@author: gong
"""

def least_moves(x):
    count = 0
    while x > 1:
        if x%2 == 0:
            x = x/2
        else:
            x = x - 1
        count = count + 1
    print(count)

least_moves(10) 
