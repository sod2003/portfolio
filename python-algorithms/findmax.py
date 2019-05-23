# Implementing a recursive function to find a maxium value in a list

def find_max(list):
    if len(list) == 1:
        return list[0]

    first = list[0]
    second = find_max(list[1:])

    if first > second:
        return first
    else:
        return second

def main():
    list = [5, 23, 42, 67, 12, 2, 10, 14, 53, 37]
    print(find_max(list))

if __name__ == "__main__":
    main()
