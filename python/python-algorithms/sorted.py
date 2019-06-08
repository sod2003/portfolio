# Python implementation of a method to check if a list is sorted.

def issorted(list):
    # for i in range(0, len(list) - 1):
    #     if list[i] > list[i + 1]:
    #         print("This list isn't sorted")
    #         return False
    return all(list[i] <= list[i+1] for i in range(len(list)-1)) # This is the Pythonic way of doing this implementation.
    # print("This list is sorted.")
    # return True

def main():
    list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    list2 = [9, 4, 45, 22, 16, 5, 3, 1]
    print(issorted(list1))
    print(issorted(list2))

if __name__ == "__main__":
    main()
