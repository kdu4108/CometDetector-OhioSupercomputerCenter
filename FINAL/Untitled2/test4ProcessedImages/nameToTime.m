function totalMins = nameToTime(fileName)

%splits the file name into its component parts
[path, fileName, ext] = fileparts(fileName);

years = fileName(1,1:4); %finds the number of years since 2000
years = str2num(years);%convers to numeric data
years = years - 2000;

months = fileName(1,5:6); % # of months since the start of the years
months = str2num(months);

days = fileName(1,7:8);%# of days since start of month
days = str2num(days);

hours = fileName(1,10:11);%# of hours
hours = str2num(hours);

mins = fileName(1,12:13);%minutes
mins = str2num(mins);

%sums the total of all the minutes since 2000 - an absolute scale
totalMins = years*525600 + months*43800 + days*1440 + hours*60 + mins;