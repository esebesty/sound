import numpy as np
from scipy.io import wavfile
import plotly.graph_objs as go
import plotly

wav = "/Users/esebesty/Dropbox/Documents/audiovideo/00-recordings/edited/soma-ether-chirp/em-chirp-01.wav"

fs_wav, data_wav = wavfile.read(wav)

time_wav = np.arange(0, len(data_wav)) / fs_wav

plotly.offline.iplot({ "data": [go.Scatter(x = time_wav, y = data_wav[:, 0],
                                           name = 'left channel'),
                                go.Scatter(x = time_wav, y = data_wav[:, 1],
                                           name = 'right channel')]})
