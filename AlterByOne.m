function [alteredvalues] = AlterByOne(values)
% This function adds 1 to an uint8 value in the range 0 to 255 
% inclusive unless the value is 255 in which case it subtracts 1 (so 244)

% Author: Kai Hirafune

% input:
% values = An integer value somewhere between 0 and 255 inclusive

% Output:
% alteredvalues = A uint8 value that is one more than the input values 
% (unless the original value was 255, in which case it is one less)

% Check if the value is or is not 255 and add one/subtract one accordingly
if values ~= 255
    values = values + 1;
elseif values == 255
    values = values - 1;
end

% convert to an uint8 value
alteredvalues = uint8(values);

end