# HTTP Package
# https://www.googleapis.com/books/v1/volumes?q=isbn:1101904224 
# # The above link can be put into a browser to look at the JSON object and information we will print out with Python
import urllib.request, json, textwrap

with urllib.request.urlopen("https://www.googleapis.com/books/v1/volumes?q=isbn:1101904224") as f:
    text = f.read()
    decodedText = text.decode('utf-8')
    print(textwrap.fill(decodedText, width=50))

obj = json.loads(decodedText)
print('\nThe "kind" attribute has the value:', obj['kind'])
print('\nThe attributes can be chained to find and print information deep within the JSON structure:', obj['items'][0]['searchInfo']['textSnippet'])