./bin/t: ./obj/main.o ./obj/t.o ./bin
	gcc ./obj/main.o ./obj/t.o -o ./bin/t

./obj/main.o: ./src/main.c ./obj
	gcc -c ./src/main.c -o ./obj/main.o -Wall

./obj/t.o: ./src/t.c ./obj
	gcc -c ./src/t.c -o ./obj/t.o -Wall

./bin: 
	mkdir bin

./obj: 
	mkdir obj

.PHONY: clean
clean:
	rm -f -r bin/ obj/
