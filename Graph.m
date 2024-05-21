% Load the encrypted image
encryptedImage = imread('image2.png');

% Convert the image to grayscale if it is not already
if size(encryptedImage, 3) == 3
    encryptedImage = rgb2gray(encryptedImage);
end

% Plot the image
figure;
imagesc(encryptedImage);
axis equal;

% Plot the functional graph
figure;
[r, c] = size(encryptedImage);
for i = 1:r
    for j = 1:c
        plot(i, j, '.');
        text(i, j, num2str(encryptedImage(i, j)));
    end
end
xlabel('Row Index');
ylabel('Column Index');
title('Functional Graph of Encrypted Image');