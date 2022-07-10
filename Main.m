clear all
close all
clc

% Replace tinyHello.png with your own image. (Image must be in the same
% file)
[bwimage, keyimage,cipherimage] = ImageEncrypterOutput('tinyHello.png');


% Uncomment following code to get output images in the file
% imwrite(bwImage,'myBlackAndWhiteImage.png')
% imwrite(keyimage,'myKeyImage.png')
% imwrite(cipherimage,'myCipherImage.png')

% Uncomment following code to decrypt your own files (assumption: you have your
% own key and cipher images, (replace name if necessary))
% key = imread('myKeyImage.png');
% cipher = imread('myCipherImage.png');
% decrypted = DecryptImage(cipher,key);
% imshow(decrypted);

