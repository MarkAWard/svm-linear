CXXC = g++
CFLAGS = -Wall -O3  

all: svmlinear
  
svmlinear: svmlinear.cpp ssl.o
	$(CXXC) $(CFLAGS) svmlinear.cpp ssl.o -o svmlinear -lm
ssl.o: ssl.cpp ssl.h
	$(CXXC) $(CFLAGS) -c ssl.cpp
clean:
	rm -f *~ ssl.o svmlinear
