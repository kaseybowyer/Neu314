cd("/Users/kaseybowyer/Documents/Courses/Fall2019/Neu314/Neu314")

using Plots
using PyPlot
using JLD

string = "el-capitan.png"
image = imread("el-capitan.png")
imshow(image)

size(image)

"""
extract_RBG -- takes in a filename that is a string and is an image.
extract_RBG loads this image, shows this image, and then extracts the
red, blue, and green values of the #rows x #columns matrix and stores
the values in three matrices of the same size. The function then returns
those matrices.

Args:
   filename (string): name of the file that will be loaded, shown and the
                      RBG values extracted from.

Returns:
   red (Float64 matrix): the red values of the image
   blue (Float64 matrix): the blue values of the image
   green (Float64 matrix): the green values of the image
"""

function extract_RBG(filename)
    # loading image file
    image = imread(filename)

    # displaying image
    imshow(image)

    # extracting the color values from the image and putting in respective arrays
    red = zeros(Float64, size(image,1), size(image,2))
    green = zeros(Float64, size(image,1), size(image,2))
    blue = zeros(Float64, size(image,1), size(image,2))

    println("BUG BUG BUG")
    
    for i = 1:size(image,1)
        for j = 1:size(image,2)
            global red[i,j] = image[i,j,1]
            global green[i,j] = image[i,j,2]
            global blue[i,j] = image[i,j,3]
        end
    end

    return red, green, blue
end
