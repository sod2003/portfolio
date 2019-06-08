# Binary Search algorithm in Python

def binarysearch(value, list):
    lowerIdx = 0
    upperIdx = len(list) - 1

    while lowerIdx <= upperIdx:
        midPt = (lowerIdx + upperIdx) // 2

        if list[midPt] == value:
            return midPt

        if value > list[midPt]:
            lowerIdx = midPt + 1
        else:
            upperIdx = midPt - 1

    if lowerIdx > upperIdx:
        return None

def main():
    itemlist = [1, 4, 13, 25, 27, 32, 42, 55]
    print(binarysearch(42, itemlist))
    print(binarysearch(4, itemlist))
    print(binarysearch(99, itemlist))

if __name__ == "__main__":
    main()
