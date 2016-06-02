%=========================================================================%
% Florida Insitute of Technology
% College of Engineering
% Electrical and Computer Engineering Department
% ECE 5258   : Digital Image Processing
% Instructor : Dr. Anthony O'neal Smith
% Semester   : Fall 2015
% Doc ref    : reverseMapping.m ( script for reversing jigsaw transform)
%  (c) Ayokunle Ade-Aina  November 1, 2015
%      aadeaina2014@my.fit.edu
%=========================================================================%

% Input :
%  A : Reverse Scramble Matrix
%  B : Current Scramble Matrix

% Output
%  C : Jig saw transform to reverse mapping of patches from matrix B into
%  matix  A
function[ C, status ]= reverseMapping(A, B, patchDim)

if size(A)==size(B)
N = size(A(:),1);

A = A';
A = A(:);

B = B';
B = B(:);
 
 [~, x1, x2]= intersect(A, B);
 
for i = 1: N
  
    C(i) = x2(i);
end


status = 1; % Successful task cimpletion
else
  C = 0;
  status = 0;
    disp('ReverseMapping is impossible')
end
