#include <response.h>
#include <parser.h>
#include <writer.h>


Response::~Response() {};

Response::Response(Request * request, list<Writer*> writers){
    string file = "/home/dima/Term2/progbase2/labs/lab8/data/data.txt";
    string headers = 
        "Server: Bakery\r\n"
        "Accept Ranges: bytes\r\n\r\n";
    string status = "";
    string content = "";
    string contentInfo = "";

    if(request->getMethod() == "GET"){
        if(request->getPath() == "/") content = getJsonServerInfo();
        else if(request->getPath() == "/favorites") content = getJsonWriters(writers);
        else if(request->getPath().find("/favorites?") != string::npos ||
                request->getPath().find("/favorites/") != string::npos) {
            content = getJsonWritersByKey_Val(writers, request->getKey(), request->getValue());
        } else if(request->getPath() == "/file") content = getJsonFileInfo(file);
        else if(request->getPath() == "/file/data") content = getJsonFileExtreme(file);
        else {
            content = "BAD PATH";
        }

        if(content != "BAD PATH"){
            status = "HTTP/1.1 200 OK\r\n";
            contentInfo = "Content-Type: json\r\n"
                          "Content-Length: " + to_string(content.length()) + "\r\n";
        } else {
            status = "HTTP/1.1 404 NOT FOUND\r\n";
            contentInfo = "Content-Type: text/txt\r\n"
                          "Content-Length: " + to_string(content.length()) + "\r\n";
        }
    } else {
        status = "HTTP/1.1 400 Bad Request\r\n";
    }
    message = status + headers + contentInfo + content;
}

string Response::getMessage(){ return message; }