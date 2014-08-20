%% Loading a single Tiff file
A = imread('14_07_02_H1_CTRLRH2375min.i0.f0.c0.tif', TIFF);
figure, imshow(A);

%% Tiff Load command for Rhythm.m
A = dir('14_07_02_H1_CTRLRH2375min.i0.f0.c0.tif');  % the folder in which ur images exists
for i = 1 : length(A)
    filename = strcat('/Users/OE/Dropbox/140702H1CTRLRH2375min.i0',A(i).name);
    I = imread(filename);
    figure, imshow(I);
end

%% Script found online
SrcFiles = dir('E:\New Folder\*.tif');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('E:\New Folder\',srcFiles(i).name);
    I = imread(filename);
    figure, imshow(I);
end
