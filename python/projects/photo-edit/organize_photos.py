import os


def list_filenames(directory):
    os.chdir(directory)
    return os.listdir()


def extract_filename(file):
    return file.split('_')[1]


def make_place_directories(places):
    for place in places:
        os.mkdir(place)


def organize_photos(directory):
    list = list_filenames(directory)
    places = []
    for filename in list:
        place = extract_filename(filename)
        if place not in places:
            places.append(place)
    make_place_directories(places)
    for file in list:
        place = extract_filename(file)
        os.rename(file, os.path.join(place, file))


if __name__ == "__main__":
    organize_photos('Photos')
