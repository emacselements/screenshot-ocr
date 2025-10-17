## Support & Donations

If you find this project helpful, consider supporting it!

[Donate via PayPal](https://www.paypal.com/paypalme/revrari)

# Screenshot OCR

A simple bash script that captures a screenshot of a selected screen region and extracts text from it using Optical Character Recognition (OCR).

## Features

- Interactive region selection for screenshots
- Text extraction using Tesseract OCR
- Automatic clipboard copying
- Cross-platform compatibility (Linux/Unix systems)
- Lightweight and fast

## Dependencies

Before using this script, make sure you have the following tools installed:

### Required
- **maim**: Screenshot utility for region selection
- **tesseract**: OCR engine for text recognition

### Optional
- **xclip**: For copying recognized text to clipboard

## Installation

### Ubuntu/Debian
```bash
sudo apt update
sudo apt install maim tesseract-ocr xclip
```

### Arch Linux
```bash
sudo pacman -S maim tesseract xclip
```

### Fedora/RHEL
```bash
sudo dnf install maim tesseract xclip
```

### macOS (using Homebrew)
```bash
brew install tesseract
# Note: maim is Linux-specific, consider using screencapture instead
```

## Usage

1. Make the script executable:
   ```bash
   chmod +x screenshot_ocr.sh
   ```

2. Run the script:
   ```bash
   ./screenshot_ocr.sh
   ```

3. When prompted, click and drag to select the region of your screen containing the text you want to extract.

4. The script will:
   - Take a screenshot of the selected region
   - Process it with Tesseract OCR
   - Display the recognized text in the terminal
   - Copy the text to your clipboard (if xclip is available)

## How It Works

1. **Screenshot Capture**: Uses `maim -s` to allow interactive region selection
2. **OCR Processing**: Processes the screenshot with `tesseract` to extract text
3. **Output Display**: Shows the recognized text in the terminal
4. **Clipboard Integration**: Automatically copies the text to clipboard using `xclip`

## File Locations

Temporary files:
- Screenshot: `/tmp/screenshot.png`
- OCR output: `/tmp/recognized_text.txt`

## Troubleshooting

### Screenshot fails
- Ensure `maim` is installed and accessible
- Check that you have permission to write to `/tmp/`

### OCR produces poor results
- Ensure the selected region has clear, readable text
- Consider adjusting the image quality or size
- Install additional Tesseract language packs if needed:
  ```bash
  sudo apt install tesseract-ocr-[language-code]
  ```

### Text not copied to clipboard
- Install `xclip`: `sudo apt install xclip`
- Ensure you're running in a graphical environment with clipboard support

## Customization

You can modify the script to:
- Change temporary file locations
- Add different OCR languages
- Adjust Tesseract parameters for better accuracy
- Add support for different clipboard managers

## Contributing

Feel free to submit issues, fork the repository, and create pull requests for any improvements.

## License

This project is open source and available under the [MIT License](LICENSE).
