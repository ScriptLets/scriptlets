int fibR(int n)
{
    if (n < 2) return n;
    return (fibR(n-2) + fibR(n-1));
}

int fibI(int n)
{
    int last = 0;
    int cur = 1;
    --n;
    while(n > 0)
    {
        --n;
        int tmp = cur;
        cur = last + cur;
        last = tmp;
    }
    return cur;
}


void main()
{
    const int N = 43;
    PrintString("fib: ");
    PrintInt(fibR(N));
    PrintString(" = ");
    PrintInt(fibI(N));
    PrintString("\n");
}
