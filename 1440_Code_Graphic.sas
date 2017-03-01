ods html dpi = 1200;
ods pdf dpi = 1200 file = "C:\tiff\graph.pdf";
ods rtf dpi = 1200 file = "C:\tiff\graph.doc";
ods graphics on / reset noborder;
proc sgplot data = test.graphdata;
reg x=year y=ageper1 / lineattrs = (color = black  pattern = dashdotdot) 
markerattrs = (symbol = trianglefilled color = black) 
legendlabel = "1-4 Years of Age";

reg x=year y=ageper2 / lineattrs = (color = black  pattern = dash) 
markerattrs = (symbol = circlefilled color = black) 
legendlabel = "5-9 Years of Age";

reg x=year y=ageper3 / lineattrs = (color = black  pattern = dot) 
markerattrs = (symbol = squarefilled color = black) 
legendlabel = "10-14 Years of Age";

reg x=year y=ageper4 / lineattrs = (color = black  pattern = longdash) 
markerattrs = (symbol = starfilled color = black) 
legendlabel = "15-18 Years of Age";

xaxis valueattrs = (family = arial size = 12pt) 
discreteorder=data values=(1997 2000 2003 2006 2009 2012) 
label = "Year" labelattrs = (size =12pt);

yaxis valueattrs = (family = arial size = 12pt) 
label = "Percent (%) of Stroke Discharges by Age" 
labelattrs = (size =12pt) values =(00 05 10 15 20 25 30 35 40 45 50 55 60);

keylegend / noborder location = outside position = bottomleft 
valueattrs = (family = arial size = 12pt);

run;
ods pdf close;
ods rtf close;
