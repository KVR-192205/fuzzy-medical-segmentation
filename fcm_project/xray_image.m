clc;
clear;

img = imread('Chest_Xray_PA_3-8-2010_inverted.png');

figure;
imshow(img);
title('Original X-ray Image');

% Convert to double
img = im2double(img);

% If image is RGB, convert to grayscale
if size(img,3) == 3
    img = rgb2gray(img);
end

% Improve contrast (important for X-ray)
img = imadjust(img);

% Smooth noise
img = imgaussfilt(img, 2);

% Show processed image
figure;
imshow(img);
title('Preprocessed X-ray Image');

img = imadjust(img, stretchlim(img), []);

% Convert to vector
data = img(:);

% Number of clusters
n_clusters = 3;

% Apply Fuzzy C-Means
[center, U] = fcm(data, n_clusters);

% Get cluster index
[~, cluster_index] = max(U);

% Reshape to image
segmented_img = reshape(cluster_index, size(img));

% Show segmentation
figure;
imshow(segmented_img, []);
title('X-ray FCM Segmentation');

% Color segmentation
rgb_img = label2rgb(segmented_img);

figure;
imshow(rgb_img);
title('Colored X-ray Segmentation');

segmented_img = medfilt2(segmented_img);
