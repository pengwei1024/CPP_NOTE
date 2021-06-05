#include <iostream>
#include <thread>

pthread_mutex_t lock;

void *print1(void *data) {
    pthread_mutex_lock(&lock);
    for (int i = 0; i < 100; ++i) {
        std::cout << "call print1" << std::endl;
    }
    pthread_mutex_unlock(&lock);
}

void *print2(void *data) {
    pthread_mutex_lock(&lock);
    for (int i = 0; i < 100; ++i) {
        std::cout << "call print2" << std::endl;
    }
    pthread_mutex_unlock(&lock);
}

int main() {

    pthread_mutexattr_t attr;
    pthread_mutexattr_init(&attr);
    pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE);
    pthread_mutex_init(&lock, &attr);
    pthread_mutexattr_destroy(&attr);

    pthread_t t, t1;
    pthread_create(&t, 0, print1, NULL);
    pthread_create(&t1, 0, print2, NULL);
    pthread_join(t, NULL);
    pthread_join(t1, NULL);

    pthread_mutex_destroy(&lock);
    return 0;
}