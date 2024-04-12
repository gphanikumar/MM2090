# Working with images

## Loading data into an array:

One can load an array of data stored in a file directly in octave.
Let's say you have file in the current directory with the name "mydata.dat".
The following command loads the contents of the file into array A.

      A = load('mydata.dat');

One can only load numeric data as arrays into array objects in octave.
The numbers can be integers like "*21*" as well as real numbers like
"*1.023e-21*" for example.

## Loading an image

Images can be loaded as arrays directly. The following lines read an
image called "*test.jpg*" and display the same. Try this out and compare
the size of the array with the output of 
"*file test.jpg*" command. Gray scale images are 1 layer arrays, rgb
images are 3 layer arrays -- one each for red, green and blue channels
and cmyk images are 4 layer arrays -- one each for cyan, magenta, yellow
and black channels. You can take slice of the array or a specific layer,
copy to another array and perform operations on them just like on any
array.

```
      T = imread("test.jpg");
      imshow(T)
```

## Viewing the histogram of the image

The hist command takes a 1D array of numbers to show you the histogram. We can use reshape to convert the 2D array of pixel data into a 1D array. We do it on one of the three layers (red, green and blue channels) of the image.

```
    r = T(:,:,1);
    rflat = resize(r,size(r,1)*size(r,2), 1);
    hist(rflat)
```

## Converting the pixel values to perform numerical operations

We can use cast function to convert numbers across different representations. Pixels are usually in uint8 which limits the values to be unsigned integers between 0 and 255 only. Values lower than 0 will get represented as 0 and values higher than 255 will be capped at 255 itself.

```
rd = cast(r,'double');

```

## Histogram operations

Brightness increase of an image is basically adding a number to the pixel array. You can view the image and see the effect.

```
rdbrighter = rd+50;
imshow(cast(rdbrighter,'uint8'))

```
You can confirm that this addition shifts the histogram of the image towards right and also modifies the distribution of pixel values. Thus, such histogram operations change the image data.

## Kernel operations

Consider a 3x3 array that we call as a kernel with the following values.
```
k=(1.0/9.0)*[1 1 1; 1 1 1; 1 1 1];
```
A kernel operation is defined as a summation of element-by-element product of kernal with the immediate neighborhood of every pixel in the image.
$$ Tnew(i,j) = \sum_{p=1}^{p=3}{\sum_{q=1}^{q=3}{T(i+p-2,j+q-2)*k(p,q)}} $$

We can achieve this in a single line in octave as follows:
```
for i=2:size(r,1)-1
  for j=2:size(r,2)-1
    rnew(i,j)=sum(sum(k.*r(i-1:i+1,j-1:j+1)));
  end
end
```
This kernel would blur the image slightly as you can also confirm from the imshow output.

