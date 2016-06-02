function [out] = frft2d(matrix,angles)
%
% computes 2-D FRFT of given matrix with given angles
%
% IN : matrix: matrix to be transformed
%      angles : angles of FrFT in x and y direction
%

for i = 1:size(matrix,1)
    temp(i,:) = Disfrft(double(matrix(i,:)),angles(1));
end

for i = 1:size(matrix,2)
    out(:,i) = Disfrft(temp(:,i),angles(2));
end
