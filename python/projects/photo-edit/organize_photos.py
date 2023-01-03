import os

def list_filenames():
    os.chdir('Photos')
    return os.listdir()

def extract_filename(file):
    return file.split('_')[1]

def make_place_directories(places):
    for place in places:
        os.mkdir(place)

def main():
    list = list_filenames()
    places = []
    for filename in list:
        place = extract_filename(filename)
        if place not in places:
            places.append(place)
    print(places)
    make_place_directories(places)
    print(os.listdir())

if __name__ == "__main__":
    main()
