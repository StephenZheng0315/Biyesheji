%% xxx都需要做的.
clear all,clc
%% 读数据
load('./AERONET_MainLChina_AOD_L20_All_Points.mat');
%data20 = load('D:\project\biyesheji\Code\data\AERONET\AERONET_MainLChina_AOD_L20_All_Points.mat')
%% 计算数据量data20.AOD_ANT_Mainland
% station_name = fieldnames(MainLChina_AOD);
% changdu = length(station_name);
% result1=struct2cell(AOD_ANT_Mainland);
% for i = 1:changdu
%     l15(i,1) = {station_name(i)};
%     l15(i,2) = {length(result1{i, 1}.time)};
% end
%% 提取研究站点数据
% 提取参考基站数据
% Beijing-CAMS|  106   |  39.933  |	116.317   |2014-01-01 2018-06-28|87804
% XiangHe     |   36   |  39.7536 | 116.9615  |2014-01-01 2014-11-08|2301
% Taihu    |  4276  |  28.3650 | 86.9481   |2014-01-01 2017-11-16|20483
station = MainLChina_AOD.Taihu;%'AOE_Baotou'
station_aod = MainLChina_AOD.Taihu.AOD550;
station_time = datetime(station.time,'ConvertFrom','datenum');
study_time_NO = find(station_time>'2015-01-01'&station_time<'2015-12-31');
study_time = station.time(study_time_NO);
study_data = station_aod(study_time_NO);
Taihu(:,1)=study_time;
Taihu(:,2)=study_data;

plot(study_time,study_data);title('Taihu');
sprintf('经度%f,纬度%f,高程%f,开始%s，结束%s，数据量%i',...
    station.longitude,station.latitude,station.elevation,...
    min(study_time),max(study_time),length(study_data))

