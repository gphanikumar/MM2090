#!/bin/bash

# Create a temporary Python script
TMP_PYTHON_SCRIPT=$(mktemp)
cat <<EOF >"$TMP_PYTHON_SCRIPT"
import cv2
import numpy as np
import matplotlib.pyplot as plt

# Load images
original_image_path = 'Lena.png'
noisy_image_path = 'Noisy_Lena.png'

original_image = cv2.imread(original_image_path, cv2.IMREAD_GRAYSCALE)
noisy_image = cv2.imread(noisy_image_path, cv2.IMREAD_GRAYSCALE)

if original_image is None:
    raise ValueError(f"Could not open or find the image '{original_image_path}'.")

if noisy_image is None:
    raise ValueError(f"Could not open or find the image '{noisy_image_path}'.")

# Define kernels
box_blur_kernel = np.ones((5, 5), np.float32) / 25
edge_detection_kernel = np.array([[-1, -1, -1], [-1, 8, -1], [-1, -1, -1]])

# Apply box blur
blurred_image = cv2.filter2D(original_image, -1, box_blur_kernel)

# Apply edge detection
edge_image = cv2.filter2D(original_image, -1, edge_detection_kernel)

# Save the results
cv2.imwrite('box_blurred_image.png', blurred_image)
cv2.imwrite('edge_detected_image.png', edge_image)

# Gaussian blur kernel
gaussian_kernel = np.array([[1, 4, 6, 4, 1],
                            [4, 16, 24, 16, 4],
                            [6, 24, 36, 24, 6],
                            [4, 16, 24, 16, 4],
                            [1, 4, 6, 4, 1]], np.float32) / 256

# Apply Gaussian blur to noisy image
gaussian_blurred_image = cv2.filter2D(noisy_image, -1, gaussian_kernel)

# Save Gaussian blur result
cv2.imwrite('gaussian_blurred_image.png', gaussian_blurred_image)

# Fourier transform for frequency filtering
dft = np.fft.fft2(noisy_image)
dft_shifted = np.fft.fftshift(dft)

# Create a low-pass filter
M, N = noisy_image.shape
X, Y = np.meshgrid(np.arange(N), np.arange(M))
centerX, centerY = N // 2, M // 2
radius = 60
low_pass_filter = np.sqrt((X - centerX)**2 + (Y - centerY)**2) <= radius

# Apply the low-pass filter
dft_filtered = dft_shifted * low_pass_filter
dft_inverse_shifted = np.fft.ifftshift(dft_filtered)
filtered_image = np.fft.ifft2(dft_inverse_shifted)
filtered_image = np.abs(filtered_image)

# Save frequency filtered image
cv2.imwrite('frequency_filtered_image.png', filtered_image.astype(np.uint8))
EOF

# Run the temporary Python script
python3 "$TMP_PYTHON_SCRIPT"

# Remove the temporary Python script
rm "$TMP_PYTHON_SCRIPT"
