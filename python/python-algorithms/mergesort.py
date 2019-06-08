# Mergesort Algorithm in Python

def mergesort(data):
    if len(data) > 1:
        mid = len(data) // 2
        leftarr = data[:mid]
        rightarr = data[mid:]

        # Recursively break the data set into smaller arrays until they are of size 1
        mergesort(leftarr)
        mergesort(rightarr)

        # Merge the smaller arrays together
        i=0 # Index for leftarr
        j=0 # Index for rightarr
        k=0 # Index for merged array

        while i < len(leftarr) and j < len(rightarr):
            if leftarr[i] < rightarr[j]:
                data[k] = leftarr[i]
                i+=1
            else:
                data[k] = rightarr[j]
                j+=1
            k+=1

        # Add the leftover values
        while i < len(leftarr):
            data[k] = leftarr[i]
            i+=1
            k+=1

        while j < len(rightarr):
            data[k] = rightarr[j]
            j+=1
            k+=1

def main():
    items = [29, 22, 42, 12, 6, 1, 67, 15]
    print("The unsorted array: ", items)
    mergesort(items)
    print("The array after mergesort: ", items)

if __name__ == "__main__":
    main()
