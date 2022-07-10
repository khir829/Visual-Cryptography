function [decrypt, keyimage,cipherimage] = ImageEncrypterOutput(image)
% This function will get a binary black and white image from the input
% image as well as a key image and the cipher image. These images will be
% displayed.

% Author: Kai Hirafune

% Input:
% image = an ordinary image

% Output:
% decrypt = the binary black and white image of the input image
% keyimage = the key image output
% cipherimage = the cipher image output 

img = imread(image);
[rows,cols,layers] = size(img);
array = round(5.*rand(rows,cols)+1);
[patterns] = CreatePatterns();
[key] = GenerateKey(array,patterns);
[cipher] = EncryptImage(img,key);

[keyimage] = PatternsToImage(key);
[cipherimage] = PatternsToImage(cipher);
[decrypt] = DecryptImage(cipherimage,keyimage);

figure('Name','Key Image')
imshow(keyimage)

figure('Name','Cipher Image')
imshow(cipherimage)


figure('Name','Black and White Image')
imshow(decrypt)
end

