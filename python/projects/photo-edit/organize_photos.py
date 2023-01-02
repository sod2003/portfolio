import os

def list_filenames():
    os.chdir('Photos')
    return os.listdir()

def extract_filename(file):
    return file.split('_')[1]

def main():
    list = list_filenames()
    for filename in list:
        print(extract_filename(filename))

if __name__ == "__main__":
    main()
