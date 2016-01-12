CXX=g++
LD=ld
RM=rm -f
CXXFLAGS=--std=c++14 -Wall -g
LDLIBS=-lGLEW -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -lSOIL

build: app

app: app.cpp ShaderProgram.hpp
	$(CXX) $(CXXFLAGS) $(LDLIBS) -o app app.cpp

clean:
	$(RM) app
