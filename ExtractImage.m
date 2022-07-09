function [extract] = ExtractImage(colour)
% This function Purpose extracts a black and white image that has been
% embedded within a colour image. It is essentially the inverse of the
% 'EmbedImage' function.

% Author: Kai Hirafune

% Input:
% = A 3D array of uint8 values (i.e. an RGB colour image) that contains a hidden black and
% white image

% Output:
% = A 2D array of uint8 values of the black and white image that
% was hidden inside the colour image (each pixel will have a value of 0 or 255)

% Obtain the size of the colour image input to create a nested for loop. The size
% of the output array should be the same size as the input array. However,
% this only applies to its number of rows and columns. The output is a 2d
% array and as such it does not have layers.

[rows,cols,layers] = size(colour);
extract = zeros(rows,cols);

for i = 1:rows
    for j = 1:cols
        % The values in 'colour' are uint8, so the maximum value is 255.
        % This is not desired when adding the values of rgb together so I converted
        % 'colour' into the doubles format. This will make sure that we will know
        % whether the summed value is even/odd even if it is over 255.
        a = mod(((double(colour(i,j,1)) + double(colour(i,j,2)) + double(colour(i,j,3)))),2);
        if a == 0
            extract(i,j) = 0;
        elseif a == 1
            extract(i,j) = 255;
        end
    end
end
% convert to uint8
extract = uint8(extract);

end