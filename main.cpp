#include <matplot/matplot.h>
#include <vector>
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include <cmath>

namespace py = pybind11;
using namespace matplot;

std::vector<double> gen_signal(std::string type, double frequency, double time_period) {
    std::vector<double> t = matplot::linspace(0, time_period, 1000);
    std::vector<double> signal(t.size());

    if (type == "sin") {
        for (size_t i = 0; i < t.size(); ++i) {
            signal[i] = std::sin(2 * matplot::pi * frequency * t[i]);
        }
    } else if (type == "cos") {
        for (size_t i = 0; i < t.size(); ++i) {
            signal[i] = std::cos(2 * matplot::pi * frequency * t[i]);
        }
    } else if (type == "square") {
        for (size_t i = 0; i < t.size(); ++i) {
            signal[i] = std::sin(2 * matplot::pi * frequency * t[i]) > 0 ? 1 : -1;
        }
    } else if (type == "sawtooth") {
        for (size_t i = 0; i < t.size(); ++i) {
            signal[i] = 2 * (t[i] - std::floor(0.5 + t[i] * frequency));
        }
    }

    return signal;
}

PYBIND11_MODULE(a1, m) {
    m.def("gen_signal", &gen_signal, py::arg("type"), py::arg("frequency"), py::arg("time_period"), "A function which generates a signal wave");
}