import numpy as np
from scipy.io import wavfile
import plotly.graph_objs as go
import plotly

wav = "/Users/esebesty/Dropbox/Documents/audiovideo/00-recordings/edited/soma-ether-chirp/em-chirp-01.wav"

fs_wav, data_wav = wavfile.read(wav)

data_wav_norm = data_wav / 44100

time_wav = np.arange(0, len(data_wav)) / fs_wav

plotly.offline.iplot({ "data": [go.Scatter(x = time_wav, y = data_wav_norm[:, 0],
                                           name = 'left channel'),
                                go.Scatter(x = time_wav, y = data_wav_norm[:, 1],
                                           name = 'right channel')]})
