#ifndef TRIANGLE_H
#define TRIANGLE_H

#include <iostream>
#include <iomanip>
#include <fstream>
#include <cmath>
#include "point.h"
#include "line.h"

class Triangle {
    public:
        /* Constructor */
        Triangle();
        Triangle(const Point &p1, const Point &p2, const Point &p3);
        Triangle(const Triangle &t);

        /* Destructor */
        ~Triangle();

        /* Getters */
        Point getP1() const;
        Point getP2() const;
        Point getP3() const;
        friend std::ostream &operator<<(std::ostream &os, const Triangle &t);

        /* Setters */
        void setP1(const Point &p1);
        void setP2(const Point &p2);
        void setP3(const Point &p3);
        void setPoints(const Point &p1, const Point &p2, const Point &p3);
        friend std::istream &operator>>(std::istream &is, Triangle &t);

        /* Functions */
        double perimeter() const;
        double area() const;

    private:
        Point p1, p2, p3;
};

#endif // TRIANGLE_H
