%=========================================================================%
% Florida Institute of Technology
% College of Engineering
% Electrical and Computer Engineering Department
% ECE 5258   : Digital Image Processing
% Instructor : Dr. Anthony O'neal Smith
% Semester   : Fall 2015
% Doc ref    : encryptImage.m
%  (c) Ayokunle Ade-Aina  October 2015
%=========================================================================%

% function to encrypt a gray scale image
% input    :image matrix
% patchDim : dimension of patches to be created
function [output] = encryptImage(input,patchDim,key)

numOfAngles = size(key.power);
output = input;
for i =  1: numOfAngles
    output  = jigsawTransform(output,patchDim,key.ScrambleIndex(i, :)); % Step 2
    output          = frft2d(output, key.power(:,i) );   
end

end