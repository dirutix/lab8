#include <request.h>
#include <iostream>
#include <cctype>

using namespace std;

Request::Request(){
    method = "";
    path = "";
    key = "";
    value = "";
}

Request::Request(string request){
    //find method
    size_t endMethod = request.find(" ");
    method = string(request, 0, endMethod);
    //find path
    size_t endPath = request.find(" HTTP/1.");
    string fpath = string(request, endMethod + 1, endPath - endMethod - 1);
    path = fpath;
    //parse path
    size_t quest = path.find("?");
    size_t equal = path.find("=");
    if(quest != string::npos && equal != string::npos){
        key = string(fpath, quest + 1, equal - quest - 1);
        value = string(path, equal + 1, path.length() - equal);
    } else {
        size_t slash = path.find("/", 1);
        key = "id";
        value = string(path, slash + 1, path.length() - slash);
    }
}

Request::~Request(){}

string Request::getMethod() { return method; }
string Request::getPath(){ return path; }
string Request::getKey(){ return key; }
string Request::getValue(){ return value; }
