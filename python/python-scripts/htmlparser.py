from html.parser import HTMLParser

class MyHTMLParser(HTMLParser):
    # Override inherited methods for desired functionality
    def handle_comment(self, data):
        print("Comment Found: ", data)
        position = self.getpos()
        print("\tAt line: ", position[0], " position", position[1])

    def handle_starttag(self, tag, attrs):
        print("Tag Found: ", tag)
        position = self.getpos()
        print("\tAt line: ", position[0], " position", position[1])

        if attrs.__len__() > 0:
            print("\tAttributes: ")
            for attr in attrs:
                print("\t", attr[0], "=", attr[1]) # Print individual attribute names and values

    def handle_endtag(self, tag):
        print("Tag Found: ", tag)
        position = self.getpos()
        print("\tAt line: ", position[0], " position", position[1])

    def handle_data(self, data):
        if data.isspace():
            return
        print("Data Found: ", data)
        position = self.getpos()
        print("\tAt line: ", position[0], " position", position[1])

def main():

    # Parsing through the html data with my own subclass
    parser = MyHTMLParser()
    file = open("sample.html")
    if file.mode == "r":
        contents = file.read()
    parser.feed(contents) # Must feed String data to parser

if __name__ == "__main__":
    main()
