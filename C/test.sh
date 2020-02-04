#### -- Test -- ####
echo "\x1b[1mLaunching Dr Quine test...\x1B[0m\n"

colleen_cmd="clang -Wall -Wextra -Werror -o Colleen Colleen.c; ./Colleen > tmp_Colleen ; diff tmp_Colleen Colleen.c"
colleen_output=$(eval "$colleen_cmd")
if [ "$colleen_output" == "" ]
then
	echo "\x1b[32mC: Colleen\tOK\x1b[0m"
else
	echo "\x1b[31mC: Colleen\tERROR:\x1b[0m"
	echo "$colleen_output"
fi

grace_cmd="clang -Wall -Wextra -Werror -o Grace Grace.c; ./Grace ; diff Grace.c Grace_kid.c"
grace_output=$(eval "$grace_cmd")
if [ "$grace_output" == "" ]
then
	echo "\x1b[32mC: Grace\tOK\x1b[0m"
else
	echo "\x1b[31mC: Grace\tERROR:\x1b[0m"
	echo "$grace_output"
fi

rm Colleen
rm tmp_Colleen
rm Grace
rm Grace_kid.c

## To run:
## sh test.sh