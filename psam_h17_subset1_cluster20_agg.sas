/*Create #20 cluster table for analysis*/
proc sql;
title 'Cluster #20 aggregated information for profiling';
create table census1.psam_h17_subset1_cluster_20_agg as
select *
from census1.psam_h17_subset1_20clusters_agg
where CLUSTER=20;
run;