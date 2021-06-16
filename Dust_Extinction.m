% Sea Salt Extinction AOT [550 nm]
clear all; close all;
flist=dir('E:\@@@MODIS@@@\Dust_Extinction_AOT_550nm_PM_2.5\*.nc');
nfiles=length(flist);
dirpath=['E:\@@@MODIS@@@\Dust_Extinction_AOT_550nm_PM_2.5\'];

for N=1:nfiles
    filename=[dirpath flist(N).name];
    var1 = ncread(filename, 'SSEXTTAU');
    var1 = rot90(fliplr(var1));
    lats = ncread(filename, 'lat');
    lons = ncread(filename, 'lon');
    % <<<<<< Plot Data >>>>>>
    figure
    pcolor(lons,lats,var1(:,:,1));
    caxis([0 0.5])
    shading interp; %smoothing
    c = othercolor;
    colormap(othercolor('BuGy_8'))
    colorbar
    load coast
    hold on
    plot(long,lat,'black')
    xlabel 'Longitude (deg)'
    ylabel 'Latitude (deg)'
    set(gcf,'color','w');
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 0.7, 0.8]);
    set(gca, 'YDir', 'normal', 'XTick', [], 'YTick', []);
    if N==14
        set(gca,'YDir','normal','XTick',[145 160 175],'YTick',[-50 -42 -32]);
    end
    year=flist(N).name(28:33);
    %title(year)
    %title((year),'FontWeight','bold','fontsize',16);
    title({'Sea Salt Extinction AOT [550 nm] - PM 2.5'; (year)})
end




