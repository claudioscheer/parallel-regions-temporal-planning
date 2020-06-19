#include <iostream>
#include <vector>

int main()
{
    int s = 0;
    std::vector<int> x = {1, 2, 3};
    for (int i = 0; i < x.size(); i++)
    {
        s += x[i];
    }
    std::cout << s << std::endl;
    return 0;
}