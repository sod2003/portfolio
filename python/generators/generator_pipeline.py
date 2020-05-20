# Generator Pipline
names = ['Sean', 'Jason', 'Sam', 'Jordan', 'Ali']

def longest_name(name_list):
    lengths = ((name, len(name)) for name in names)
    longest = max(lengths, key=lambda x:x[1])
    return longest

def main():
    print(longest_name(names))

if __name__ == '__main__': main()