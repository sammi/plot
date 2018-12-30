import matplotlib.pyplot as plt
import numpy as np

x = [3, 5, 4, 3, 1]
plt.plot(x)
plt.xticks(range(len(x)), ['a', 'b', 'c', 'd', 'e'])
plt.yticks(range(1, 8, 2))
plt.show()
