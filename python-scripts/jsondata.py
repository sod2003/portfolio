import urllib.request
import json

def printResults(data):

    # Use the passed JSON data to load a string into a native python object
    theJSON = json.loads(data)

    # Now we can access the object normally in python
    # i.e. Metadata tags are now accessed like dictionary keys
    if "title" in theJSON["metadata"]:
        print(theJSON["metadata"]["title"])

    # Outputting the number of events
    count = theJSON["metadata"]["count"]
    print(str(count) + " events recorded")

    # For each event, print the location in which it occured
    print("All events: ")
    for i in theJSON["features"]:
        print(i["properties"]["place"])
    print("-------------\n")

    # Printing events of magnitude 4+
    print("Events of 4+ magnitude: ")
    for i in theJSON["features"]:
        if i["properties"]["mag"] >= 4.0:
            print("%2.1f" % i["properties"]["mag"], i["properties"]["place"])
    print("-------------\n")

    # Printing out the events that were felt by atleast one person
    print("Events that were felt: ")
    for i in theJSON["features"]:
        feltReports = i["properties"]["felt"]
        if feltReports != None and feltReports > 0:
            print("%2.1f" % i["properties"]["mag"], i["properties"]["place"],
            " reported " + str(feltReports) + " times")


def main():
    # Loading the source URL into a variable
    urlData = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson"
    # This JSON tag is for the USGS feed of all earthquake recordings, of 2.5+ magnitude,
    # from the previous day.

    # Open the URL and read the data
    webUrl = urllib.request.urlopen(urlData)
    print("Code: " + str(webUrl.getcode())) #Check for html response code of 200

    # If html response code is okay(200), then read the JSON data and pass it
    # to the printResults method, else print error message
    if(webUrl.getcode() == 200):
        data = webUrl.read()
        printResults(data)
    else:
        print("Received error code, cannot parse results")


if __name__ == "__main__":
    main()
