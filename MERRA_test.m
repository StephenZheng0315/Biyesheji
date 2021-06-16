clear all,clc
filepath='D:\project\biyesheji\Code\data\MERRA_2\AOD\';
for year=2014:2018
filename=strcat('MerAOD',num2str(year),'.mat');
file_full_name = fullfile(filepath,filename);
MerAODdata=load(file_full_name);
t = MerAODdata.MerAOD.time;
time = datetime(t,'ConvertFrom','datenum');
%% 批处理的话需要的变量有测站名称，经纬度范围,提取变量名称（√）
% Beijing_CAMS 39.933	116.317
% Long = data20.MainLChina_AOD.Beijing_CAMS.longitude%[115.999999999704,116.666666666370,117.333333333036]
% Lat = data20.MainLChina_AOD.Beijing_CAMS.latitude%[40;39.5000000000000]
%% 
lat_index=find(MerAODdata.MerAOD.lat(:,1) >= 39.5 & MerAODdata.MerAOD.lat(:,1) <= 40);
lon_index=find(MerAODdata.MerAOD.lon(1,:) >= 116.0 & MerAODdata.MerAOD.lon(1,:) <= 116.9);
MERRA_TOTEXTTAU_Beijing_CAMS = MerAODdata.MerAOD.TOTEXTTAU(lat_index,lat_index,:);
MERRA_BCEXTTAU_Beijing_CAMS = MerAODdata.MerAOD.BCEXTTAU(lat_index,lat_index,:);
MERRA_DUEXTTAU_Beijing_CAMS = MerAODdata.MerAOD.DUEXTTAU(lat_index,lat_index,:);
MERRA_SSEXTTAU_Beijing_CAMS = MerAODdata.MerAOD.SSEXTTAU(lat_index,lat_index,:);
% 研究区数据是2*2，求均值变成1*1
for i =1:length(MERRA_TOTEXTTAU_Beijing_CAMS(:,:,:))
    MERRA_TOTEXTTAU_Beijing_CAMS_mean(i) = mean(mean(MERRA_TOTEXTTAU_Beijing_CAMS(:,:,i)));%总气溶胶550
    MERRA_BCEXTTAU_Beijing_CAMS_mean(i) = mean(mean(MERRA_BCEXTTAU_Beijing_CAMS(:,:,i)));%黑炭550 BCEXTTAU
    MERRA_DUEXTTAU_Beijing_CAMS_mean(i) = mean(mean(MERRA_DUEXTTAU_Beijing_CAMS(:,:,i)));%灰尘550 DUEXTTAU
    MERRA_SSEXTTAU_Beijing_CAMS_mean(i) = mean(mean(MERRA_SSEXTTAU_Beijing_CAMS(:,:,i)));%SSEXTTAU
end
sy = num2str(year);
Beijing_CAMS.sy = struct('TOTEXTTAU',[MERRA_TOTEXTTAU_Beijing_CAMS_mean],'BCEXTTAU',[MERRA_BCEXTTAU_Beijing_CAMS_mean],'DUEXTTAU',[MERRA_DUEXTTAU_Beijing_CAMS_mean],'SSEXTTAU',[MERRA_SSEXTTAU_Beijing_CAMS_mean],'time',[time]);
disp(sy,'over!')
clear MerAODdata
end
%%
%name
%%year
%%%TOTEXTTAU
%%%BCEXTTAU
%%%DUEXTTAU
%%%SSEXTTAU