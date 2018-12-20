import urllib.request

def main():

    # Target a website (One of my GitHub pages)
    webUrl = urllib.request.urlopen("https://sod2003.github.io/projectmgt/")

    # Get a http result code. 200 if okay, 404 if not found, etc.
    print("Result code: " + str(webUrl.getcode()))

    # Read and print the targeted web data(HTML)
    data = webUrl.read()
    print(data)

if __name__ == "__main__":
    main()
