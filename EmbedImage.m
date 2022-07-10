function [hidden] = EmbedImage(greyscale,colour)

% This function is used to embed a black and white image inside another
% colour image. If the pixel is black, then we make sure that sum of the
% rgb values is even. If it is not even, we can enforce it by using the
% AlterByOne function. If the pixel is white, then we make sure that sum of the
% rgb values is odd. If it is not odd, we can once again enforce it by using the
% AlterByOne function.

% Author: Kai Hirafune

% Input:
% greyscale = A 2D array of uint8 values of the black and white image
% to embed inside the colour image. (Pixel values are either be 0 or 255)
% colour = A 3D array of uint8 values that the black and white
% image will be embedded into

% Output:
% hidden = A 3D array of uint8 values that contains a hidden black and
% white image

% Obtaining the number of rows and columns of the greyscale image
% to be used in the nested for loop
[rows,cols] = size(greyscale);

for i = 1:rows
    for j = 1:cols
        % The values in 'colour' are uint8, so the maximum value is 255.
        % This is not desired when adding the values of rgb together so I converted
        % 'colour' into the doubles format. This will make sure that we will know
        % whether the summed value is even/odd even if it is over 255.
        a = mod(((double(colour(i,j,1)) + double(colour(i,j,2)) + double(colour(i,j,3)))),2);
        if greyscale(i,j) == 0 && a == 1
            [colour(i,j,1)] = AlterByOne(colour(i,j,1));
        elseif greyscale(i,j) == 255 && mod(a,2) == 0
            [colour(i,j,1)] = AlterByOne(colour(i,j,1));
        end
    end
end
hidden = uint8(colour);

end

