CXX=g++
LD=ld
RM=rm -f
CXXFLAGS=--std=c++14 -Wall -g
LDLIBS=-lGLEW -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -lSOIL

build: hello_triangle

hello_triangle: hello_triangle.cpp ShaderProgram.hpp
	$(CXX) $(CXXFLAGS) $(LDLIBS) -o hello_triangle hello_triangle.cpp

clean:
	$(RM) hello_triangle
