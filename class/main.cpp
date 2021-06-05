#include <cstdio>

class Shape {
public:
    virtual double calcArea() = 0;

    virtual ~Shape() {
        printf("~Shape\n");
    }
};

class Circle : public Shape {
    double calcArea() override {
        printf("Circle calcArea\n");
        return 1;
    }

public:
    virtual ~Circle() {
        printf("~Circle\n");
    }
};


int main() {
    Shape *shape = new Circle();
    shape->calcArea();
    delete shape;
    return 0;
}