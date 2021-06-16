newfile = netcdf.create("yyyy.nc","NC_SHARE")

dimlat = netcdf.defDim(newfile,"lat",79*96)
dimlon = netcdf.defDim(newfile,"lon",79*96)
dimheight = netcdf.defDim(newfile,"height",79*96)

lat = netcdf.defVar(newfile,"varlat","double",dimlat);
lon = netcdf.defVar(newfile,"varlon","float",dimlon)
value = netcdf.defVar(newfile,"varheight","float",dimheight)

netcdf.endDef(newfile)

netcdf.putVar(newfile,lat,Lat)
netcdf.putVar(newfile,lon,Lon)
netcdf.putVar(newfile,value,A)

netcdf.close(newfile)
