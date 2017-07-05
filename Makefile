all: sum_test

sum_test: main.o sum.o
	g++ -o sum_test main.o sum.o

main.o : sum.h main.c

sum.o : sum.h sum.c

clean:
	rm -f sum_test
	rm -f *.o
