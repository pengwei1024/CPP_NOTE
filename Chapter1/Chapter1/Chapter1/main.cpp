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
    cout << "Hello, World!\n";
    int y = add(1, 2);
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

