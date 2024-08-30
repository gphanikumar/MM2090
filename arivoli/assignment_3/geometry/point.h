#ifndef POINT_H
#define POINT_H

#include <iostream>
#include <iomanip>
#include <fstream>
#include <cmath>

class Point {
    public:
        /* Constructor */
        Point();
        Point(double x, double y);
        Point(const Point &p);

        /* Destructor */
        ~Point();

        /* Getters */
        double getX() const;
        double getY() const;
        friend std::ostream &operator<<(std::ostream &os, const Point &p);

        /* Setters */
        void setX(double x);
        void setY(double y); 
        void setXY(double x, double y);
        friend std::istream &operator>>(std::istream &is, Point &p);

        /* Functions */
        double distance(const Point &p) const;
        double distance(double x, double y) const;

    private:
        mutable double x, y;
};




#endif // POINT_H