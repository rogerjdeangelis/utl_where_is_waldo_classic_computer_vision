AI computer vision problem - Where is Waldo

Python program that locates Waldo in a large image file

see
https://stackoverflow.com/questions/8849869/how-do-i-find-wally-with-python

profile luispedro
https://stackoverflow.com/users/248279/luispedro



My 'Where is Waldo' (from mahotas package)
https://www.dropbox.com/s/xf75n76cg718dah/DepartmentStore.jpg?dl=0

Solution
https://www.dropbox.com/s/gnx0lemhugchzub/Found_DepartmentStote.png?dl=0


* wando image gallery on web (if you want to experiment)
https://goo.gl/WYFBFT
https://www.google.com/search?q=where+is+waldo+images&tbm=isch&tbo=u&source=univ&sa=X&ved=0ahUKEwi_7q6InpbVAhXFFz4KHeYYBQUQsAQIJw&biw=1702&bih=936


HAVE
====

  Get an image or download the image at

     https://www.dropbox.com/s/xf75n76cg718dah/DepartmentStore.jpg?dl=0

  You can also use R or Python to download file

  %utl_submit_r64('
   source("c:/Program Files/R/R-3.3.2/etc/Rprofile.site",echo=T);
   download.file("https://www.dropbox.com/s/xf75n76cg718dah/DepartmentStore.jpg?raw=1","d:/jpg/DepartmentStore.jpg", mode="wb");
  ');


WANT
====

   https://www.dropbox.com/s/gnx0lemhugchzub/Found_DepartmentStote.png?dl=0

   or download

  %utl_submit_r64('
   source("c:/Program Files/R/R-3.3.2/etc/Rprofile.site",echo=T);
   download.file("https://www.dropbox.com/s/gnx0lemhugchzub/FoundDepartmentStore.png?raw=1","d:/png/FoundDepartmentStore.png", mode="wb");
  ');

*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;

%utl_submit_py64('
from pylab import imshow;
import numpy as np;
import matplotlib.pyplot as plt;
import mahotas;
wally = mahotas.imread("d:/jpg/DepartmentStore.jpg");
wfloat = wally.astype(float);
r,g,b = wfloat.transpose((2,0,1));
w = wfloat.mean(2);
pattern = np.ones((24,16), float);
for i in xrange(2):;
.    pattern[i::4] = -1;
v = mahotas.convolve(r-w, pattern);
mask = (v == v.max());
mask = mahotas.dilate(mask, np.ones((48,24)));
wally = .8*wally * ~mask[:,:,None];
plt.imsave("d:/png/FoundDepartmentStore.png", wally);
');


MPRINT(UTL_SUBMIT_PY64):  quit;
MLOGIC(UTL_SUBMIT_PY64):  %LET (variable name is _LOC)
MLOGIC(UTL_SUBMIT_PY64):  %PUT &_loc
SYMBOLGEN:  Macro variable _LOC resolves to e:\saswork\wrk\_TD5224_BEAST_\py_pgm.py
e:\saswork\wrk\_TD5224_BEAST_\py_pgm.py
SYMBOLGEN:  Macro variable _LOC resolves to e:\saswork\wrk\_TD5224_BEAST_\py_pgm.py
MPRINT(UTL_SUBMIT_PY64):   filename rut pipe "C:\Python_27_64bit/python.exe e:\saswork\wrk\_TD5224_BEAST_\py_pgm.py";
MPRINT(UTL_SUBMIT_PY64):   data _null_;
MPRINT(UTL_SUBMIT_PY64):   file print;
MPRINT(UTL_SUBMIT_PY64):   infile rut;
MPRINT(UTL_SUBMIT_PY64):   input;
MPRINT(UTL_SUBMIT_PY64):   put _infile_;
MPRINT(UTL_SUBMIT_PY64):   run;

NOTE: The infile RUT is:
      Unnamed Pipe Access Device,
      PROCESS=C:\Python_27_64bit/python.exe e:\saswork\wrk\_TD5224_BEAST_\py_pgm.py,
      RECFM=V,LRECL=384

NOTE: 0 lines were written to file PRINT.
NOTE: 0 records were read from the infile RUT.



