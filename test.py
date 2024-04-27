from build.a1 import *

frequency = 1  # Set the frequency
time_period = 1  # Set the time period


def test_signals():
    frequency = 1  # Set the frequency
    time_period = 1  # Set the time period

    sin_wave = gen_signal("sin", frequency, time_period)
    cos_wave = gen_signal("cos", frequency, time_period)
    square_wave = gen_signal("square", frequency, time_period)
    sawtooth_wave = gen_signal("sawtooth", frequency, time_period)

    return sin_wave, cos_wave, square_wave, sawtooth_wave

print("TESTING")
print("-------------------------------------")
sin_wave,cos_wave, square_wave, sawtooth_wave =test_signals()
print("Sin wave: ", sin_wave)
print("Cos wave: ",cos_wave)
print("Square wave: ", square_wave)
print("Sawtooth wave: ", sawtooth_wave)
print("-------------------------------------")
print("dft: ")
print(dft(sin_wave))
print("reverse dft: ")
print(reverse_dft(dft(sin_wave)))
print("-------------------------------------")
print(threshold_signal(sin_wave, 0.5))






