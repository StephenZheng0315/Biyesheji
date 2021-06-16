[a1 b1]=size(AOE_Baotou.y2015);
[a2 b2]=size(AOE_Baotou.y2016);
[a3 b3]=size(AOE_Baotou.y2017);
[a4 b4]=size(AOE_Baotou.y2018);
clear b1 b2 b3 b4
Baotou_MERRA_2_AOD=zeros(a1+a2+a3+a4,2);
Baotou_MERRA_2_AOD(1:a1,1)=AOE_Baotou.y2015(:,1);
Baotou_MERRA_2_AOD(1:a1,2)=AOE_Baotou.y2015(:,2);
Baotou_MERRA_2_AOD(a1+1:a2+a1,1)=AOE_Baotou.y2016(:,1);
Baotou_MERRA_2_AOD(a1+1:a2+a1,1)=AOE_Baotou.y2016(:,2);
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
BEIJING_MERRA_2_AOD(a1+1:a2+a1,1)=BEIJING.y2016(:,2);
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
BEIJING_CAMS_MERRA_2_AOD(a1+1:a2+a1,1)=BEIJING_CAMS.y2016(:,2);
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
NAM_CO_MERRA_2_AOD(a1+1:a2+a1,1)=NAM_CO.y2016(:,2);
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
TAIHU_MERRA_2_AOD(a1+1:a2+a1,1)=Taihu.y2016(:,2);
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
XIANGHE_MERRA_2_AOD(a1+1:a2+a1,1)=XIANGHE.y2016(:,2);
XIANGHE_MERRA_2_AOD(a1+a2+1:a1+a2+a3,1)=XIANGHE.y2017(:,1);
XIANGHE_MERRA_2_AOD(a1+a2+1:a1+a2+a3,2)=XIANGHE.y2017(:,2);
XIANGHE_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,1)=XIANGHE.y2018(:,1);
XIANGHE_MERRA_2_AOD(a1+a2+a3+1:a3+a2+a1+a4,2)=XIANGHE.y2018(:,2);clear XIANGHE a1 a2 a3 a4 MainLChina_AOD SONET_HARBIN y2015_time y2018_time

dlmwrite('./Baotou_MERRA_2_AOD.csv',Baotou_MERRA_2_AOD,'precision','%.16f','newline','pc')
dlmwrite('./BEIJING_CAMS_MERRA_2_AOD.csv',BEIJING_CAMS_MERRA_2_AOD,'precision','%.16f','newline','pc')
dlmwrite('./BEIJING_MERRA_2_AOD.csv',BEIJING_MERRA_2_AOD,'precision','%.16f','newline','pc')
dlmwrite('./NAM_CO_MERRA_2_AOD.csv',NAM_CO_MERRA_2_AOD,'precision','%.16f','newline','pc')
dlmwrite('./TAIHU_MERRA_2_AOD.csv',TAIHU_MERRA_2_AOD,'precision','%.16f','newline','pc')
dlmwrite('./XIANGHE_MERRA_2_AOD.csv',XIANGHE_MERRA_2_AOD,'precision','%.16f','newline','pc')