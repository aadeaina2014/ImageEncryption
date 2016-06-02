%=========================================================================%
% Florida Institute of Technology
% College of Engineering
% Electrical and Computer Engineering Department
% ECE 5258   : Digital Image Processing
% Instructor : Dr. Anthony O'neal Smith
% Semester   : Fall 2015
% Doc ref    : patchImage.m
%  (c) Ayokunle Ade-Aina  October 2015
%=========================================================================%


%This function will be very useful for createing patches of an image for fractional
% fourier transform;

%input : input image image
% patchDim        : Dimension of unit patch imatch image [3x3, 6x6,9x9]
% scrambleIndex   : matrix containing How image should be scrabled  usually
%                   of  size [patchDim x patchDim].
% output          : output Image    

function [output] =  patchImage(input,patchDim,ImagePatch,index )




idx = 1;
for i = 1: patchDim^2
  
        output(ImagePatch(i).row,ImagePatch(i).col)  =  ...
          input(ImagePatch(index(i)).row,ImagePatch(index(i)).col); % Current patch
        
        
   
end
     
    
end