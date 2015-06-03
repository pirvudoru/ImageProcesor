**Image Preprocess**

----------------------------------------------------------

**Problem**

In order to test out digit recognition solutions for MNIST,
the input image must be a grayscaled image of size 16x16, and 0 (black) 
for the insignificant pixels (white space).


**How to use**

````
imshow(imread('7.png'));
figure;
imshow(detectNumber('7.png'));
````
