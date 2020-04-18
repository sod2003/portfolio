# Text Wrap Module
import textwrap

websiteText = """    This is an example of text that can be pulled off a website.
I'm going to write a second line of text, and then follow that up with a
third line of text. Now we're done."""

print("No Dedent:")
print(textwrap.fill(websiteText))

print("\nDedent:")
dedent_text = textwrap.dedent(websiteText).strip()
print(dedent_text)

print("\nFill:")
print(textwrap.fill(dedent_text, width=50))
#print(textwrap.fill(dedent_text, width=100))

print("\nControlling Indent:")
print(textwrap.fill(dedent_text, initial_indent=" ", subsequent_indent="   "))

print("\nShortening Text:")
short = textwrap.shorten(websiteText, width=25, placeholder="...")
print(short)