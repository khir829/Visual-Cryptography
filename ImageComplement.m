function [swap] = ImageComplement(original)
% This function takes an image and swaps black for white and white for
% black.

% Author: Kai Hirafune

% Input:
% Original = A 2D array of uint8 values containing black and white pixels

% Output:
% swap = A 2D array of uint8 values  of the complement of the input
% image (i.e. black has been swapped for white and white for black)

% (The code below is a modified version of my intial code for 'AlterByOne'
% as can be seen in the comments of that function code)


% Obtaining the number of rows and columns to be used in the nested for
% loop
[rows,cols] = size(original);
for i = 1:rows
    for j = 1:cols
        % Swap the pixels
        swap(i,j) = 255-original(i,j);
    end
end


end

