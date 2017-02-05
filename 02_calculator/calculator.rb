def add(a,b)
    return a+b
end

def subtract(a,b)
    return a - b
end

def sum(arr)
    arr.reduce(:+)||0
end

def multiply(a,*b)
    a * b.reduce(:*)
end

def power(a,b)
    a**b
end

def factorial(n)
    return 1 if n == 0
    n*factorial(n-1)
end