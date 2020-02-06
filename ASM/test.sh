#### -- ASM Tests -- ####
echo "\x1b[1mLaunching ASM tests...\x1B[0m\n"

## nasm -f macho64 Colleen.s; gcc Colleen.o; ./a.out; rm Colleen.o a.out



# #### -- Colleen -- ####
# colleen_cmd="clang -Wall -Wextra -Werror -o Colleen Colleen.c; ./Colleen > tmp_Colleen ; diff tmp_Colleen Colleen.c"
# colleen_output=$(eval "$colleen_cmd")
# if [ "$colleen_output" == "" ]
# then
# 	echo "\x1b[32mC: Colleen\tOK\x1b[0m"
# else
# 	echo "\x1b[31mC: Colleen\tERROR:\x1b[0m"
# 	echo "$colleen_output"
# fi

# rm Colleen
# rm tmp_Colleen

# #### -- Grace -- ####
# grace_cmd="clang -Wall -Wextra -Werror -o Grace Grace.c; ./Grace ; diff Grace.c Grace_kid.c"
# grace_output=$(eval "$grace_cmd")
# if [ "$grace_output" == "" ]
# then
# 	echo "\x1b[32mC: Grace\tOK\x1b[0m"
# else
# 	echo "\x1b[31mC: Grace\tERROR:\x1b[0m"
# 	echo "$grace_output"
# fi

# rm Grace
# rm Grace_kid.c

# #### -- Sully -- ####
# sully_cmd="clang -Wall -Wextra -Werror Sully.c -o Sully ; ./Sully; ls -al | grep Sully | wc -l"
# sully_output=$(eval "$sully_cmd")

# diff_5="diff Sully.c Sully_5.c"
# diff_5_output=$(eval "$diff_5")

# diff_4="diff Sully.c Sully_4.c"
# diff_4_output=$(eval "$diff_4")
# diff_4_desired="6c6
# < 	int x=5;
# ---
# > 	int x=4;"

# diff_3="diff Sully.c Sully_3.c"
# diff_3_output=$(eval "$diff_3")
# diff_3_desired="6c6
# < 	int x=5;
# ---
# > 	int x=3;"

# diff_2="diff Sully.c Sully_2.c"
# diff_2_output=$(eval "$diff_2")
# diff_2_desired="6c6
# < 	int x=5;
# ---
# > 	int x=2;"

# diff_1="diff Sully.c Sully_1.c"
# diff_1_output=$(eval "$diff_1")
# diff_1_desired="6c6
# < 	int x=5;
# ---
# > 	int x=1;"

# diff_0="diff Sully.c Sully_0.c"
# diff_0_output=$(eval "$diff_0")
# diff_0_desired="6c6
# < 	int x=5;
# ---
# > 	int x=0;"

# if [ "$sully_output" == "      14" -a "$diff_5_output" == "" -a "$diff_4_output" == "$diff_4_desired"  -a "$diff_3_output" == "$diff_3_desired"  -a "$diff_2_output" == "$diff_2_desired"  -a "$diff_1_output" == "$diff_1_desired"  -a "$diff_0_output" == "$diff_0_desired" ]
# then
# 	echo "\x1b[32mC: Sully\tOK\x1b[0m"
# else
# 	echo "\x1b[31mC: Sully\tERROR:\x1b[0m"
# 	echo "$sully_output"
# 	echo "$diff_5_output"
# 	echo "$diff_4_output"
# 	echo "$diff_3_output"
# 	echo "$diff_2_output"
# 	echo "$diff_1_output"
# 	echo "$diff_0_output"
# fi

# rm Sully
# rm Sully_*

# ## To run:
# ## sh test.sh