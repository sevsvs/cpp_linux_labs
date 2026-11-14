import numpy as np
import matplotlib.pyplot as plt 

NUM_OF_POINTS = 7
np.random.seed(15)

points = np.random.random(size = (2, NUM_OF_POINTS))

plt.plot(points[0], points[1], 'ro')
plt.savefig('lab_07/imgs/first_position.png')

def naive_solver(points):
  """ Ищет глобальный минимум задачи коммивояджера перебором всех вариантов"""
  optimal_length = np.inf

  for point in points[0, :]:
    print(point)

naive_solver(points)