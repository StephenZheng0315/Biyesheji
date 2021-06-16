%% 趋势分析法
clc;clear;

%ss  = csvread('D:\project\biyesheji\res\csv\new\year_bili\2015-2018年MERRA-2 硫酸盐冬季均值.csv');
%oc  = csvread('D:\project\biyesheji\res\csv\new\year_bili\2015-2018年MERRA-2 有机碳冬季均值.csv');
%dust= csvread('D:\project\biyesheji\res\csv\new\year_bili\2015-2018年MERRA-2 沙尘冬季均值.csv');
%bc  = csvread('D:\project\biyesheji\res\csv\new\year_bili\2015-2018年MERRA-2 黑碳冬季均值.csv');
data_2015 = csvread('D:\project\biyesheji\res\csv\new\2015年MERRA-2 总AOD冬季均值.csv');
data_2016 = csvread('D:\project\biyesheji\res\csv\new\2016年MERRA-2 总AOD冬季均值.csv');
data_2017 = csvread('D:\project\biyesheji\res\csv\new\2017年MERRA-2 总AOD冬季均值.csv');
data_2018 = csvread('D:\project\biyesheji\res\csv\new\2018年MERRA-2 总AOD冬季均值.csv');
[a,b]=size(data_2015);
n=a*b;
cs = 1;
for i = 1:a
    for j = 1:b
    temp = ((2015.*data_2015(i,j)+2016.*data_2016(i,j)+2017.*data_2017(i,j)+2018.*data_2018(i,j))-((2015+2016+2017+2018).*(data_2015(i,j)+data_2016(i,j)+data_2017(i,j)+data_2018(i,j))/4))/((2015^2+2016^2+2017^2+2018^2) - ((2015+2016+2017+2018)^2)/4);
    B(i,j)=temp.*1;
    end
end
imshow(B,[]);%subplot(122);imshow(-B,[]);
colormap jet;colorbar();
csvwrite('D:\project\biyesheji\res\csv\new\trend_test\2015-2018年总AOD冬季变化趋势.csv',B);
disp('2015-2018年总AOD变化趋势 已保存！');
% clc;clear;
% %data=[18.484 	18.664 	18.280 	18.498 	17.995 	18.117 	18.154 	18.388 	18.619 	18.243 	18.401 	17.742 	18.236 	18.377 	18.322 	18.326 	18.319 	18.251 	18.345 	17.531 	17.849 	18.075 	18.724 	17.890 	18.140 	18.583 	18.490 	18.034 	18.110 	18.608 	18.055 	17.962 	18.439 	19.400 	18.700 	18.465 	18.689 	18.999 	18.756 	18.296 	18.672 	19.049 	18.974 	18.796 	19.526 	19.257 	18.678 	19.008 	19.358 ];
% Y={};B=[];c=[];
% Y{1,1}=csvread('D:\project\biyesheji\res\csv\new\2015年MERRA-2 有机碳AOD冬季均值.csv');
% Y{1,2}=csvread('D:\project\biyesheji\res\csv\new\2016年MERRA-2 有机碳AOD冬季均值.csv');
% Y{1,3}=csvread('D:\project\biyesheji\res\csv\new\2017年MERRA-2 有机碳AOD冬季均值.csv');
% Y{1,4}=csvread('D:\project\biyesheji\res\csv\new\2018年MERRA-2 有机碳AOD冬季均值.csv');
% [c,N]=size(Y);
% for j=1:N
%     y1=Y{1,j};
%     y2=Y{1,j};
%     [r,n]=size(y1);
%     for i=1:n
%        for j1=i+1:n
%            if y2(1,i) > y2(1,j1) 
%             t=y2(1,i);y2(1,i) = y2(1,j1);y2(1,j1)=t;
%            end
%        end
%     end
%     k=0;
%     for i=1:n
%         for j1=1:n
%             if y1(1,i)==y2(1,j1)
%                 k=k+1;
%                 c(1,k)=j1;
%                 break
%             end
%         end
%     end
%     s=0;
%     for i=1:n
%        s=s+(c(1,i)-i)^2;
%     end
%     B(j,1)=1 - (6 * s / (n ^ 3 - n));
% end
% disp('各时期秩相关系数为：')
% disp(B)