import matplotlib.pyplot as plt
import pandas as pd
from math import pi

df = pd.DataFrame({
    'group': ['A','B','C','D'],
    'f1': [38, 1.5, 30, 4],
    'f2': [29, 10, 9, 34],
    'f3': [8, 39, 23, 24],
    'f4': [7, 31, 33, 14],
    'f5': [28, 15, 32, 14]
})

categories=list(df)[1:]
N = len(categories)
 
values=df.loc[0].drop('group').values.flatten().tolist()
values += values[:1]
values
 
angles = [n / float(N) * 2 * pi for n in range(N)]
angles += angles[:1]
 
ax = plt.subplot(111, polar=True)
 
plt.xticks(angles[:-1], categories, color='grey', size=8)
 
ax.set_rlabel_position(0)
plt.yticks([10,20,30], ["10","20","30"], color="grey", size=7)
plt.ylim(0,40)
 
ax.plot(angles, values, linewidth=1, linestyle='solid')
 
ax.fill(angles, values, 'b', alpha=0.1)

plt.show()