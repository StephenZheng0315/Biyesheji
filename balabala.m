function savedata = balabala(s_lat,s_lon,temp_lat,temp_lon,data,time)
% Taihu
% temp_x
[a b c]=size(data);clear a b
x = find(abs(temp_lat-s_lat)<0.5);x1=temp_lat(x(1));x2=temp_lat(x(2));
y=find(abs(temp_lon-s_lon)<0.6);y1=temp_lon(y(1));y2=temp_lon(y(2));
for k = 1:c
    savedata(k,2)=((y2-s_lon)./(y2-y1))*((((x2-s_lat)./(x2-x1)))*data(x(1),y(1),k)+(((s_lat-x1)./(x2-x1)))*data(x(2),y(1),k))+...
               ((s_lon-y1)./(y2-y1))*((((x2-s_lat)./(x2-x1)))*data(x(1),y(2),k)+(((s_lat-x1)./(x2-x1))).*data(x(2),y(2),k));
end
disp(size(savedata(:,2)))
disp('savedata,OK!')
savedata(:,1)=time;
end

