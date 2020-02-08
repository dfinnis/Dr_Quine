import os
import sys

def sully():
    try:
        x=5
        if sys.argv[0] == "Sully.py": x+=1
        filename="Sully_"+str(x-1)+".py"
        selfevolved='import os%cimport sys%c%cdef sully():%c    try:%c        x=%d%c        if sys.argv[0] == "Sully.py": x+=1%c        filename="Sully_"+str(x-1)+".py"%c        selfevolved=%r%c        with open(filename, "w") as child:%c            child.write(selfevolved %% (10,10,10,10,10,x-1,10,10,10,selfevolved,10,10,10,10,10,10,10,10,10))%c        if x < 2:%c            return%c        os.system(\'python3 \' + filename)%c    except:%c        return%csully()%c'
        with open(filename, "w") as child:
            child.write(selfevolved % (10,10,10,10,10,x-1,10,10,10,selfevolved,10,10,10,10,10,10,10,10,10))
        if x < 2:
            return
        os.system('python3 ' + filename)
    except:
        return
sully()
