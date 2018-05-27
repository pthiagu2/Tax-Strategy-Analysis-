/*Plot TAXP distribution across the clusters*/
proc freq data=census1.psam_h17_subset1_20clusters_agg;
tables WIF*Cluster;
run;