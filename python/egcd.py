"""
egcd(1769,551) = (5,-16,29)
>>> egcd(1769,551)
(5, -16, 29)
"""

def egcd(m,n):
    (a1,b1,a,b,c,d) = (1,0,0,1,m,n)
    q = c / d
    r = c % d
    while r != 0:
        (a1,b1,a,b,c,d) = (a,b,a1-q*a,b1-q*b,d,r)
        q = c / d
        r = c % d
    return (a,b,d)

if __name__ == "__main__":
    import doctest
    doctest.testmod()
