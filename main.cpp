#include <iostream>
#include <pybind11/pybind11.h>
#include <matplot/matplot.h>
#include <vector>
#include <pybind11/stl.h>  // Include this
#include <cmath>



namespace py = pybind11;
using namespace matplot;

int add(int a, int b) {
    return a + b;
}

std::vector<double> generate_sin_wave(double frequency) {
    // Define the time range
    std::vector<double> t = matplot::linspace(0, 2 * matplot::pi, 1000);

    // Generate the sine wave
    std::vector<double> sin_wave(t.size());
    for (size_t i = 0; i < t.size(); ++i) {
        sin_wave[i] = std::sin(2 * matplot::pi * frequency * t[i]);
    }
    // Plot the sine wave
    matplot::plot(t, sin_wave);
    matplot::show();

    return py::cast(sin_wave);
}

int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}

PYBIND11_MODULE(a1, m) {
    m.def("add", &add, "A function which adds two numbers");
    m.def("generate_sin_wave", &generate_sin_wave, "A function which generates a sine wave");
}