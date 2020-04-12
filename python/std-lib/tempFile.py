# Tempfile Module
import tempfile

# Create a temporary file
tempFile = tempfile.TemporaryFile()

# Write to a temporary file
tempFile.write(b"Save this number: 123")
tempFile.seek(0)

# Read a temporary file
print(tempFile.read())

# Close the temproary file
tempFile.close()