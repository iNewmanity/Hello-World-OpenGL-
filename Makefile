.DEFAULT_GOAL := build
program = helloWorld
all: clean build start
clean:
	@if [ -a $(program) ] ; \
	then \
		rm $(program) ; \
		echo "Cleaned previous build" ; \
	fi;
build:
	gcc $(program).c -o $(program) -lglut -lGL -lGLU
start:
	./$(program) &