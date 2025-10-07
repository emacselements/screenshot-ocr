#!/bin/sh
# Author: Raoul Comninos
# Define filenames
screenshot="/tmp/screenshot.png"
text_output="/tmp/recognized_text"

# Take a screenshot with region selection
echo "Taking screenshot. Please select a region..."
maim -s "$screenshot"

# Check if the screenshot was taken successfully
if [ ! -f "$screenshot" ]; then
    echo "Screenshot failed or file not created: $screenshot"
    exit 1
fi

# Perform OCR
echo "Performing OCR..."
tesseract "$screenshot" "$text_output"

# Check if Tesseract successfully created the output file
if [ ! -f "${text_output}.txt" ]; then
    echo "OCR failed or output file not created: ${text_output}.txt"
    exit 1
fi

# Display the recognized text
echo "Displaying recognized text:"
cat "${text_output}.txt"

# Copy text to clipboard (requires xclip)
if command -v xclip >/dev/null 2>&1; then
    echo "Copying text to clipboard..."
    cat "${text_output}.txt" | xclip -selection clipboard
else
    echo "xclip not found. Please install xclip."
fi

echo "Script finished."
