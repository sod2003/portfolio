# Bubble sort algorithm

def bubblesort(data):
    print("Current state: ", data)
    for i in range(len(data)-1, 0, -1):
        for j in range(i):
            if data[j] > data[j+1]:
                data[j], data[j+1] = data[j+1], data[j]


def main():
    data = [15, 34, 2, 12, 45, 14, 90, 42]
    bubblesort(data)
    print("Result: ", data)

if __name__ == "__main__":
    main()
