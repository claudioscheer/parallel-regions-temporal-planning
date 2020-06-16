#include <iostream>

int main()
{
    int const_value = 1;
    int a = 0;
    for (int i = 0; i < 3; ++i)
    {
        a += const_value;
    }
    std::cout << a << std::endl;
    return 0;
}