#ifndef LINE_H
#define LINE_H

#include <iostream>
#include <iomanip>
#include <fstream>
#include <cmath>
#include "point.h"

class Line {
    public:
        /* Constructor */
        Line();
        Line(const Point &p1, const Point &p2);
        Line(const Line &l);

        /* Destructor */
        ~Line();

        /* Getters */
        Point getP1() const;
        Point getP2() const;
        friend std::ostream &operator<<(std::ostream &os, const Line &l);

        /* Setters */
        void setP1(const Point &p1);
        void setP2(const Point &p2);
        void setPoints(const Point &p1, const Point &p2);
        friend std::istream &operator>>(std::istream &is, Line &l);

        /* Functions */
        double length() const;
        double slope() const;

    private:
        Point p1, p2;
};

#endif // LINE_H