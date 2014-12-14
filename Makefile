all: test

test: test.o
	g++ -o test test.o

test.o: test.cpp
	g++ -c -o test.o test.cpp

clean:
	rm -rf bin/test test.o
