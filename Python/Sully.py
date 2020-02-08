import os

def sully():
    try:
        # decrement x if sully_5.py exists
        x=5
        filename="Sully_"+str(x-1)+".py"
        selfevolved='import os%c%cdef sully():%c    try:%c        x=%d%c        filename="Sully_"+str(x-1)+".py"%c        selfevolved=%r%c        with open(filename, "w") as child:%c            child.write(selfevolved %% (10,10,10,10,x-1,10,10,selfevolved,10,10,10,10,10,10,10,10,10,10))%c        if x <= 0:%c            return%c        os.system(\'python3 \' + filename)%c    except:%c        return%c%csully()%c'
        with open(filename, "w") as child:
            child.write(selfevolved % (10,10,10,10,x-1,10,10,selfevolved,10,10,10,10,10,10,10,10,10,10))
        if x <= 0:
            return
        os.system('python3 ' + filename)
    except:
        return
sully()
