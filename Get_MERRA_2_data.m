clear all,clc
load('./data/MERRA_2/AOD/MerAOD2015.mat');y2015_time=MerAOD.time;disp('15已读取')clear MerAOD
load('./data/MERRA_2/AOD/MerAOD2016.mat');y2016_time=MerAOD.time;disp('16已读取')clear MerAOD
load('./data/MERRA_2/AOD/MerAOD2017.mat');y2017_time=MerAOD.time;disp('17已读取')clear MerAOD
load('./data/MERRA_2/AOD/MerAOD2018.mat');y2018_time=MerAOD.time;disp('18已读取')clear MerAOD
load('./data/MERRA_2/AOD/Biyesheji.mat');
disp('毕业数据已读取')
load('./data/AERONET/AERONET_MainLChina_AOD_L20_All_Points.mat');
disp('aeronet站点数据已读取')
% aeronet_data = readtable('D:\project\biyesheji\Code\Beijing_AERONET_AOD.csv');
% aeronet_time = aeronet_data(:,1);
[a,b,c]=size(Biyesheji.y2014.MERRA_TOTEXTTAU);
lon = Biyesheji.lon;lat = Biyesheji.lat;
AOD_DATA=Biyesheji.y2014.MERRA_TOTEXTTAU
temp_lon = lon(1,:);temp_lat = lat(:,1);
%% AOE_Baotou
lonL = find(abs(temp_lon-MainLChina_AOD.AOE_Baotou.longitude)<0.6);
latL = find(abs(temp_lat-MainLChina_AOD.AOE_Baotou.latitude)<0.5);
y = MainLChina_AOD.AOE_Baotou.longitude;x = MainLChina_AOD.AOE_Baotou.longitude-floor(MainLChina_AOD.AOE_Baotou.longitude);
x1=lon(lonL(1));x2=lon(lonL(2));y1=lat(latL(1));y2=lat(latL(2));
for k = 1:c1
    station_aod.y2015(k,1)=((y2-y)./(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2015(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2015(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2015(x1,y2,k)+(((x1-x2)/(x2-x1)))*AOD_2015(x2,y2,k));
%    AOE_Baotou.y2017(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
%    AOE_Baotou.y2018(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
end
    AOE_Baotou.y2015(:,2)=y2015_time;AOE_Baotou.y2017(:,2)=y2017_time;AOE_Baotou.y2018(:,2)=y2018_time;
disp('AOE_Baotou,OK!')
%% Taihu
[x1,x2] = find(abs(temp_lat-MainLChina_AOD.Taihu.latitude)<0.5);[y1,y2]=find(abs(temp_lon-MainLChina_AOD.Taihu.longitude)<0.6);
x = MainLChina_AOD.Taihu.latitude;y = MainLChina_AOD.Taihu.longitude;
for k = 1:c1
    Taihu.y2015(k,1)=((y2-y)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2015(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2015(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2015(x1,y2,k)+(((x-x1)/(x2-x1)))*AOD_2015(x2,y2,k));
    Taihu.y2017(k,1)=((y2-y)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2017(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2017(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2017(x1,y2,k)+(((x-x1)/(x2-x1)))*AOD_2017(x2,y2,k));
    Taihu.y2018(k,1)=((y2-y)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2018(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2018(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2018(x1,y2,k)+(((x-x1)/(x2-x1)))*AOD_2018(x2,y2,k));
end
for k = 1:c2
Taihu.y2016(k,1)=((y2-y)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2016(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2016(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2016(x1,y2,k)+(((x-x1)/(x2-x1)))*AOD_2016(x2,y2,k));
end
Taihu.y2015(:,2)=y2015_time;Taihu.y2017(:,2)=y2017_time;Taihu.y2018(:,2)=y2018_time;
disp('Taihu,OK!')
%% NAM_CO
lonL = find(abs(temp_lon-MainLChina_AOD.NAM_CO.longitude)<0.6);
latL = find(abs(temp_lat-MainLChina_AOD.NAM_CO.latitude)<0.5);
LAT = MainLChina_AOD.NAM_CO.latitude;
LON = MainLChina_AOD.NAM_CO.longitude;
lat_float = LAT-floor(MainLChina_AOD.NAM_CO.latitude);lon_float = LON-floor(MainLChina_AOD.NAM_CO.longitude);
for k = 1:c
    NAM_CO.y2015(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
    NAM_CO.y2017(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
    NAM_CO.y2018(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
end
    NAM_CO.y2015(:,2)=y2015_time;NAM_CO.y2017(:,2)=y2017_time;NAM_CO.y2018(:,2)=y2018_time;
disp('NAM_CO,OK!')
%% XiangHe
lonL = find(abs(temp_lon-MainLChina_AOD.XiangHe.longitude)<0.6);
latL = find(abs(temp_lat-MainLChina_AOD.XiangHe.latitude)<0.5);
LAT = MainLChina_AOD.XiangHe.latitude;
LON = MainLChina_AOD.XiangHe.longitude;
lat_float = LAT-floor(MainLChina_AOD.XiangHe.latitude);lon_float = LON-floor(MainLChina_AOD.XiangHe.longitude);
for k = 1:c
    XIANGHE.y2015(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
    XIANGHE.y2017(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
    XIANGHE.y2018(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
end
    XIANGHE.y2015(:,2)=y2015_time;XIANGHE.y2017(:,2)=y2017_time;XIANGHE.y2018(:,2)=y2018_time;
disp('XiangHe,OK!')
%% Beijing
lonL = find(abs(temp_lon-MainLChina_AOD.Beijing.longitude)<0.6);
latL = find(abs(temp_lat-MainLChina_AOD.Beijing.latitude)<0.5);
LAT = MainLChina_AOD.Beijing.latitude;
LON = MainLChina_AOD.Beijing.longitude;
lat_float = LAT-floor(MainLChina_AOD.Beijing.latitude);lon_float = LON-floor(MainLChina_AOD.Beijing.longitude);
for k = 1:c
    BEIJING.y2015(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
    BEIJING.y2017(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
    BEIJING.y2018(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
end
    BEIJING.y2015(:,2)=y2015_time;BEIJING.y2017(:,2)=y2017_time;BEIJING.y2018(:,2)=y2018_time;
disp('Beijing,OK!')
%% Beijing-CAMS
lonL = find(abs(temp_lon-MainLChina_AOD.Beijing_CAMS.longitude)<0.6);
latL = find(abs(temp_lat-MainLChina_AOD.Beijing_CAMS.latitude)<0.5);
LAT = MainLChina_AOD.Beijing_CAMS.latitude;
LON = MainLChina_AOD.Beijing_CAMS.longitude;
lat_float = LAT-floor(MainLChina_AOD.Beijing_CAMS.latitude);lon_float = LON-floor(MainLChina_AOD.Beijing_CAMS.longitude);
for k = 1:c
    BEIJING_CAMS.y2015(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
    BEIJING_CAMS.y2017(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
    BEIJING_CAMS.y2018(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
end
BEIJING_CAMS.y2015(:,2)=y2015_time;BEIJING_CAMS.y2017(:,2)=y2017_time;BEIJING_CAMS.y2018(:,2)=y2018_time;
disp('Beijing-CAMS,OK!')

% %% SONET_HARBIN
% lonL = find(abs(temp_lon-MainLChina_AOD.SONET_Harbin.longitude)<0.6);
% latL = find(abs(temp_lat-MainLChina_AOD.SONET_Harbin.latitude)<0.5);
% LAT = MainLChina_AOD.SONET_Harbin.latitude;
% LON = MainLChina_AOD.SONET_Harbin.longitude;
% lat_float = LAT-floor(MainLChina_AOD.SONET_Harbin.latitude);lon_float = LON-floor(MainLChina_AOD.SONET_Harbin.longitude);
% for k = 1:c
%     SONET_HARBIN.y2015(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2015.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
%     SONET_HARBIN.y2016(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
%     SONET_HARBIN.y2017(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2017.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
%     SONET_HARBIN.y2018(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2018.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
% end
% disp('SONET_HARBIN,OK!')
%% 2016年的
[a,b,c]=size(Biyesheji.y2016.MERRA_TOTEXTTAU);
lon = Biyesheji.lon;lat = Biyesheji.lat;
temp_lon = lon(1,:);temp_lat = lat(:,1);
%% AOE_Baotou
lonL = find(abs(temp_lon-MainLChina_AOD.AOE_Baotou.longitude)<0.6);
latL = find(abs(temp_lat-MainLChina_AOD.AOE_Baotou.latitude)<0.5);
lat_float = MainLChina_AOD.AOE_Baotou.longitude-floor(MainLChina_AOD.AOE_Baotou.longitude);lon_float = MainLChina_AOD.AOE_Baotou.longitude-floor(MainLChina_AOD.AOE_Baotou.longitude);
for k = 1:c
    AOE_Baotou.y2016(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
end
    AOE_Baotou.y2016(:,2)=y2016_time;
disp('AOE_Baotou2016,OK!')
%% Taihu
lonL = find(abs(temp_lon-MainLChina_AOD.Taihu.longitude)<0.6);
latL = find(abs(temp_lat-MainLChina_AOD.Taihu.latitude)<0.5);
LAT = MainLChina_AOD.Taihu.latitude;
LON = MainLChina_AOD.Taihu.longitude;
lat_float = LAT-floor(MainLChina_AOD.Taihu.latitude);lon_float = LON-floor(MainLChina_AOD.Taihu.longitude);
for k = 1:c
    Taihu.y2016(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
end
    Taihu.y2016(:,2)=y2016_time;

disp('Taihu2016,OK!')
%% NAM_CO
lonL = find(abs(temp_lon-MainLChina_AOD.NAM_CO.longitude)<0.6);
latL = find(abs(temp_lat-MainLChina_AOD.NAM_CO.latitude)<0.5);
LAT = MainLChina_AOD.NAM_CO.latitude;
LON = MainLChina_AOD.NAM_CO.longitude;
lat_float = LAT-floor(MainLChina_AOD.NAM_CO.latitude);lon_float = LON-floor(MainLChina_AOD.NAM_CO.longitude);
for k = 1:c
    NAM_CO.y2016(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
end
    NAM_CO.y2016(:,2)=y2016_time;
disp('NAM_CO2016,OK!')
%% XiangHe
lonL = find(abs(temp_lon-MainLChina_AOD.XiangHe.longitude)<0.6);
latL = find(abs(temp_lat-MainLChina_AOD.XiangHe.latitude)<0.5);
LAT = MainLChina_AOD.XiangHe.latitude;
LON = MainLChina_AOD.XiangHe.longitude;
lat_float = LAT-floor(MainLChina_AOD.XiangHe.latitude);lon_float = LON-floor(MainLChina_AOD.XiangHe.longitude);
for k = 1:c
    XIANGHE.y2016(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
end
    XIANGHE.y2016(:,2)=y2016_time;
disp('XiangHe2016,OK!')
%% Beijing
lonL = find(abs(temp_lon-MainLChina_AOD.Beijing.longitude)<0.6);
latL = find(abs(temp_lat-MainLChina_AOD.Beijing.latitude)<0.5);
LAT = MainLChina_AOD.Beijing.latitude;
LON = MainLChina_AOD.Beijing.longitude;
lat_float = LAT-floor(MainLChina_AOD.Beijing.latitude);lon_float = LON-floor(MainLChina_AOD.Beijing.longitude);
for k = 1:c
    BEIJING.y2016(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
end
    BEIJING.y2016(:,2)=y2016_time;
disp('Beijing2016,OK!')
%% Beijing-CAMS
lonL = find(abs(temp_lon-MainLChina_AOD.Beijing_CAMS.longitude)<0.6);
latL = find(abs(temp_lat-MainLChina_AOD.Beijing_CAMS.latitude)<0.5);
LAT = MainLChina_AOD.Beijing_CAMS.latitude;
LON = MainLChina_AOD.Beijing_CAMS.longitude;
lat_float = LAT-floor(MainLChina_AOD.Beijing_CAMS.latitude);lon_float = LON-floor(MainLChina_AOD.Beijing_CAMS.longitude);
for k = 1:c
    BEIJING_CAMS.y2016(k,1)= (1-lat_float)*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(1),k)+lat_float*(1-lon_float)*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(1),k)+(1-lat_float)*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(1),latL(2),k)+lat_float*lon_float*Biyesheji.y2016.MERRA_TOTEXTTAU(lonL(2),latL(2),k);
end
    BEIJING_CAMS.y2016(:,2)=y2016_time;
disp('Beijing-CAMS2016,OK!')
%% 给数据添加时间戳
clear a b c AOD_ANT_Mainland y2014_time y2016_time y2017_time y2018_timeBiyesheji k lat LAT lat_float latL lon LON lon_float lonL Main_China_AOD temp_lat temp_lon
[a1 b1]=size(AOE_Baotou.y2015);
[a2 b2]=size(AOE_Baotou.y2016);
[a3 b3]=size(AOE_Baotou.y2017);
[a4 b4]=size(AOE_Baotou.y2018);
clear b1 b2 b3 b4
Baotou_MERRA_2_AOD=zeros(a1+a2+a3+a4,2);
Baotou_MERRA_2_AOD(1:a1,1)=AOE_Baotou.y2015(:,1);
Baotou_MERRA_2_AOD(1:a1,2)=AOE_Baotou.y2015(:,2);
Baotou_MERRA_2_AOD(a1+1:a2+a1,1)=AOE_Baotou.y2016(:,1);
Baotou_MERRA_2_AOD(a1+1:a2+a1,2)=AOE_Baotou.y2016(:,2);
Baotou_MERRA_2_AOD(a1+a2+1:a1+a2+a3,1)=AOE_Baotou.y2017(:,1);
Baotou_MERRA_2_AOD(a1+a2+1:a1+a2+a3,2)=AOE_Baotou.y2017(:,2);
Baotou_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,1)=AOE_Baotou.y2018(:,1);
Baotou_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,2)=AOE_Baotou.y2018(:,2);clear AOE_Baotou
[a1 b1]=size(BEIJING.y2015);
[a2 b2]=size(BEIJING.y2016);
[a3 b3]=size(BEIJING.y2017);
[a4 b4]=size(BEIJING.y2018);
clear b1 b2 b3 b4
BEIJING_MERRA_2_AOD=zeros(a1+a2+a3+a4,2);
BEIJING_MERRA_2_AOD(1:a1,1)=BEIJING.y2015(:,1);
BEIJING_MERRA_2_AOD(1:a1,2)=BEIJING.y2015(:,2);
BEIJING_MERRA_2_AOD(a1+1:a2+a1,1)=BEIJING.y2016(:,1);
BEIJING_MERRA_2_AOD(a1+1:a2+a1,2)=BEIJING.y2016(:,2);
BEIJING_MERRA_2_AOD(a1+a2+1:a1+a2+a3,1)=BEIJING.y2017(:,1);
BEIJING_MERRA_2_AOD(a1+a2+1:a1+a2+a3,2)=BEIJING.y2017(:,2);
BEIJING_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,1)=BEIJING.y2018(:,1);
BEIJING_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,2)=BEIJING.y2018(:,2);clear BEIJING
[a1 b1]=size(BEIJING_CAMS.y2015);
[a2 b2]=size(BEIJING_CAMS.y2016);
[a3 b3]=size(BEIJING_CAMS.y2017);
[a4 b4]=size(BEIJING_CAMS.y2018);
clear b1 b2 b3 b4
BEIJING_CAMS_MERRA_2_AOD=zeros(a1+a2+a3+a4,2);
BEIJING_CAMS_MERRA_2_AOD(1:a1,1)=BEIJING_CAMS.y2015(:,1);
BEIJING_CAMS_MERRA_2_AOD(1:a1,2)=BEIJING_CAMS.y2015(:,2);
BEIJING_CAMS_MERRA_2_AOD(a1+1:a2+a1,1)=BEIJING_CAMS.y2016(:,1);
BEIJING_CAMS_MERRA_2_AOD(a1+1:a2+a1,2)=BEIJING_CAMS.y2016(:,2);
BEIJING_CAMS_MERRA_2_AOD(a1+a2+1:a1+a2+a3,1)=BEIJING_CAMS.y2017(:,1);
BEIJING_CAMS_MERRA_2_AOD(a1+a2+1:a1+a2+a3,2)=BEIJING_CAMS.y2017(:,2);
BEIJING_CAMS_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,1)=BEIJING_CAMS.y2018(:,1);
BEIJING_CAMS_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,2)=BEIJING_CAMS.y2018(:,2);clear BEIJING_CAMS
[a1 b1]=size(NAM_CO.y2015);
[a2 b2]=size(NAM_CO.y2016);
[a3 b3]=size(NAM_CO.y2017);
[a4 b4]=size(NAM_CO.y2018);
clear b1 b2 b3 b4
NAM_CO_MERRA_2_AOD=zeros(a1+a2+a3+a4,2);
NAM_CO_MERRA_2_AOD(1:a1,1)=NAM_CO.y2015(:,1);
NAM_CO_MERRA_2_AOD(1:a1,2)=NAM_CO.y2015(:,2);
NAM_CO_MERRA_2_AOD(a1+1:a2+a1,1)=NAM_CO.y2016(:,1);
NAM_CO_MERRA_2_AOD(a1+1:a2+a1,2)=NAM_CO.y2016(:,2);
NAM_CO_MERRA_2_AOD(a1+a2+1:a1+a2+a3,1)=NAM_CO.y2017(:,1);
NAM_CO_MERRA_2_AOD(a1+a2+1:a1+a2+a3,2)=NAM_CO.y2017(:,2);
NAM_CO_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,1)=NAM_CO.y2018(:,1);
NAM_CO_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,2)=NAM_CO.y2018(:,2);clear NAM_CO
[a1 b1]=size(Taihu.y2015);
[a2 b2]=size(Taihu.y2016);
[a3 b3]=size(Taihu.y2017);
[a4 b4]=size(Taihu.y2018);
clear b1 b2 b3 b4
TAIHU_MERRA_2_AOD=zeros(a1+a2+a3+a4,2);
TAIHU_MERRA_2_AOD(1:a1,1)=Taihu.y2015(:,1);
TAIHU_MERRA_2_AOD(1:a1,2)=Taihu.y2015(:,2);
TAIHU_MERRA_2_AOD(a1+1:a2+a1,1)=Taihu.y2016(:,1);
TAIHU_MERRA_2_AOD(a1+1:a2+a1,2)=Taihu.y2016(:,2);
TAIHU_MERRA_2_AOD(a1+a2+1:a1+a2+a3,1)=Taihu.y2017(:,1);
TAIHU_MERRA_2_AOD(a1+a2+1:a1+a2+a3,2)=Taihu.y2017(:,2);
TAIHU_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,1)=Taihu.y2018(:,1);
TAIHU_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,2)=Taihu.y2018(:,2);clear Taihu
[a1 b1]=size(XIANGHE.y2015);
[a2 b2]=size(XIANGHE.y2016);
[a3 b3]=size(XIANGHE.y2017);
[a4 b4]=size(XIANGHE.y2018);
clear b1 b2 b3 b4
XIANGHE_MERRA_2_AOD=zeros(a1+a2+a3+a4,2);
XIANGHE_MERRA_2_AOD(1:a1,1)=XIANGHE.y2015(:,1);
XIANGHE_MERRA_2_AOD(1:a1,2)=XIANGHE.y2015(:,2);
XIANGHE_MERRA_2_AOD(a1+1:a2+a1,1)=XIANGHE.y2016(:,1);
XIANGHE_MERRA_2_AOD(a1+1:a2+a1,2)=XIANGHE.y2016(:,2);
XIANGHE_MERRA_2_AOD(a1+a2+1:a1+a2+a3,1)=XIANGHE.y2017(:,1);
XIANGHE_MERRA_2_AOD(a1+a2+1:a1+a2+a3,2)=XIANGHE.y2017(:,2);
XIANGHE_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,1)=XIANGHE.y2018(:,1);
XIANGHE_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,2)=XIANGHE.y2018(:,2);
clear XIANGHE a1 a2 a3 a4 MainLChina_AOD SONET_HARBIN y2015_time y2018_time Biyesheji
BEIJING_CAMS_MERRA_2_AOD= huanlie(BEIJING_CAMS_MERRA_2_AOD);
BEIJING_MERRA_2_AOD= huanlie(BEIJING_MERRA_2_AOD);
NAM_CO_MERRA_2_AOD= huanlie(NAM_CO_MERRA_2_AOD);
TAIHU_MERRA_2_AOD= huanlie(TAIHU_MERRA_2_AOD);
XIANGHE_MERRA_2_AOD= huanlie(XIANGHE_MERRA_2_AOD);
Baotou_MERRA_2_AOD= huanlie(Baotou_MERRA_2_AOD);
function newdata = huanlie(data)
newdata(:,1)=data(:,2);
newdata(:,2)=data(:,1);
end