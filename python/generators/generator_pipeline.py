# Generator Pipeline
names = ['Sean', 'Jason', 'Sam', 'Jordan', 'Ali']

def longest_name(name_list):
    lengths = ((name, len(name)) for name in name_list)
    longest = max(lengths, key=lambda x:x[1])          # The key argument is targeting the second set of values within the lengths variable 
    return longest

def main():
    print(longest_name(names))

if __name__ == '__main__': main()