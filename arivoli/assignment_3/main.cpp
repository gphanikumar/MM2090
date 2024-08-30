#include "geometry/line.h"
#include "geometry/point.h"
#include "geometry/triangle.h"
#include <cmath>
#include <iostream>
#include <stdlib.h>
#include <vector>

std::vector<Triangle> readMesh(const std::string &filename) {
  std::vector<Triangle> mesh;
  std::ifstream file(filename);
  if (file.is_open()) {
    int n;
    file >> n;
    for (int i = 0; i < n; i++) {
      Triangle t;
      file >> t;
      mesh.push_back(t);
    }
    file.close();
  }
  return mesh;
}

int main(int argc, char *argv[]) {

  if (argc != 2) {
    std::cerr << "Usage: " << argv[0] << " <filename>" << std::endl;
    return 1;
  }
  std::string filename = argv[1];

  std::vector<Triangle> mesh = readMesh(filename);
  double totalArea = 0;
  /* Do Not Modify Above This Line */
  // TODO: Calculate the total area of the readMesh
  for (const Triangle &triangle : mesh) {
    totalArea += triangle.area();
  }

  /* Do Not Modify Below This Line */
  // Scale: 800 m = 1.7094 units
  std::cout << std::fixed << std::setprecision(4)
            << totalArea * (800 / 1.7094) * (800 / 1.7094) << std::endl;
}
