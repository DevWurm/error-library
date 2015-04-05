ifeq	($(OS),Windows_NT)
all:
	mkdir Binary
	g++ .\Source\error.cpp -std=c++11 -c -o .\Binary\error_windows.o
	mkdir lib
	copy .\Headers\error.h .\lib\liberror.h
	ar rs .\lib\liberror_windows.a .\Binary\error_windows.o
	ranlib  .\lib\liberror_windows.a
else	
all:	source
	mkdir lib
	cp ./Headers/error.h ./lib/
	mv ./lib/error.h ./lib/liberror.h
	ar rs ./lib/liberror.a ./Binary/error.o

source:
	mkdir Binary
	g++ ./Source/error.cpp -std=c++11 -c -o ./Binary/error.o
endif

