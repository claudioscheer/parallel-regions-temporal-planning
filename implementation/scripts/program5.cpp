#include <iostream>
#include <random>

int main()
{
    std::random_device rd;
    std::mt19937 rng(rd());
    std::uniform_int_distribution<int> uni(0, 10);
    int a[3] = {0};
    a[0] = uni(rng);
    for (int i = 1; i < 3; ++i)
    {
        a[i] = a[i - 1] + uni(rng);
    }
    std::cout << a[0] << std::endl;
    std::cout << a[1] << std::endl;
    std::cout << a[2] << std::endl;
    return 0;
}
