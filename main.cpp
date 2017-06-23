#include <iostream>
#include <list>
#include <progbase-cpp/net.h>

#include <request.h>
#include <response.h>
#include <writer.h>

using namespace std;
using namespace progbase::net;

#define BUFFER_LENGTH 10000

list<Writer*> createWriters();
void deletingList(list<Writer*> writers);

int main(void){
    list<Writer*> writers = createWriters();
	const int serverPort = 8082;
    TcpListener listener;
    NetMessage message(BUFFER_LENGTH);
    try {
        listener.bind(IpAddress("127.0.0.1", serverPort));
        listener.start();
        while (true) {
            cout << ">> Waiting for clients at: " << serverPort  << endl;
            TcpClient * client = listener.accept();
            client->receive(message);
            cout << ">> Received: " << endl << message.dataAsString() << endl;
            Request * req = new Request(message.dataAsString());
            Response * res = new Response(req, writers);
            message.setDataString(res->getMessage());
            client->send(message);
            cout << ">> Response is sent to the client" << endl;
            delete client;
            delete req;
            delete res;
        }
    } catch(NetException const & exc) {
        cerr << exc.what() << endl;
    }
    deletingList(writers);
    return 0;
}

list<Writer*> createWriters(){
    list<Writer*> writers = {};
    writers.push_back(new Writer(0, 27, "Alexandr", "Pushkin"));
    writers.push_back(new Writer(1, 45, "Lev", "Tolstoy"));
    writers.push_back(new Writer(2, 29, "Oscar", "Wild"));
    writers.push_back(new Writer(3, 32, "Jack", "London"));
    writers.push_back(new Writer(4, 42, "Somerset", "Moem"));
    writers.push_back(new Writer(5, 28, "Serheii", "Esenin"));
    writers.push_back(new Writer(6, 34, "Myhail", "Lermontov"));
    return writers;
}

void deletingList(list<Writer*> writers){
    list<Writer*>::iterator it;
    for (it = writers.begin(); it != writers.end(); it++){
        delete (*it);
    }
}
