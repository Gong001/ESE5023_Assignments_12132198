#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Oct  2 17:26:42 2021

@author: gong
"""

from itertools import product
 
def expr(p):
    return "{}1{}2{}3{}4{}5{}6{}7{}8{}9".format(*p)

def gen_expr():
    op = ['+', '-', '']
    return [expr(p) for p in product(op, repeat=9) if p[0] != '+']

def all_exprs():
    values = {}
    for expr in gen_expr():
        val = eval(expr)
        if val not in values:
            values[val] = 1
        else:
            values[val] += 1

    return values
 
 
def Find_expression(val):
    counts = 0
    for s in filter(lambda x: x[0] == val, map(lambda x: (eval(x), x), gen_expr())):
        print(s)
        
Find_expression(50)

Total = []
for expr in gen_expr():
    val = eval(expr)
    if val in range(1,101):
        Total += [val] 

Total_solutions = []
for i in range(1,101):
    Total_solutions = Total_solutions + [Total.count(i)]

positionmax = Total_solutions.index(max(Total_solutions))+1
positionmin = Total_solutions.index(min(Total_solutions))+1
print('在0-100中数字中：数字',positionmax,'产生的解决方案最多，一共有：',max(Total_solutions),'种')
print('在0-100中数字中：数字',positionmin,'产生的解决方案最少，一共有：',min(Total_solutions),'种')



    


        
