import __init__

import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
from collections import OrderedDict


index = pd.date_range('1/1/2017', periods=200, freq='D')

t = np.arange(200) / 5

trend = np.log(t+4)*4-4
saison = np.sin(t)
zufall = np.random.rand(len(t)) * 2
zufall = zufall - (max(zufall) - min(zufall)) / 2

data = OrderedDict({
        "Zeitreihe": trend + saison + zufall,
        "Trendkomponente": trend,
        "Saisonalitätskomponente": saison,
        "Zufallskomponente": zufall
    })

z = pd.DataFrame(index=index, data=data)

z.plot(ylim=(-3, 15), style=['-', '--', '--', '--'])
plt.savefig("bilder/02-hauptteil/zeitreihe-komponenten.pdf", format="pdf", bbox_inches='tight')
