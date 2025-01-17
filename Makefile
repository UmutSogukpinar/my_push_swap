NAME = push_swap

SRCS_DIR = ./srcs
SORT_DIR = ./srcs/sort
STACK_DIR = ./srcs/stack
OPR_DIR = ./srcs/operations

LIB_DIR = ./libs
OBJ_DIR = ./objs

SOURCES =	$(SRCS_DIR)/main.c \
			$(SRCS_DIR)/shut.c \
			$(SRCS_DIR)/init.c \
			$(SRCS_DIR)/helpers.c \
			$(SRCS_DIR)/helpers_two.c \
			$(SRCS_DIR)/helpers_three.c \
			$(OPR_DIR)/actions.c \
			$(OPR_DIR)/push.c \
			$(OPR_DIR)/swap.c \
			$(OPR_DIR)/rotate.c \
			$(OPR_DIR)/reverse_rotate.c \
			$(STACK_DIR)/list_utils.c \
			$(STACK_DIR)/stack_utils.c \
			$(STACK_DIR)/stack_utils_two.c \
			$(SORT_DIR)/sort.c \
			$(SORT_DIR)/sort_mini.c \
			$(SORT_DIR)/is_sorted.c \
			$(SORT_DIR)/update_way.c \
			$(SORT_DIR)/resend/optimum_resend.c \
			$(SORT_DIR)/resend/resend.c \
			$(SORT_DIR)/turk/sort_default.c \
			$(SORT_DIR)/turk/optimum.c \
			$(SORT_DIR)/turk/create_way.c \
			$(SORT_DIR)/execute/execute.c \
			$(SORT_DIR)/execute/minimize_case.c \
			$(SORT_DIR)/execute/minimize_list.c \

OBJS = $(SOURCES:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror -Iincludes -Ilibs/libft -Ilibs/printf -g -fsanitize=address

RM = rm -rf

ARGS = 4027 5271 4762 6610 9790 5951 8245 5013 6273 8093 2508 871 691 4887 1993 7215 5268 705 1732 5613 4510 6443 3406 9848 1161 7421 8132 3924 1431 7178 1564 9773 7460 6925 851 345 115 6069 443 8066 1288 7112 1211 7953 1443 9674 6110 4990 900 3427 7504 6311 6553 5394 8301 264 4680 2623 2808 4205 5354 7096 5265 9762 2226 3499 2441 3116 7456 1723 1675 4229 1951 4212 3408 1780 3929 2078 565 8539 7919 4489 4979 9210 1678 1884 7673 8737 2940 4800 2321 219 3263 1478 1917 4546 45 5031 6188 1335 508 6368 6942 6344 7855 9404 8081 6037 3967 916 9966 1970 1350 6894 7781 2769 6366 6650 9735 9874 7363 7769 2196 9312 7811 7576 984 7642 3397 9217 8291 3935 4409 9836 2009 1018 6816 3979 6788 302 2524 3872 4047 3780 3953 6031 1384 7672 6847 5788 6688 4306 1201 310 83 8613 7652 3418 2917 7900 6474 2804 3824 899 8926 6801 9339 9220 2872 7004 1968 8251 2145 4216 7065 2348 7278 6265 4727 7196 2796 1212 2752 5690 9990 805 8062 4829 599 2870 3212 6956 6853 5833 6738 1077 4043 5110 8875 6236 8024 6597 7207 3982 9486 5652 6032 309 6004 9595 918 3054 558 7214 9423 2243 2886 1924 1725 8962 8363 4839 1837 6841 2415 2310 4337 7223 3294 4067 6530 2074 3641 7541 3161 1635 3287 5068 2315 6159 169 14 7269 4035 5237 9742 1489 5452 375 7880 2803 6778 7824 371 2800 4695 1851 1930 7277 6511 1245 6877 1111 3474 2767 675 4701 6696 4700 9573 7103 5663 8548 3136 7370 2582 5443 1846 5868 4303 1192 4871 522 7860 3707 1009 4773 4194 7896 8281 3568 9862 3811 7240 9388 547 8097 3777 8537 4796 5159 9359 7849 5316 724 220 4537 9376 7198 4863 690 601 9785 3046 4565 133 4614 2627 3591 1550 7288 7495 3439 5760 3165 4925 8392 7544 8570 8050 4513 3507 9268 6809 487 6950 2423 47 5088 404 9885 2120 4039 3386 5642 1885 4271 159 9071 5902 9258 5866 8596 881 9527 362 1579 8101 5825 1556 7879 3638 1713 536 75 1065 1324 2452 5234 4849 7580 1955 6573 2434 3895 5168 3225 4534 9671 8214 1963 7292 8546 2058 3300 7737 8358 25 2066 257 765 6940 5576 9737 5353 3650 8468 304 6498 6376 7071 4821 149 8426 3121 1360 7607 9184 2072 1665 7836 1051 8239 4985 8865 4149 1704 6158 7475 4310 6786 8233 6101 6420 6855 5187 9538 1427 576 6389 1368 2942 263 6421 7549 2559 6082 6316 4150 654 5651 5880 5298 2980 5551 4788 3142 8009 9619 4055 8966 3738 4460 7684 631 5459 4102 6522 6555 1101 4022 5984 9635 9457 5852 8049 7083 560 7117 6002 6209 1214 6882 2946 671 8141 4347 5197 9936 5858 8021 9422 3620 9764 4541 6661 6123 7357 2087 1108 7821 1871 2124 6646 1709 3735 259 3737 4919 4810
ARGS2 = 3 4 1 51 213 525 52 4027 5271 4762 6610 9790 5951 8245 5013 6273 

all: ${NAME}

${NAME}: ${OBJS}
	${MAKE} -C ./libs/printf
	${MAKE} -C ./libs/libft
	${CC} ${CFLAGS} ${OBJS} ${LIB_DIR}/printf/libftprintf.a ${LIB_DIR}/libft/libft.a  -o ${NAME}

clean: 
	${MAKE} -C ${LIB_DIR}/printf fclean
	${MAKE} -C ${LIB_DIR}/libft fclean
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all

run: ${NAME}
	./${NAME} $(ARGS)

test2:				$(NAME)	
					$(eval ARG = $(shell shuf -i 0-100 -n 2))
					./push_swap $(ARG) | ./checker_linux $(ARG)
					@echo -n "Instructions: "
					@./push_swap $(ARG) | wc -l

test3:				$(NAME)	
					$(eval ARG = $(shell shuf -i 0-100 -n 3))
					./push_swap $(ARG) | ./checker_linux $(ARG)
					@echo -n "Instructions: "
					@./push_swap $(ARG) | wc -l

test5:				$(NAME)	
					$(eval ARG = $(shell shuf -i 0-5000 -n 5))
					./push_swap $(ARG) | ./checker_linux $(ARG)
					@echo -n "Instructions: "
					@./push_swap $(ARG) | wc -l

test100:			$(NAME)	
					$(eval ARG = $(shell shuf -i 0-5000 -n 100))
					./push_swap $(ARG) | ./checker_linux $(ARG)
					@echo -n "Instructions: "
					@./push_swap $(ARG) | wc -l

test500:			$(NAME)	
					$(eval ARG = $(shell shuf -i 0-5000 -n 500))
					./push_swap $(ARG) | ./checker_linux $(ARG)
					@echo -n "Instructions: "
					@./push_swap $(ARG) | wc -l

valgrind:			$(NAME)	
					$(eval ARG = $(shell shuf -i 0-5000 -n 100))
					valgrind ./push_swap $(ARG)
	

.PHONY: all clean fclean re run valgrind test2 test3 test5 test100 test5
