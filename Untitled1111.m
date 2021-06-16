[x1,x2] = find(abs(temp_lat-MainLChina_AOD.Beijing_CAMS.latitude)<0.5);[y1,y2]=find(abs(temp_lon-MainLChina_AOD.Beijing_CAMS.longitude)<0.6);
x = MainLChina_AOD.Beijing_CAMS.latitude;y = MainLChina_AOD.Beijing_CAMS.longitude;
for k = 1:c1
    Beijing_CAMS.y2015(k,1)=((y2-y)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2015(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2015(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2015(x1,y2,k)+(((x-x1)/(x2-x1)))*AOD_2015(x2,y2,k));
    Beijing_CAMS.y2017(k,1)=((y2-y)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2017(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2017(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2017(x1,y2,k)+(((x-x1)/(x2-x1)))*AOD_2017(x2,y2,k));
    Beijing_CAMS.y2018(k,1)=((y2-y)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2018(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2018(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2018(x1,y2,k)+(((x-x1)/(x2-x1)))*AOD_2018(x2,y2,k));
end
for k = 1:c2
Beijing_CAMS.y2016(k,1)=((y2-y)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2016(x1,y1,k)+(((x-x1)/(x2-x1)))*AOD_2016(x2,y1,k))+((y-y1)/(y2-y1))*((((x2-x)/(x2-x1)))*AOD_2016(x1,y2,k)+(((x-x1)/(x2-x1)))*AOD_2016(x2,y2,k));
end
Beijing_CAMS.y2015(:,2)=y2015_time;Beijing_CAMS.y2017(:,2)=y2017_time;Beijing_CAMS.y2018(:,2)=y2018_time;