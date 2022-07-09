 function [cipher] = EncryptImage(image,key)
% This function will encrypt a plain image using a key array of patterns 
% (a cell array containing 2x2 patterns), to obtain an encrypted cipher 
% array of patterns (a cell array containing 2x2 patterns)

% Author: Kai Hirafune

% Input:
% image = A 2D array of uint8 values (i.e. a grayscale image) containing the black and
% white plain image to encrypt.
% key = A 2D cell array of 2x2 patterns to act as a key array of patterns. Each element
% of the cell array will be a pattern stored as a 2x2 array of uint8 values

% Output:
% cipher = A 2D cell array of 2x2 patterns which is our cipher array of patterns (i.e. it was created
% by encrypting our plain image). Each element of the array will be a pattern stored as a
% 2x2 array of uint8 values

% Obtain the size of the image input to create a nested for loop. The size
% of the output cell array should be the same size as the 'key' input array.
[rows,cols] = size(key);

% Dark pixels are defined as pixels with a value less than 128 
% and light pixels to be those that are 128 or more. 

% If the pixel in the image is dark: 
% Assign to the output array of patterns the complement of the pattern from 
% the corresponding position in the key array of patterns
% If the pixel is light:
% Assign to the cipher array of patterns the original pattern from the 
% corresponding position in the key array of patterns


for i = 1:rows
    for j = 1:cols
        if image(i,j) < 128
            [cipher{i,j}] = ImageComplement(key{i,j});
        elseif image(i,j) >= 128
            cipher{i,j} = key{i,j};
        end
    end
end

end