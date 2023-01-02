import os

def list_filenames():
    os.chdir('Photos')
    return os.listdir()

def extract_filename(file):
    first = file.find('_')
    partial = file[first+1:]
    second = partial.find('_')
    return partial[:second]

def main():
    list = list_filenames()
    for filename in list:
        print(extract_filename(filename))

if __name__ == "__main__":
    main()
