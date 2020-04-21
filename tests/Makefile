# the compiler to use
CXX = clang++
# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -std=c++20 -stdlib=libc++ -g -Wall -Wextra -pedantic

src = $(wildcard *.cpp)
#obj = $(src:.cpp=.o)
out = $(src:.cpp=)

.PHONY: tests install clean

install: tests
	@ mkdir -p bin
	@ mv ${out} bin
	@ echo "done...now you can run the tests"

tests: ${out}

clean:
	@ rm -rf bin

${out}:
	${CXX} ${CFLAGS} $@.cpp -o $@
