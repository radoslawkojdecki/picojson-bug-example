all: picojson-test.exe
clean: 
	rm -f picojson-test.exe test1.o test.o

picojson-test.exe:	test1.o test.o

%.exe:
	$(CXX) $^ $(LDFLAGS) -o $@
