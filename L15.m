%% 猪都需要做的.

%% read data and get the station data
filepath='';
VN = '';
data20 = load(filepath,VN);
station_name_20 = fieldnames(data20.AOD_ANT_Mainland);
changdu = length(station_name_20);
result1=struct2cell(data20.AOD_ANT_Mainland);
for i = 1:changdu
    l15(i,1) = {station_name_20(i)};
    l15(i,2) = {length(result1{i, 1}.time)};
end
% % 
station = data20.AOD_ANT_Mainland.SACOL;%'SACOL'
station_aod = station.AOD550;
%% get limit time gap data
station_time = datetime(station.time,'ConvertFrom','datenum');
study_time_NO = find(station_time>'2014-01-01'&station_time<'2018-12-31');
study_time = station.time(study_time_NO);
study_data = station_aod(study_time_NO);
set(gca,'YLim',[0 4]);%X轴的数据显示范围
%%  
% filename = strcat(t,'.jpg');
% saveas(gca, filename)
% % beijing = data_15.MainLChina_AOD.Beijing_CAMS
% 
% data15.AOD_ANT_Mainland.Beijing_CAMS.latitude, data15.AOD_ANT_Mainland.Beijing_CAMS.longitude