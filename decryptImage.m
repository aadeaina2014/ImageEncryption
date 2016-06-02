%=========================================================================%
% Florida Institute of Technology
% College of Engineering
% Electrical and Computer Engineering Department
% ECE 5258   : Digital Image Processing
% Instructor : Dr. Anthony O'neal Smith
% Semester   : Fall 2015
% Doc ref    : decryptImage.m
%  (c) Ayokunle Ade-Aina  October 2015
%=========================================================================%

function [output] =  decryptImage(input,key,patchDim)

output = input ;
numOfAngles = size(key.power,1);
rIdx =  numOfAngles +1;

for i =  1: numOfAngles
    
           rIdx             = rIdx - 1;
          output            = frft2d(output ,-key.power(:,rIdx ) );
    
          if rIdx > 1
    
           B                = key.ScrambleIndex(rIdx,:) ;
           idx              = rIdx-1;
           A                = key.ScrambleIndex(idx,: ) ;
           [ newJig,~ ]     = reverseMapping(A, B, patchDim);
           [output ]        = jigsawTransform(output,patchDim,newJig); % Step 2
          else
            C                        = 1: patchDim^2;
           [ newJig, ~]     = reverseMapping(C, A, patchDim);
           [output ]        = jigsawTransform(output,patchDim,newJig); % Step 2
          end  
end
end