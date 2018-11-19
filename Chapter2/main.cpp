#include <iostream>
#include <string>

// 结构体
struct Man {
    char name[20];
    int age;
};
// 共用体
union one4all {
    int int_val;
    long long_val;
    double double_val;
};
// 枚举
enum spectrum {red, orange, yellow, green};

int main() {
    std::cout << "Hello, World!" << std::endl;
    std::string str = "panther";
    std::cout << str << std::endl;
    using namespace std;
    string str2 = {"12324234"};
    std::cout << str2 << "size=" << str2.size() << std::endl;
    Man man = {"kitty", 20};
    cout << man.name << man.age << endl;
    Man woman{};
    cout << woman.name << woman.age << endl;
    one4all pail;
    pail.int_val = 10;
    cout << pail.int_val << "," << pail.double_val << "," << pail.long_val << endl;
    spectrum color = yellow;
    return 0;
}