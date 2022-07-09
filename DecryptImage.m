function [decrypt] = DecryptImage(cipher,key)
% This function will decrypt a cipher image using the key image

% Author: Kai Hirafune

% Input:
% cipher = A 2D array of uint8 values (i.e. a grayscale image) containing the black and
% white cipher image (each pixel will have a value of 0 or 255)
% key = A 2D array of uint8 values (i.e. a grayscale image) containing the black and
% white key image (each pixel will have a value of 0 or 255)

% Output:
% decrypt = A 2D array of uint8 values (i.e. a grayscale image) containing the decrypted image, this
% will be the same size as the key.

% Obtain the size of the key input to create a nested for loop. The size
% of the output 'decrypt' array should be the same size as the 'key' input array.
[rows,cols] = size(key);
decrypt = zeros(rows,cols);


for i = 1:rows
    for j = 1:cols
        if key(i,j) == cipher(i,j)
            decrypt(i,j) = 255;
        else
            decrypt(i,j) = 0;
        end
    end
end
        
% convert to uint8
decrypt = uint8(decrypt);
end