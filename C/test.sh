##### -- Test -- #####
clang -Wall -Wextra -Werror -o Colleen Colleen.c; ./Colleen > tmp_Colleen ; diff tmp_Colleen Colleen.c
clang -Wall -Wextra -Werror -o Grace Grace.c; ./Grace ; diff Grace.c Grace_kid.c
##### To run:
##### sh test.sh