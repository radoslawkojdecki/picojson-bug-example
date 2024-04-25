# picojson-bug-example

Bug can be reproduced on MacOS (Sonoma 14.4.1 but on earlier versions also occurs).


    MBA13-radek:picojson-bug-example radoslaw.kojdecki$ uname -a
    Darwin MBA13-radek.local 23.4.0 Darwin Kernel Version 23.4.0: Fri Mar 15 00:12:41 PDT 2024; root:xnu-10063.101.17~1/RELEASE_ARM64_T8103 arm64

    MBA13-radek:picojson-bug-example radoslaw.kojdecki$ make
    c++    -c -o test1.o test1.cc
    c++    -c -o test.o test.cc
    c++ test1.o test.o  -o picojson-test.exe
    MBA13-radek:picojson-bug-example radoslaw.kojdecki$ ./picojson-test.exe
    libc++abi: terminating due to uncaught exception of type std::runtime_error: 0
    Abort trap: 6

I have also verified it on the Rocky Linux 9.3

    [radoslaw.kojdecki@demo picojson-bug-example]$ cat /etc/system-release
    Rocky Linux release 9.3 (Blue Onyx)
    [radoslaw.kojdecki@demo picojson-bug-example]$ ./picojson-test.exe
    terminate called after throwing an instance of 'std::runtime_error'
      what():  0
    Aborted (core dumped)
