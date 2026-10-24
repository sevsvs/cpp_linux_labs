import time
import sys

def iterated_function(x):
    return x*x - x*x + 4*x - 5*x + x + x

def main():
    x = 0.13
    while True:
        # Ввод
        try:
            n = int(input("Number of iterations: "))
        except ValueError:
            print("Invalid value")
            sys.exit(1)
        # Замер
        start = time.perf_counter()
        accum = 0.0
        for _ in range(n):
            accum += iterated_function(x)
        end = time.perf_counter()
        print(f"Time for {n} iterations: {end - start:.9f} sec")
        
        # Повтор
        if input("Repeat? (y/n): ").lower() != 'y':
            break

if __name__ == "__main__":
    main()
