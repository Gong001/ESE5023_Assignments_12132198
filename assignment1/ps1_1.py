def print_values():
    a = float(input('请输入a的值：'))
    b = float(input('请输入b的值：'))
    c = float(input('请输入c的值：'))
    if a > b:
        if b > c:
            print(a,b,c)
        else:
            if a > c:
                print(a,c,b)
            else:
                print(c,a,b)
    else:
        if b > c:
            if a > c:
                print(b,a,c)
            else:
                print(b,c,a)
        else:
            print(c,b,a)

print_values()
    
    


