clear all;clc
%% read merra and aero data %%
need_reg = readtable('371_merra2.csv');
reference = readtable('371_merraero.csv');
%% Get time and AOD value%%
time1 = table2array(need_reg(:,1));value1=table2array(need_reg(:,2));
time2 = table2array(reference(:,1));value2=table2array((reference(:,2)));
[a1,b1]=size(time2);%[a3,b3]=size(value2);
ii = 1;savedata=[];sl=1;
%% interpppppp! %%
for i = 1:1:a1
    if find(abs(time1-time2(i))<0.1)
        test = find(abs(time1-time2(i))<0.1);
        % if count > 1 save Merra-2 data in 1st Col and Ref data to 2nd Col%%
        if length(test)>=2
            time=[time1(test(1),:),time1(test(length(test)),:)];
            value=[value1(test(1),:),value1(test(length(test)),:)];
            savedata(i,1)= interp1(time,value,time2(i),'linear');%% MERRA-2
            savedata(i,2)= value2(i);%% MODIS[1.75501990318298]
        end
        % if count = 1%%
        if length(test)<2
            time=[time1(test(1),:),time1(test(1)+1,:)];
            value=[value1(test(1),:),value1(test(1)+1,:)];
            savedata(i,1)=interp1(time,value,time2(i),'linear');
            savedata(i,2)= value2(i);
        end
    end
end
disp('OK')