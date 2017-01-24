#!/bin/sh

cat \
lab_yp3_0.html \
lab_yp3_1.html \
lab_yp3_2.html \
lab_yp3_3.html \
lab_yp3_4.html \
lab_yp3_5.html \
lab_yp3_6.html \
lab_yp3_7.html \
lab_yp3_z.html \
> lab_yp3.html

aspell list < lab_yp3.html | sort -u > zzz_misspelled
