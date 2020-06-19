#include <iostream>

int main()
{
    int a = 1;
    for (int i = 1; i <= 3; ++i)
    {
        a *= i;
    }
    std::cout << a << std::endl;
    return 0;
}
