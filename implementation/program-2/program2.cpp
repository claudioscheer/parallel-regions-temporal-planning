#include <iostream>

int main()
{
    int count = 0;
    for (int i = 0; i < 10; ++i)
    {
        count += 1;
    }
    int x = count;
    std::cout << x << std::endl;
    return 0;
}