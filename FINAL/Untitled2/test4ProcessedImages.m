function masterCells = test4ProcessedImages(stack4O, stack4I, stack4G, file1, file2, file3, file4)

masterCells = [];

listI1 = createListFromI(stack4I(:,:,1));
listI2 = createListFromI(stack4I(:,:,2));
listI3 = createListFromI(stack4I(:,:,3));
listI4 = createListFromI(stack4I(:,:,4));

global maskZeros;
maskZeros = zeros(1024);

%*******************************************************************%
[rows, cols] = size(listI1);

tDiff2 = nameToTime(file2) - nameToTime(file1);

masterCells = cell(rows,2);

for i = 1:rows
    
    masterCells{i,1} = listI1(i,:);
    
    proxList2 = createListProx(listI1(i, 1), listI1(i,2), stack4I(:,:,2), tDiff2);

    listIntensity2 = compareIntensity(listI1(i,1), listI1(i,2), proxList2, stack4O(:,:,1), stack4O(:,:,2));
    
    tempTraj = createListTrajectory(listI1(i, :), listIntensity2, tDiff2);
    
    [rs, cs] = size(tempTraj);
    masterCells{i,2} = mat2cell(tempTraj, ones(1,rs));
    
     
     %JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ%
     
     
     tDiff3 = nameToTime(file3) - nameToTime(file2);
     
     [rows3, cols3] = size(masterCells{i,2});
     for j = 1:rows3
        
        proxList3 = createListProx(masterCells{i,2}{j,1}(1), masterCells{i,2}{j,1}(2), stack4I(:,:,3), tDiff3);
     
        listIntensity3 = compareIntensity(masterCells{i,2}{j,1}(1), masterCells{i,2}{j,1}(2), proxList3, stack4O(:,:,2), stack4O(:,:,3));
        
        tempTraj3 = createListTrajectory(masterCells{i,2}{j,1}(1:2), listIntensity3, tDiff3);
        
        [rs, cs] = size(tempTraj3);
        count = 0;
        tempTempTraj = [];
        for k = 1:rs
            if abs(tempTraj3(k,3) - wrap360(masterCells{i,2}{j,1}(3) - 5)) < 5
                if abs(tempTraj3(k,4) - masterCells{i,2}{j,1}(4)) < (masterCells{i,2}{j,1}(4) * 0.15)
                    count = count +1;
                    tempTempTraj(count,:) = tempTraj3(k,:);
                end
            end
        end
        [r,c] = size(tempTempTraj);
        masterCells{i,2}{j,2} = mat2cell(tempTempTraj, ones(1,r));
     end %ends j loop
     
     if ~cellfun(@isempty, masterCells(i,2))
        %KEEP THESE
        masterCells{i,2} = masterCells{i,2}(~cellfun(@isempty, masterCells{i,2}(:,2)),:);
     end
     
end % ends i

masterCells = masterCells(~cellfun(@isempty, masterCells(:,2)),:);