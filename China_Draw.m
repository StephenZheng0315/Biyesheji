I = MerAODdata.MerAOD.BCEXTTAU(:,:,1)
%%批量读取文件！
filepath='D:\project\biyesheji\Code\data\MERRA_2\AOD\MerAOD\';
for i=2014:2018
    % ***代表文件的格式
    filename=strcat('MerAOD',num2str(i),'.mat');
    file_full_name = fullfile(filepath,filename);
    disp(file_full_name);
    save_year = strcat('bs.Beijing_CAMS.',num2str(i))
    disp(num2str(i))
end

%% 
type =["aaa","bbb","cc","ddd"];
for i = 2014:2016
    for j = type
filename = strcat(i,j)
    end
end
%站点名字
%%年份
%%%TOTEXTTAU
%%%BCEXTTAU
%% 查找缺省值
quexingzhi = find(isnan(studyarea_aod));
quexingzhishijian=studyarea_time(quexingzhi);
%% 矩阵显示彩色图像
path = 'D:\project\biyesheji\Code\data\MERRA_2\AOD\MerAOD2014.mat'
MerAODdata = load(path);
data = MerAODdata.MerAOD.TOTEXTTAU(:,:,1);
t = MerAODdata.MerAOD.time;
ax.lon=MerAODdata.MerAOD.lon;
ax.lat=MerAODdata.MerAOD.lat;
time = datetime(t,'ConvertFrom','datenum');
imagesc(data);xlabel('经度');ylabel('纬度');title('中国区域JJA总气溶胶光学厚度示意图','FontSize',14 );
set(gca,'XTick',[72.66:96:135.99]);%X轴的数据显示范围
set(gca,'YTick',[55:0.5:16]);%X轴的数据显示范围
%% 按时间段提取站点数据
JJM_time = find(time>'2014-01-01'&time<'2014-03-31');
AMJ_time = find(time>'2014-04-01'&time<'2014-06-30');
JAS_time = find(time>'2014-07-01'&time<'2014-09-30');
OND_time = find(time>'2014-10-01'&time<'2014-12-31');
JJM_data = MERRA_BCEXTTAU_Beijing_CAMS_mean(JJM_time);
temp0101=mean(JJM_data);
%% 定义colorbar
colorbar('YTickLabel',{'Freezing','Cold','Cool','Neutral','Warm','Hot','Burning','Nuclear'})
%% 等距离生成向量
y = linspace(72.6666666664140,135.999999999684,96)
%% 
worldmap([15,55],[70,140]); %指定经纬度范围
geoshow(MerAODdata.MerAOD.lat,MerAODdata.MerAOD.lon,MerAODdata.MerAOD.TOTEXTTAU(:,:,1));
%% 多个矩阵求平均值
A(1)=[1,1,1;1,1,1;1,1,1];
A(2)=[2,2,2;2,2,2;2,2,2];
(i,r)size(A.a);
for c =1:i
    for j = 1:r
        d(c,j)=mean(A,all);
    end
end
d