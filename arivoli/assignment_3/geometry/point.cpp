#include "point.h"

/* Constructor */
Point::Point() {
  x = 0;
  y = 0;
}
Point::Point(double x, double y) {
  this->x = x;
  this->y = y;
}
Point::Point(const Point &p) {
  x = p.getX();
  y = p.getY();
}

/* Destructor */
Point::~Point() {}

/* Getters */
double Point::getX() const { return x; }
double Point::getY() const { return y; }
std::ostream &operator<<(std::ostream &os, const Point &p) {
  os << std::fixed << std::setprecision(4) << "(" << p.getX() << ", "
     << p.getY() << ")";
  return os;
}

/* Setters */
void Point::setX(double x) { this->x = x; }
void Point::setY(double y) { this->y = y; }
void Point::setXY(double x, double y) {
  this->x = x;
  this->y = y;
}
std::istream &operator>>(std::istream &is, Point &p) {
  double x, y;
  is >> x >> y;
  p.setXY(x, y);
  return is;
}

/* Functions */
// TODO: Return the distance between this point and the given point
double Point::distance(const Point &p) const {
  double dx = p.getX() - x;
  double dy = p.getY() - y;
  return std::sqrt(dx * dx + dy * dy);
}
// TODO: Return the distance between this point and the given coordinates
double Point::distance(double x, double y) const {
  double dx = x - this->x;
  double dy = y - this->y;
  return std::sqrt(dx * dx + dy * dy);
}
