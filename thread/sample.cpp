#include <thread>
#include "iostream"

using namespace std;

int a = 0;

void foo() {
    std::thread::id tid = std::this_thread::get_id();
    cout << "foo thread id=" << tid << endl;
    for (int i = 0; i < 100; ++i) {
        a++;
        cout << "foo() i:" << i << endl;
    }
}

void bar(int start) {
    std::thread::id tid = std::this_thread::get_id();
    cout << "bar thread id=" << tid << endl;
    for (int i = start; i < 200; ++i) {
        a++;
        cout << "bar() i:" << i << endl;
    }
}

int main() {
    std::thread::id tid = std::this_thread::get_id();
    cout << "thread id=" << tid << endl;
    thread a(foo);
    thread b(bar, 100);
    a.join();
    b.join();
    return 0;
}