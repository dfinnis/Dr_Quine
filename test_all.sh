#### -- Dr Quine test all -- ####
printf "\E[H\E[2J" ## Clear screen

cd C
./test.sh
cd ../ASM/
./test.sh
cd ../Python/
./test.sh

echo "\x1b[1mAll Doctor Quine tests finished\x1b[0m\n"
