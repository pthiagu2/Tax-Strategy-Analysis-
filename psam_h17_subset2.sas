proc surveyselect data=census1.psam_h17_subset1
method=srs n=10000 out=census1.psam_h17_subset2;
run;
proc print data=census1.psam_h17_subset2(obs=20);
run;
proc contents data=census1.psam_h17_subset2;
run;
proc sgplot;
scatter y=HINCP x=VALP;
run;