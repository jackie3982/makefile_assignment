CC=g++
CFLAGS=-g -Wall -Wextra

employee: Employee.o main.o Officer.o Supervisor.o
	$(CC) $(CFLAGS) -o employee Employee.o main.o Officer.o Supervisor.o

Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp

main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp

Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp

Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp

clean:
	rm *.o employee *~
