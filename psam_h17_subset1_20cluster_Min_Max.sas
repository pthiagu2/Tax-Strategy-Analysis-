/*Get Min and Max VALP HINCP values by cluster*/
proc sql;
title 'Mean, Min and Max VALP HINCP values by cluster';
create table census1.psam_h17_subset1_20clus_min_max as
select CLUSTER,
Mean(HINCP) as HINCP_Mean, Min(HINCP) as HINCP_Min, Max(HINCP) as HINCP_Max,
Mean(VALP) as VALP_Mean, Min(VALP) as VALP_Min, Max (VALP) as VALP_Max
from census1.psam_h17_subset1_20clusters_agg group by CLUSTER;
run;