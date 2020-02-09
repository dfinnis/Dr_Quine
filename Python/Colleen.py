# whoami?
def self():
    return '# whoami?%cdef self():%c    return %r%cdef main():%c    # I must express myself%c    print(self() %% (10,10,self(),10,10,10,10,10))%c%cmain()'
def main():
    # I must express myself
    print(self() % (10,10,self(),10,10,10,10,10))

main()
