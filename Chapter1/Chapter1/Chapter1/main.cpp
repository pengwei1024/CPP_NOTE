//
//  main.cpp
//  Chapter1
//
//  Created by zsn on 2018/10/11.
//  Copyright © 2018 apkfuns. All rights reserved.
//

#include <iostream>
#include <cmath>

using namespace std;
using std::cout;

int add(int, int);

int main(int argc, const char *argv[]) {

    int chest = 42; // 十进制
    int waist = 0x42; // 16进制
    int inseam = 042; // 10进制
    cout << "chest=" << chest << ",waist=" << waist << ",inseam=" << inseam << endl;

    cout << "Hello, World!\n";
    int y = add(1, 2);
    cout<< SHRT_MAX << "," << SHRT_MIN << endl;
    double user = sqrt(10) + rand();
    cout << "user=" << user << ", " << y << endl;
    cout << INT_MAX << "," << LONG_LONG_MIN << endl;
    int num;
    cin >> num;
    cout << "num=" << num;
    return 0;

}

int add(int x, int y) {
    return x + y;
}

