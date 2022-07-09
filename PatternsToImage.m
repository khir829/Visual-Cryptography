function [imagePattern] = PatternsToImage(key)
% This function takes a cell array of 2x2 uint8 patterns and converts it
% to a grayscale image (a 2D uint8 array, NOT a cell array) 
% so that it can be displayed and saved

% Input:
% key = A 2D cell array of 2x2 patterns. Each element of the array will be a pattern
% stored as a 2x2 array of uint8 values

% Output:
% imagePattern = A 2D array of uint8 values with the pixels assembled into a
% single image. This array will have twice the number of rows and twice the number of
% columns as the input array


% Obtain the the number of rows and columns of the input array, the 'key',
% to create a nested for loop. As stated in the header comments, the output
% should be twice the size of the input.
[rows,cols] = size(key);

imagePattern = zeros(2*rows,2*cols);

% I think of the output array as 2x2 'blocks' that are stacked on top of and
% next to each other. These 'blocks' are the elements of the input (key) cell
% array. 
% e.g (key{1,1}) is equal to imagePattern([1,2],[1,2])
% key{1,1}(1,1) = imagePattern(1,1)
% key{1,1}(1,2) = imagePattern(1,2)
% key{1,1}(2,1) = imagePattern(2,1)
% key{1,1}(2,2) = imagePattern(2,2)

% Another exmaple:
%(key{1,2} = imagePattern([1,2],[3,4])
% key{1,2}(1,1) = imagePattern(1,3)
% key{1,2}(1,2) = imagePattern(1,4)
% key{1,2}(2,1) = imagePattern(2,3)
% key{1,2}(2,2) = imagePattern(2,4)

% Using this logic, I created the nested for loop below.

for i = 1:rows
    for j = 1:cols
        imagePattern((2*i-1),(2*j-1)) = key{i,j}(1,1);
        imagePattern((2*i-1),(2*j)) = key{i,j}(1,2);
        imagePattern((2*i),(2*j-1)) = key{i,j}(2,1);
        imagePattern((2*i),(2*j)) = key{i,j}(2,2);

    end
end

% Convert to uint8
imagePattern = uint8(imagePattern);
end