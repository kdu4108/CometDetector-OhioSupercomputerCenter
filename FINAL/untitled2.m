dir = 'C:\Users\Kevin\Documents\Freshman Summer 2014\OSC SI\OSC Comet Project\0608';
cd 'C:\Users\Kevin\Documents\Freshman Summer 2014\OSC SI\OSC Comet Project\0608';
files = ls;

[numFiles, fileLength] = size(files);
files = strcat(dir, files(3:numFiles,:));

cd ..

[stackO(:,:,1), stackI(:,:,1), stackG(:,:,1)] = processImage(files(1,:));
[stackO(:,:,2), stackI(:,:,2), stackG(:,:,2)] = processImage(files(2,:));
[stackO(:,:,3), stackI(:,:,3), stackG(:,:,3)] = processImage(files(3,:));
[stackO(:,:,4), stackI(:,:,4), stackG(:,:,4)] = processImage(files(4,:));


masterCells = test4ProcessedImages(stackO, stackI, stackG, files(1,:), files(2,:), files(3,:), files(4,:));

%visualization

[row, col] = size(masterCells)
kevinlist = [];

for i = 1:row
    kevinlist(1,1) = masterCells{i,1}(1);
    kevinlist(1,2) = masterCells{i,1}(2);
    kevinlist(2,1) = masterCells{i,2}{1,1}(1);
    kevinlist(2,2) = masterCells{i,2}{1,1}(2);
    kevinlist(3,1) = masterCells{i,2}{1,2}{1,1}(1);
    kevinlist(3,2) = masterCells{i,2}{1,2}{1,1}(2);
    createAnimation(stackO, kevinlist);
end


% mcsize = size(masterCells);
% for row = 1:mcsize(1)
%     kevinlist(1,1) = masterCells{row,1}(1);
%     kevinlist(2,1) = masterCells{row,2}{1,1}(1);
%     kevinlist(3,1) = masterCells{row,2}{1,2}{1,1}(1);
%     kevinlist(1,2) = masterCells{row,1}(2);
%     kevinlist(2,2) = masterCells{row,2}{1,1}(2);
%     kevinlist(3,2) = masterCells{row,2}{1,2}{1,1}(2);
%     
%     createAnimation(stackO,kevinlist);
%     pause(3);
% end

