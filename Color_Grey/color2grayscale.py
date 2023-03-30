#!/usr/bin/env python3

# Color to grayscale MATLAB script
# Digital Electronic Systems Design
# Politecnico di Milano
# LAB 2 exercise

from PIL import Image
from serial import Serial

SERIAL_PORT = "/dev/ttyUSB1"
SERUAL_BAUDRATE = 115200
INPUT_IMAGE = "input.png"
OUTPUT_IMAGE = "output.png"
CHUNK_SIZE = 4096

print(f"Loading image from '{INPUT_IMAGE}'...")

# Read the input image from the file
# The returned value is a list of tuples, where the elements of the tuples
# represent Red (0), Green (1) and Blue (2). Extract also the width and height
# of the image.
with Image.open(INPUT_IMAGE) as im:
    width, height = im.size
    pixels_rgb = list(im.getdata())

# Initialize the output pixel bytes
pixels_grayscale = b""


print("Converting image...")

# Open the serial port
with Serial(SERIAL_PORT, SERUAL_BAUDRATE) as uart:
    for i in range(0, width * height, CHUNK_SIZE):

        # Sending each byte one-by-one is not efficient. The best way is to
        # send data in chunks and exploit the OS and FPGA buffers.
        # To do so, iterate over the list by extracting chunks with size
        # CHUNK_SIZE or less (the last one).
        chunk = pixels_rgb[i:i+CHUNK_SIZE]
        num_pixels = len(chunk)

        # Each chunk is a list of triplets: "flatten" them:
        # [(R0, G0, B0), (R1, G1, B1), (R2, G2, B2), ...]
        #  to
        # [R0, G0, B0, R1, G1, B1, R2, G2, B2, ...]
        pixels = [coordinate for pixel in chunk for coordinate in pixel]

        # Write the "chunk"...
        uart.write(pixels)
        # ... and get the grayscale representation. Note that we send
        # CHUNK_SIZE * 3 Bytes but we receive only CHUNK_SIZE Bytes.
        pixels_grayscale += uart.read(num_pixels)

        # Print the progress
        progress = int(min((i + CHUNK_SIZE) / (width * height) * 100, 100))
        print(f"{progress}%...")

# Now we have all the pixels: store the image to disk. The arguments are:
#  * 'L' = the format, where "L" means "8-bit grayscale image"
#  * (width, height) = size of the image
#  * pixels_grayscale = pixels
im = Image.frombytes("L", (width, height), pixels_grayscale)
im.save(OUTPUT_IMAGE)

print(f"Done! Grayscale image has been saved as '{OUTPUT_IMAGE}'")
