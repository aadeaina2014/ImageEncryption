%=========================================================================%
% Florida Institute of Technology
% College of Engineering
% Electrical and Computer Engineering Department
% ECE 5258   : Digital Image Processing
% Instructor : Dr. Anthony O'neal Smith
% Semester   : Fall 2015
% Doc ref    : createPatchIndex.m
%  (c) Ayokunle Ade-Aina  October 2015
%=========================================================================%

function  output  = createPatchIndex(input,patchDim)

idx= 1;

for  i = 1 : patchDim
    a =   input (i,:);
    for  j = 1: patchDim
        
        
        output(idx).row   =  a; % save row index of image patch
        output(idx).col   =  input (j,:); % save col index of image patch
        idx = idx+1; % loop counter for patch indexing
    end
end

 

end