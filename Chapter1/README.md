## 开始学习c++

```
#include <iostream>

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;

}
```

利用g++编译

```
g++ Hello.cpp  // 生成 a.out
./a.out // linux下直接执行 a.out
```

### 进制表示
- int chest = 42; // 十进制
- int waist = 0x42; // 16进制
- int inseam = 042; // 10进制

快速计算进制: 0xABC = 16\*16\*10 + 16\* 11 + 12
