/*15% Increase level*/
proc sql;
update census1.psam_h17_subset1_cluster_agg3t
set TAXP_INCREASE=(TAXP_AVG*0.15)
where TAXP in (32,33,34,35,36,37,38,39,40,41);
run;
/*20% Increase level*/
proc sql;
update census1.psam_h17_subset1_cluster_agg3t
set TAXP_INCREASE=(TAXP_AVG*0.2)
where TAXP in (42,43,44,45,46,47,48,49,50,
51,52,53,54,55,56,57,58,59,60,61);
run;
/*25% Increase level*/
proc sql;
update census1.psam_h17_subset1_cluster_agg3t
set TAXP_INCREASE=(TAXP_AVG*0.25)
where TAXP in (62,63,64,65,66,67,68);
run;
/*Total Tax Increase*/
proc sql;
select sum(TAXP_INCREASE)
from census1.psam_h17_subset1_cluster_agg3t;
run;