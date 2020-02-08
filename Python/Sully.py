def sully():
    try:
        x=5
        if x <= 0:
            return
        filename="Sully_"+str(x-1)+".py"
        selfevolved='def sully():%c    try:%c        x=%d%c        if x <= 0:%c            return%c        filename="Sully_"+str(x-1)+".py"%c        selfevolved=%r%c        with open(filename, "w") as child:%c            child.write(selfevolved %% (10,10,x-1,10,10,10,10,selfevolved,10,10,10,10,10,10,10))%c    except:%c        return%c%csully()%c'
        with open(filename, "w") as child:
            child.write(selfevolved % (10,10,x-1,10,10,10,10,selfevolved,10,10,10,10,10,10,10))
    except:
        return

sully()
