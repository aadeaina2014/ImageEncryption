%=========================================================================%
% Florida Insitute of Technology
% College of Engineering
% Electrical and Computer Engineering Department
% ECE 5258   : Digital Image Processing
% Instructor : Dr. Anthony O'neal Smith
% Semester   : Fall 2015
% Doc ref    : randomPhaseShift.m
%  (c) Ayokunle Ade-Aina  October 2015
%=========================================================================%

function[output, mask] = randomPhaseShift(input)
[ImageH, ImageW] =  size(input);

mask = rand(ImageH,ImageW);     % Constitutent of encryption key

mask1 = exp(sqrt(-1) * 2* pi* mask); % random phase mask

output  =  bsxfun(@times,mask1, input); % phase shifted image

end