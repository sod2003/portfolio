import xml.dom.minidom

def main():
    # Use parse() to load and parse XML file
    doc = xml.dom.minidom.parse("sample.xml")

    # Print document node and the name of the first child tag
    print(doc.nodeName)
    print(doc.firstChild.tagName)

    # Get a list of XML tags and print each one
    skills = doc.getElementsByTagName("skill")
    print("%d skills" % skills.length)
    for skill in skills:
        print(skill.getAttribute("name"))
    print("#----------------------------")

    # Create new XML tag and add into document
    newSkill = doc.createElement("skill")
    newSkill.setAttribute("name", "XML")
    doc.firstChild.appendChild(newSkill)

    skills = doc.getElementsByTagName("skill")
    print("%d skills" % skills.length)
    for skill in skills:
        print(skill.getAttribute("name"))

if __name__ == "__main__":
    main()
