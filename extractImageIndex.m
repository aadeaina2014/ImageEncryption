
%=========================================================================%
% Florida Insitute of Technology
% College of Engineering
% Electrical and Computer Engineering Department
% ECE 5258   : Digital Image Processing
% Instructor : Dr. Anthony O'neal Smith
% Semester   : Fall 2015
% Doc ref    : extractImageIndex.m
%  (c) Ayokunle Ade-Aina  October 2015
%=========================================================================%

function [ output, status ] = extractImageIndex(input,patchDim)

ImageH =  size(input,1);
   
 if   mod(ImageH,patchDim)==0
    a = ImageH/patchDim;
    
    patchVect =   1:a;
    patchSize =   size(patchVect);
    
    start = 1 ; stop = a;
    
    for i = 1:patchDim
      vindex = start : 1: stop;
      output (i,:)  =  vindex;    
      start = stop + 1;
      stop  = a * (i+1); 
    end
  status = 1; % successful Extraction of Image index
 else
     disp('Invalid Patch size enter a valid patch size')
     
     status = failure; % failed attempt to patch
     output = 0; % initialize output
 end
end