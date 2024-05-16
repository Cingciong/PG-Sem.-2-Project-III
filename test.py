from build.a1 import *
from typing import List
import wave
import struct

def read_wave(filename: str, target_length: int = 1000) -> List[int]:
    with wave.open(filename) as f:
        data = f.readframes(f.getnframes())
        samples = struct.unpack('{n}h'.format(n=f.getnframes()*f.getnchannels()), data)
        samples = list(samples)

    # Calculate the downsampling factor
    factor = len(samples) // target_length

    # Downsample the list
    downsampled_samples = samples[::factor]

    return downsampled_samples

audio = read_wave("test.wav", 1000)
def test_signals():
    frequency = 60  # Set the frequency
    time_period = 500  # Set the time period

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
plot_signal(dft_magnitude(audio))





