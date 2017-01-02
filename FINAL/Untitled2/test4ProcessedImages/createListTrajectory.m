function list = createListTrajectory(cr0, listIntensity, tDiff)

list = []; %zeros(size(listIntensity));



szpl = size(listIntensity);
rows = 0;
for i = 1:szpl(1)
    if listIntensity(i, 1) ~= 0;
        rows = rows + 1;
    end
end

for count = 1:rows
    t = findTrajectory(cr0,listIntensity(count,:));
    
            %Velocity
    deltaC = listIntensity(count,1) - cr0(1);
    deltaR = listIntensity(count,2) - cr0(2);
    v = sqrt(deltaC^2 + deltaR^2) * 100 / tDiff;
    
    if ~(t>85 && t<95)
        list(count,1:4) = [listIntensity(count,1),listIntensity(count,2),t,v];
    end
end