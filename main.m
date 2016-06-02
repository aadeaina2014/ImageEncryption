%=========================================================================%
% Florida Insitute of Technology
% College of Engineering
% Electrical and Computer Engineering Department
% ECE 5258   : Digital Image Processing
% Semester   : Fall 2015
% Doc ref    : Fractional_main.m (main Application Driver File)
%  (c)  October 2015,   Ayokunle Ade-Aina , Tajudeen Olasupo.
%   aadeaina2014@my.fit.edu, tolasupo2011@my.fit.edu
%=========================================================================%
clc; clear; close all;
%
imgFile = 'Fig0431(d)(blown_ic_crop).tif';
image = imread  (imgFile);
image =  im2double(image);

% Meaningful Patch size 3,6,9 % Patch increases the sceuirty of the
% encrypted picture

patchDim = 6;

[image_ps, mask] = randomPhaseShift(image);            % Step 1

[ ImageIndex, status ] = extractImageIndex(image_ps,patchDim);
patchIndex             = createPatchIndex(ImageIndex,patchDim);

%0.5 < a < 1.5
key.power               = [0.6,0.75,0.8;0.8,0.75,0.6];
% Generate encryption key

for i = 1 : 3
key.ScrambleIndex(i, :)  = randperm(patchDim^2,patchDim^2);
end

[encryptedImage ] = encryptImage(image_ps,patchDim,key);
[decryptedImage]  = decryptImage(encryptedImage,key,patchDim);


decryptedImage = abs(decryptedImage);
figure;
imshow(image,[],'InitialMagnification','fit')
title('Original Image');
figure;
imshow( abs(encryptedImage),[],'InitialMagnification','fit')
title('Encrypted Image');
figure;
imshow(decryptedImage,[],'InitialMagnification','fit')
title('Decrypted  Image');








