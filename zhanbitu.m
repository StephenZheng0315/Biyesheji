%%% 占比图
clear all clc
ss=csvread('2015-2018年MERRA-2 硫酸盐AOD年均值.csv');
oc=csvread('2015-2018年MERRA-2 有机碳AOD年均值.csv');
dust=csvread('2015-2018年MERRA-2 沙尘AOD年均值.csv');
bc=csvread('2015-2018年MERRA-2 黑碳AOD年均值.csv');
sa=csvread('2015-2018年MERRA-2 海盐AOD年均值.csv');
%tot=csvread('2015-2018年MERRA-2 总AOD年均值.csv');
[a,b] = size(ss);
sszb=zeros(a,b);oczb=zeros(a,b);dustzb=zeros(a,b);bczb=zeros(a,b);sazb=zeros(a,b);
tot=zeros(a,b);
for ii = 1:a
    for jj = 1:b
        tot(ii,jj)=ss(ii,jj)+oc(ii,jj)+dust(ii,jj)+bc(ii,jj)+sa(ii,jj);
    end
end
for i = 1:a
    for j = 1:b
        sszb1(i,j) = ss(i,j)./tot(i,j);
        oczb1(i,j) = oc(i,j)./tot(i,j);
        dustzb1(i,j) = dust(i,j)./tot(i,j);
        bczb1(i,j) = bc(i,j)./tot(i,j);
        sazb1(i,j) = sa(i,j)./tot(i,j);
        %sazb(i,j) = 1-sszb1(i,j)-oczb1(i,j)-dustzb1(i,j)-bczb1(i,j);
    end
end
% csvwrite('2015-2018年MERRA-2 硫酸盐AOD占比.csv',sszb1);
% csvwrite('2015-2018年MERRA-2 有机碳AOD占比.csv',oczb1);
% csvwrite('2015-2018年MERRA-2 沙尘AOD占比.csv',dustzb1);
% csvwrite('2015-2018年MERRA-2 黑碳AOD占比.csv',bczb1);
% csvwrite('2015-2018年MERRA-2 海盐AOD占比.csv',sazb1);
subplot(2,3,1);imshow(sszb1);colormap(gca,'jet');colorbar
subplot(2,3,2);imshow(oczb1);colormap(gca,'jet');colorbar
subplot(2,3,3);imshow(dustzb1);colormap(gca,'jet');colorbar
subplot(2,3,4);imshow(bczb1);colormap(gca,'jet');colorbar
subplot(2,3,5);imshow(sazb1);colormap(gca,'jet');colorbar