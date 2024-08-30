#include "line.h"
#include "point.h"

/* Constructor */
Line::Line() {
  p1 = Point();
  p2 = Point();
}
Line::Line(const Point &p1, const Point &p2) {
  this->p1 = p1;
  this->p2 = p2;
}
Line::Line(const Line &l) {
  p1 = l.getP1();
  p2 = l.getP2();
}

/* Destructor */
Line::~Line() {}

/* Getters */
Point Line::getP1() const { return p1; }
Point Line::getP2() const { return p2; }
std::ostream &operator<<(std::ostream &os, const Line &l) {
  os << std::fixed << std::setprecision(4) << l.getP1() << " -- " << l.getP2();
  return os;
}

/* Setters */
void Line::setP1(const Point &p1) { this->p1 = p1; }
void Line::setP2(const Point &p2) { this->p2 = p2; }
void Line::setPoints(const Point &p1, const Point &p2) {
  this->p1 = p1;
  this->p2 = p2;
}
std::istream &operator>>(std::istream &is, Line &l) {
  Point p1, p2;
  is >> p1 >> p2;
  l.setPoints(p1, p2);
  return is;
}

/* Functions */
double Line::length() const {
  // TODO: Return the length of the line
  double x1 = p1.getX();
  double y1 = p1.getY();
  double x2 = p2.getX();
  double y2 = p2.getY();

  double length = std::sqrt(std::pow(x2 - x1, 2) + std::pow(y2 - y1, 2));
  return length;
}

double Line::slope() const {
  // TODO: Return the slope of the line
  double x1 = p1.getX();
  double y1 = p1.getY();
  double x2 = p2.getX();
  double y2 = p2.getY();

  if (x2 - x1 == 0) {
    // Handle the case when the line is vertical
    return 0;
  } else {
    return (y2 - y1) / (x2 - x1);
  }
}
