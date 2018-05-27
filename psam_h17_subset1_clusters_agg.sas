%macro sqlloop;
proc sql;
/*Loop through 20 times to create a table for each cluster*/
%DO k=1 %TO 20;
create table census1.psam_h17_subset1_cluster_agg&k. as
select *
from census1.psam_h17_subset1_20clusters_agg
where CLUSTER=&k.;
%END;
QUIT;
%mend;
%sqlloop;