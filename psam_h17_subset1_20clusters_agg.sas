/*Join additional variables from psam_h17 table for profiling*/
proc sql;
title '20 Cluster aggregated information for profiling';
create table census1.psam_h17_subset1_20clusters_agg as
select a.SERIALNO, a.CLUSTER, a.DISTANCE, a.HINCP, a.VALP, a.TAXP,
b.MV, b.NPF, b.WORKSTAT, b.WIF
from census1.psam_h17_subset1_20clusters as a left join census1.psam_h17 as b
on a.SERIALNO=b.SERIALNO;
run;