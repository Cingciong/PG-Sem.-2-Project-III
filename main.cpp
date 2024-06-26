#include <matplot/matplot.h>
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include <pybind11/complex.h>
#include <vector>
#include <complex>
#include <cmath>
//i suppsoe we are 5 group
//so dft signal generation visualization, and  Progowanie sygnału (1 dla > progu, 0 dla mniejszego)
//https://en.wikipedia.org/wiki/Thresholding_(image_processing)
const double PI = 3.14159265358979323846;
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
std::vector<int> threshold_signal(const std::vector<double>& signal, double threshold) {
    std::vector<int> output(signal.size());
    for (size_t i = 0; i < signal.size(); ++i) {
        if (signal[i] > threshold) {
            output[i] = 1;
        } else {
            output[i] = 0;
        }
    }

    return output;
}
std::vector<double> reverse_dft(const std::vector<std::complex<double>> input) {
    //X(n) = (1/N) * Σ (from k=0 to N-1) X(k) * e^(j2pikn/N)
    int N = input.size();
    std::vector<double> output(N);

    for (int n = 0; n < N; n++) {
        for (int k = 0; k < N; k++) {
            double theta = 2 * PI * k * n / N;
            std::complex<double> exp_part(std::cos(theta), std::sin(theta));
            output[n] = output[n]+std::real(input[k] * exp_part);
        }
        output[n] = output[n] / N;
    }

    return output;
}
std::vector<std::complex<double>> dft(const std::vector<double> input) {
    //X(k) = Σ (from n=0 to N-1) x(n) * e^(-j2pikn/N) it is dft cofficent
    int N = input.size();
    std::vector<std::complex<double>> output(N);

    for (int k = 0; k < N; k++) {
        for (int n = 0; n < N; n++) {
            double theta = -2 * PI * k * n / N;
            //resolving the complex number into rael
            std::complex<double> exp_part(std::cos(theta), std::sin(theta));
            output[k] = output[k] + input[n] * exp_part;
        }
    }

    return output;
}
std::vector<double> dft_magnitude(const std::vector<double> input) {
    int N = input.size();
    std::vector<std::complex<double>> output_complex(N);
    std::vector<double> output_magnitude(N);

    for (int k = 0; k < N; k++) {
        for (int n = 0; n < N; n++) {
            double theta = -2 * PI * k * n / N;
            std::complex<double> exp_part(std::cos(theta), std::sin(theta));
            output_complex[k] = output_complex[k] + input[n] * exp_part;
        }
        output_magnitude[k] = std::abs(output_complex[k]);
    }

    return output_magnitude;
}
void plot_signal(const std::vector<double> signal) {
    using namespace matplot;

    // Generate x values
    std::vector<double> x_values(signal.size());
    for (size_t i = 0; i < x_values.size(); ++i) {
        x_values[i] = i;
    }

    // Create a new figure
    auto f = figure();

    // Plot the signal
    plot(x_values, signal);

    // Display the plot
    f->show();
}

PYBIND11_MODULE(a1, m) {
    m.def("dft", &dft, py::arg("input"), "A function which calculates the Discrete Fourier Transform");
    m.def("reverse_dft", &reverse_dft, py::arg("input"), "A function which calculates the Inverse Discrete Fourier Transform");
    m.def("gen_signal", &gen_signal, py::arg("type"), py::arg("frequency"), py::arg("time_period"), "A function which generates a signal wave");
    m.def("threshold_signal", &threshold_signal, py::arg("signal"), py::arg("threshold"), "A function which thresholds a signal");
    m.def("plot_signal", &plot_signal, py::arg("signal"), "A function which plots a signal");
    m.def("dft_magnitude", &dft_magnitude, py::arg("input"), "A function which calculates the magnitude of the Discrete Fourier Transform");
}