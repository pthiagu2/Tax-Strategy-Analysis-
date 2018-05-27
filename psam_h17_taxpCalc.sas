proc sql;
create table census1.psam_h17_subset1_cluster_agg3t as
select a.*, b.TAXP_AVG, (b.TAXP_AVG*0.1) as TAXP_INCREASE
from census.psam_h17_subset1_cluster_agg3 as a left join
census.taxp_lookup as b
on a.TAXP=b.TAXP
WHERE a.HINCP > 100000
and a.TAXP not in (01,02,03,04,05,06,07,08,09,10
,11,12,13,14,15,16,17,18,19,20,21)
and VALP is not null;
run;