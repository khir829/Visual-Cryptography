function [pattern] = ImageToPatterns(image)
% This function converst an image back into a cell array of 2x2 uint8 
% patterns so that we can more easily work with the patterns. It is
% essentially the inverse of the 'PatternsToImage' function.

% Author: Kai Hirafune

% Input:
% image = A 2D array of uint8 values (i.e. a grayscale image) containing an image made up of lots
% of black and white pixels

% Output:
% pattern = A 2D cell array of 2x2 patterns extracted from the image. Each element of the array
% will be a pattern stored as a 2x2 array of uint8 values


% Obtain the size of the image input to create a nested for loop. The size
% of the output cell array should be half the size of the input array.
[rows,cols] = size(image);

% The three lines of comments below (line 21-23) is what I expect my code to do.
% It helps me visualise what needs to be done.
% pattern{1,2} = [image(1,3),image(1,4);image(2,3),image(2,4)]
% pattern{2,2} = [image(3,3),image(3,4);image(4,3),image(4,4)]
% pattern{2,3} = [image(3,5),image(3,6);image(4,5),image(4,6)]
% Using this logic, I implemented it into a nested for loop seen below.

for i = 1:(rows/2)
    for j = 1:(cols/2)
        pattern{i,j} = [image(2*i-1,2*j-1),image(2*i-1,2*j);image(2*i,2*j-1),image(2*i,2*j)];
    end
end


end
