%compare intensities; if the intensity is <=arbitrary number then append to
%new list. For each point in the findObjects inArea list
%g matrix

function [afterIntList]=compareIntensity(locC,locR,proxList, O1, O2)

szpl = size(proxList);
rows = 0;
for i = 1:szpl(1)
    if proxList(i, 1) ~= 0;
        rows = rows + 1;
    end
end
    
count=0;
afterIntList=[];
for c = 1:rows
    if (locR ~= 0 && locC ~= 0)
        if abs(O1(locR,locC)-O2(proxList(c,2),proxList(c,1)))<=15 %foreground
            if abs(O2(locR,locC)-O1(proxList(c,2),proxList(c,1)))<=15 %background
                if (O1(locR,locC) - O2(locR,locC) > 20) && (O2(proxList(c,2),proxList(c,1)) - O1(proxList(c,2),proxList(c,1)) > 20)
                    count=count+1;
                    afterIntList(count,:)=proxList(c,:);
                end
            end
        end
    end
end