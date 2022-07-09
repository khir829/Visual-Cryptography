function [patterns] = CreatePatterns()
% This function creates a 1D cell array containing six special
% 2x2 patterns of uint8 values, these patterns will be used for key generation

% Author: Kai Hirafune

% Input: 
% No input

% Output:
% patterns = 2x2 patterns of uint8 values which will be used for key generation

% Creating the 3 image sthat will not be the same even when inverted
% pfirst is pattern 1
pfirst = [255,255;0,0];
% psecond is pattern 3
psecond = [0,255;0,255];
% pthird is pattern 5
pthird = [0,255;255,0];

% Inverting the images above will give the complement image. Calling the function
% 'ImageComplement' will do this for us
% P1 = pattern1, P2 = pattern 2, P3 = pattern 3 ...

P1 = uint8(pfirst);
P2 = ImageComplement(P1);
P3 = uint8(psecond);
P4 = ImageComplement(P3);
P5 = uint8(pthird);
P6 = ImageComplement(P5);

% Assign patterns to cell array in output
patterns{1} = P1;
patterns{2} = P2;
patterns{3} = P3;
patterns{4} = P4;
patterns{5} = P5;
patterns{6} = P6;
end
