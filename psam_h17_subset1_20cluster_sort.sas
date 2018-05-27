proc sort data=census1.psam_h17_subset1_20clusters_stat;
by descending OVER_ALL;
run;
/*print the sorted data by cluster population*/
proc print;
var CLUSTER VALP HINCP OVER_ALL;
WHERE _TYPE_ = "FREQ";
title2 '20-cluster solution sorted by population';
run;
/*plot the seed values per cluster*/
proc sgplot;
scatter y=HINCP x=VALP / group=cluster;
WHERE _TYPE_ = "SEED";
title ’ACS PUMS 2013 1 YR 20-Cluster Analysis - Means’;
title2 ’of Data Containing Property Value and Household Income’;
run;