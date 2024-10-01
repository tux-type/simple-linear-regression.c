test: test.o linear.o
	gcc -o test test.o linear.o -lm
	rm linear.o test.o

test.o: linear/test.c linear/linear.h
	gcc -c linear/test.c -lm

linear.o: linear/linear.c linear/linear.h
	gcc -c linear/linear.c -lm

clean:
	rm linear.o test.o

