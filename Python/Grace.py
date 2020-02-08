# I must clone myself, spawning my kid
SELF = '# I must clone myself, spawning my kid%cSELF = %r%cKID = %r%cCLONE = \'\'\'try:%c    with open(KID, "w") as kid:%c        kid.write(SELF %% (10,SELF,10,KID,10,10,10,10,10,10,10))%cexcept:%c    pass\'\'\'%c%cexec(CLONE)'
KID = 'Grace_kid.py'
CLONE = '''try:
    with open(KID, "w") as kid:
        kid.write(SELF % (10,SELF,10,KID,10,10,10,10,10,10,10))
except:
    pass'''

exec(CLONE)