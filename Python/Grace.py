# I must clone myself, spawning my kid
SELF = 'Grace%c%r%c%r%cend'
KID = 'Grace_kid.py'
CLONE = '''try:
    with open(KID, "w") as kid:
        kid.write(SELF % (10, KID, 10, SELF, 10))
except:
    pass'''

exec(CLONE)