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

alteredvalues = uint8(values);

% Initially I thought that the input was going to be a 2d array but on
% reading the task again I realised that was not the case. The code below
% actually works even when I designed it for a 2d array but I will not use
% it. I am saving this piece of code just in case I may use it later on.

% [rows,cols] = size(values);
% for i = 1:rows
%     for j = 1:cols
%         if values(i,j) ~= 255
%             values(i,j) = values(i,j) + 1;
%         elseif values(i,j) == 255
%             values(i,j) = values(i,j) - 1;
%         end
%         
%     end
% end
% 
% alteredvalues(i,j) = values(i,j);

end
