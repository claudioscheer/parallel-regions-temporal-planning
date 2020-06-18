#include <iostream>
#include <vector>

int main()
{
    int sum = 0;
    std::vector<int> x = {1, 2, 3};
    for (int i = 0; i < x.size(); i++)
    {
        sum += x[i];
    }
    std::cout << sum << std::endl;

    return 0;
}