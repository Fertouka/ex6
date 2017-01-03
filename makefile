all: server.out client.out 

server.out: Server.o BFS.o Grid.o Matrix.o Node.o Point.o Cab.o Driver.o Listener.o LuxuryCab.o Notifier.o Passenger.o StandardCab.o TaxiCenter.o TransportationFlow.o Trip.o Socket.o Udp.o
	g++ Server.o BFS.o Grid.o Matrix.o Node.o Point.o Cab.o Driver.o Listener.o LuxuryCab.o Notifier.o Passenger.o StandardCab.o TaxiCenter.o TransportationFlow.o Trip.o Socket.o Udp.o -o server.out

client.out: Client.o BFS.o Grid.o Matrix.o Node.o Point.o Cab.o Driver.o Listener.o LuxuryCab.o Notifier.o Passenger.o StandardCab.o TaxiCenter.o TransportationFlow.o Trip.o Socket.o Udp.o
	g++ Client.o BFS.o Grid.o Matrix.o Node.o Point.o Cab.o Driver.o Listener.o LuxuryCab.o Notifier.o Passenger.o StandardCab.o TaxiCenter.o TransportationFlow.o Trip.o Socket.o Udp.o -o client.out


Client.o: Client.cpp
	g++ -c Client.cpp

Server.o: Server.cpp
	g++ -c Server.cpp

BFS.o: BFS.cpp
	g++ -c BFS.cpp

Grid.o: Grid.cpp
	g++ -c Grid.cpp

Matrix.o: Matrix.cpp
	g++ -c Matrix.cpp

Node.o: Node.cpp
	g++ -c Node.cpp

Point.o: Point.cpp
	g++ -c Point.cpp

Cab.o: Cab.cpp
	g++ -c Cab.cpp

Driver.o: Driver.cpp
	g++ -c Driver.cpp

Listener.o: Listener.cpp
	g++ -c Listener.cpp

LuxuryCab.o: LuxuryCab.cpp
	g++ -c LuxuryCab.cpp

Notifier.o: Notifier.cpp
	g++ -c Notifier.cpp

Passenger.o: Passenger.cpp
	g++ -c Passenger.cpp

StandardCab.o: StandardCab.cpp
	g++ -c StandardCab.cpp

TaxiCenter.o: TaxiCenter.cpp
	g++ -c TaxiCenter.cpp

TransportationFlow.o: TransportationFlow.cpp
	g++ -c TransportationFlow.cpp

Trip.o: Trip.cpp
	g++ -c Trip.cpp

Socket.o: Socket.cpp
	g++ -c Socket.cpp

Udp.o: Udp.cpp
	g++ -c Udp.cpp

clean:
	rm -f *.o a.out

