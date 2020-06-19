#include <iostream>

int main()
{
    int a[2][2] = {{1, 2}, {3, 4}};
    int b[2][2] = {{5, 6}, {7, 8}};
    int c[2][2] = {0};
    int op_count = 0;
    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 2; j++)
        {
            for (int k = 0; k < 2; k++)
            {
                c[i][j] += a[i][k] * b[k][j];
                op_count++;
            }
        }
    }
    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 2; ++j)
        {
            std::cout << c[i][j] << " ";
        }
        std::cout << std::endl;
    }
    std::cout << op_count << std::endl;
    return 0;
}
