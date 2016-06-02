%=========================================================================%
% Florida Intsitute of Technology
% College of Engineering
% Electrical and Computer Engineering Department
% ECE 5258   : Digital Image Processing
% Instructor : Dr. Anthony O'neal Smith
% Semester   : Fall 2015
% Doc ref    : jigsawTransform.m
%  (c) Ayokunle Ade-Aina  October 2015
%=========================================================================%

%scrambleIndex   =  reshape(randperm(patchDim^2,patchDim^2),patchDim,patchDim); % For Visualization

function  [output] = jigsawTransform(input,patchDim, scrambleIndex)
[ImageH , ImageW] = size(input);
if ( ImageH == ImageW) % Check if image is square in dimnesions
 

[ImageHindex, status ]= extractImageIndex(input,patchDim);

if status==1   
ImagePatch      =  createPatchIndex(ImageHindex,patchDim);
output          =  patchImage(input,patchDim,ImagePatch,scrambleIndex );
else 
    disp('Invalid Patch size enter a valid patch size')
end

else
disp('Image will be difficult to patch')

    
end





% A = image(1:342,1:342);
% B = image(1:342,343:684);
% C = image(1:342,685:1026);
% D = image(342:684,343:684);
% E = image(342:684,343:684);
% F = image(342:684,685:1026);
% G = image(685:1026,1:342);
% H = image(685:1026,342:684);
% I = image(685:1026,685:1026);



