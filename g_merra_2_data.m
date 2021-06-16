function station_aod = g_merra_2_data(c1,c2,lat,lon,temp_lat,temp_lon,stationLat,stationLon,AOD_2015,AOD_2016,AOD_2017,AOD_2018)
a = find(abs(temp_lat-stationLat)<0.5);b=find(abs(temp_lon-stationLon)<0.5);
x1=lat(a(1));x2=lat(a(2));
y1=lon(b(1));y2=lon(b(2));
x=stationLat;y=stationLon;
for k = 1:c1
    station_aod.y2015(k,1)=((y2-y)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2015(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2015(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2015(x1,y2,k)+(((x1-x2)/(x2-x1)))*AOD_2015(x2,y2,k));
    station_aod.y2017(k,1)=((y2-y)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2017(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2017(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2017(x1,y2,k)+(((x1-x2)/(x2-x1)))*AOD_2017(x2,y2,k));
    station_aod.y2018(k,1)=((y2-y)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2018(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2018(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2018(x1,y2,k)+(((x1-x2)/(x2-x1)))*AOD_2018(x2,y2,k));
end
for k = 1:c2
    station_aod.y2016(k,1)=((y2-y)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2016(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2016(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2016(x1,y2,k)+(((x-x1)/(x2-x1)))*AOD_2016(x2,y2,k));
end
end