# C++ 类知识点
## 创建线程方案
C++11以后可以使用 `std::thread t(proc1);`
引入头文件#include<thread>
- join() 阻塞当前线程直到 std::thread 结束

其他可以用 pthread_create
```c++
void *print1(void *data) {
}
pthread_t t;
pthread_create(&t, 0, print1, NULL);
```

注意 linux 需要主动链接 pthread 库 `-lpthread`

## 临界资源抢占
- mutex

首先需要#include<mutex>；（std::mutex和std::lock_guard都在<mutex>头文件中声明。）
```c++
mutex m;
m.lock();
m.unlock();
```  
程序实例化mutex对象m,本线程调用成员函数m.lock()会发生下面 2 种情况： (1)如果该互斥量当前未上锁，则本线程将该互斥量锁住，直到调用unlock()之前，本线程一直拥有该锁。 (2)如果该互斥量当前被其他线程锁住，则本线程被阻塞,直至该互斥量被其他线程解锁，此时本线程将该互斥量锁住，直到调用unlock()之前，本线程一直拥有该锁。

- lock_guard
```c++
mutex m;
lock_guard<mutex> g1(m);

// 第2个参数为adopt_lock标识时，表示构造函数中不再进行互斥量锁定，因此此时需要提前手动锁定。
m.lock();
lock_guard<mutex> g1(m,adopt_lock);
```  
其原理是：声明一个局部的std::lock_guard对象，在其构造函数中进行加锁，在其析构函数中进行解锁。最终的结果就是：创建即加锁，作用域结束自动解锁。从而使用std::lock_guard()就可以替代lock()与unlock()。

std::lock_guard也可以传入两个参数，第一个参数为adopt_lock标识时，表示构造函数中不再进行互斥量锁定，因此此时需要提前手动锁定。

- unique_lock
第二个参数 
adopt_lock: 不主动加锁
try_to_lock: 尝试获取 lock，获取失败会立即返回
defer_lock: 始化了一个没有加锁的mutex;
```c++
unique_lock<mutex> g1(m, defer_lock);
g1.lock();// 手动加锁，注意，不是m.lock();注意，不是m.lock(),m已经被g1接管了;
g1.unlock();/ /临时解锁

// 尝试加锁
unique_lock<mutex> g2(m,try_to_lock);
if(g2.owns_lock){//锁成功
}
```

- condition_variable

需要#include<condition_variable>，该头文件中包含了条件变量相关的类，其中包括std::condition_variable类
```c++
std::mutex mtx; // 全局互斥锁.
std::condition_variable cv; // 全局条件变量.

std::unique_lock <std::mutex> lck(mtx);
cv.wait(lck);

cv.notify_all();
```

- pthread_mutex
```c++
pthread_mutex_t lock;
pthread_mutexattr_t attr;
pthread_mutexattr_init(&attr);
pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE);
pthread_mutex_init(&lock, &attr);
pthread_mutexattr_destroy(&attr);

pthread_mutex_lock(&lock);
pthread_mutex_trylock(&lock);
pthread_mutex_unlock(&lock);
```



## 参考文档
- [C++11多线程并发基础入门教程](https://zhuanlan.zhihu.com/p/194198073)
- [C++并发编程实战](https://www.bookstack.cn/read/CPP-Concurrency-In-Action-2ed-2019/README.md)