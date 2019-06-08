# Quicksort implementation in Python

def quicksort(data, first, last):
    if first < last:
        pivotIdx = partition(data, first, last)

        quicksort(data, first, pivotIdx-1)
        quicksort(data, pivotIdx+1, last)

def partition(data, first, last):
    pivotvalue = data[first]
    lowerIdx = first+1
    upperIdx = last

    # Start searching for split point
    done = False
    while not done:
        while lowerIdx <= upperIdx and data[lowerIdx] <= pivotvalue:
            lowerIdx += 1
        while upperIdx >= lowerIdx and data[upperIdx] >= pivotvalue:
            upperIdx -= 1
        if upperIdx < lowerIdx:
            done = True
        else:
            data[lowerIdx], data[upperIdx] = data[upperIdx], data[lowerIdx]

    # After finding the split point, exchange the pivot value
    data[first], data[upperIdx] = data[upperIdx], data[first]

    # Return the split point after exchanging pivot value
    return upperIdx

def main():
    items = [29, 22, 42, 12, 6, 1, 67, 15]
    print("The unsorted array: ", items)
    quicksort(items, 0, len(items)-1)
    print("The array after quicksort: ", items)

if __name__ == "__main__":
    main()
