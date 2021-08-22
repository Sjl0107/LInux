cc=gcc
bin=proc
file_list=main.o proc.o

$(bin):main.o proc.o
	$(cc) -o $@ $^
%.o:%.c
	$(cc) -c $<

.PHONY:clean
clean:
	rm -f $(file_list) $(bin)
