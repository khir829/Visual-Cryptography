function [key] = GenerateKey(array,patterns)
% This function creates a 2d cell array 'key' where each array element is a 2x2 uint8
% pattern selected at random. The patterns are passed in using a 1D cell array and then
% randomly assigned to the 2D cell array based on values in a 2D array of random values

% Author: Kai Hirafune

% Input:
% array = A 2D array of random integer values between 1 and 6 inclusive
% patterns = A 1x6 1D cell array containing 6 patterns. See function 
% 'CreatePatterns' for more information. 

% Output:
% key = A 2D cell array the same size as the intial input array 
% containing patterns to act as a key

% Obtaining the number of rows and columns to be used in the nested for
% loop
[rows,cols] = size(array);

% Assign the appropriate pattern to the appropriate element
% e.g 1 = pattern 1, 2 = pattern 2, 3 = pattern 3 ...
for i = 1:rows
    for j = 1:cols
        if array(i,j) == 1
            key{i,j} = patterns{1};
        elseif array(i,j) == 2
            key{i,j} = patterns{2};
        elseif array(i,j) == 3
            key{i,j} = patterns{3};
        elseif array(i,j) == 4
            key{i,j} = patterns{4};
        elseif array(i,j) == 5
            key{i,j} = patterns{5};
        elseif array(i,j) == 6
            key{i,j} = patterns{6};
        end
    end
end

end

