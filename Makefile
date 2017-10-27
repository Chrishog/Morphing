test:	test.o	polynome.o
	gcc -cl -o obj/test.o src/test.c

polynome.o: polynome.c polynome.h 	#agir si les dates des deux derniers fichiers indiquent une modification
	gcc -Wall -c polynome.c
	
test.o: test.c	polynome.h
	gcc -Wall -c test.c
		
clean:
	rm -f test.o
	rm -f polynome.o
	rm -f test
	
