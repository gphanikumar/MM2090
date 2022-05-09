# Reading the Image

img = imread("Original.jpg");
imshow(img)

# Initializing Parameters

alpha = 1.5;
beta = 0.2*255;
gamma = 1.2;

kernel_detect = [-1,-1,-1;-1,8,-1;-1,-1,-1];
kernel_contrast = [0,0,0;0,alpha,0;0,0,0];

# Increasing Brightness

bright = min(img+beta,255);
imwrite(bright, "Brightened.jpg");

# Increasing Contrast

contrast = img;
contrast(:,:,1) = conv2(img(:,:,1), kernel_contrast, "same");
contrast(:,:,2) = conv2(img(:,:,2), kernel_contrast, "same");
contrast(:,:,3) = conv2(img(:,:,3), kernel_contrast, "same");
imwrite(contrast, "Contrast.jpg");

# Performing Gamma Correction

correct = min((img/255).^gamma * 255, 255);
imwrite(correct, "Corrected.jpg");

# Inverting

invert = 255-img;
imwrite(invert, "Inverted.jpg");

# Detecting Edges


edge = img;
edge(:,:,1) = conv2(img(:,:,1), kernel_detect, "same");
edge(:,:,2) = conv2(img(:,:,2), kernel_detect, "same");
edge(:,:,3) = conv2(img(:,:,3), kernel_detect, "same");
imwrite(edge, "Detected.jpg");

# Performing the operations in sequence

mod = 255-min( ((alpha*img+beta)/255).^gamma * 255, 255);
edge = mod;
edge(:,:,1) = conv2(mod(:,:,1), kernel_detect, "same");
edge(:,:,2) = conv2(mod(:,:,2), kernel_detect, "same");
edge(:,:,3) = conv2(mod(:,:,3), kernel_detect, "same");

imwrite(edge, "Altered.jpg");


