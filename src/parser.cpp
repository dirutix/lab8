#include <parser.h>
#include <iostream>
#include <list>
#include <jansson.h>
#include <time.h>
#include <fstream>
#include <cctype>
#include <string>

using namespace std;

string getJsonServerInfo(){
    json_t * json = json_object();
    json_object_set_new(json, "title", json_string("Small database of my favourite writers"));
    json_object_set_new(json, "developer",json_string( "Dima Andrievskii"));
    
    time_t cur = time(0);
    tm* timeinfo = localtime(&cur);
    string timestr = string(asctime(timeinfo));
    const char * correct = timestr.erase(timestr.length() - 1, timestr.length()).c_str();

    json_object_set_new(json, "time", json_string(correct));
    char * str = json_dumps(json, JSON_INDENT(2) | JSON_PRESERVE_ORDER);
    string jsonString(str);
    free(str);
    json_decref(json);
    return jsonString;
}

string getJsonWriters(list<Writer*> writers){
    json_t * json = json_array();
    list<Writer*>::iterator it;
    for(it = writers.begin(); it != writers.end(); it++){
        json_t * writer = json_object();
        json_object_set_new(writer, "id", json_integer((*it)->getId()));
        json_object_set_new(writer, "age", json_integer((*it)->getAge()));
        json_object_set_new(writer, "name", json_string((*it)->getName().c_str()));
        json_object_set_new(writer, "surname", json_string((*it)->getSurname().c_str()));
        json_array_append(json, writer);
        json_decref(writer);
    }
    char * str = json_dumps(json, JSON_INDENT(2) | JSON_PRESERVE_ORDER);
    string jsonString(str);
    free(str);
    json_decref(json);
    return jsonString;
}

string getJsonWritersByKey_Val(list<Writer*> writers, string key, string value){
    json_t * json = json_array();
    bool is_found = false;
    list<Writer*>::iterator it;
    for(it = writers.begin(); it != writers.end(); it++){
        if((*it)->getValOfField(key) == value){
            is_found = true;
            json_t * writer = json_object();
            json_object_set_new(writer, "id", json_integer((*it)->getId()));
            json_object_set_new(writer, "age", json_integer((*it)->getAge()));
            json_object_set_new(writer, "name", json_string((*it)->getName().c_str()));
            json_object_set_new(writer, "surname", json_string((*it)->getSurname().c_str()));
            json_array_append(json, writer);
            json_decref(writer);
        } 
    }
    char * str = json_dumps(json, JSON_INDENT(2) | JSON_PRESERVE_ORDER);
    string jsonString(str);
    free(str);
    json_decref(json);
    if(is_found) return "Haven't been found'";
    return jsonString;
}

string getJsonFileInfo(string filePath){
    string fileContent = readFile(filePath.c_str());
    if (fileContent == "Haven't been found") {
        return fileContent;
    }
    json_t * json = json_object();
    json_object_set_new(json, "filename", json_string("data.txt"));
    json_object_set_new(json, "size(bytes)",json_integer(fileContent.size()));
    json_object_set_new(json, "content",  json_string(fileContent.c_str()));
    char * str = json_dumps(json, JSON_INDENT(2) | JSON_PRESERVE_ORDER);
    string jsonString(str);
    free(str);
    json_decref(json);
    return jsonString;
}


string getJsonFileExtreme(string filePath){
    string fileContent = readFile(filePath.c_str());
    if (fileContent == "Haven't been found") {
        return fileContent;
    }
    int i = 0;
    string max = "";
    string min = "Pneumonoultramicroscopicsilicovolcanoconiosis";//the longest English word has 45 symbols
    while (fileContent[i]){
        string word = "";
        while (!isspace(fileContent[i])){
            word += fileContent[i];
            i++;
        }
        if (word.length() < min.length()){
            min = word;
        } else if (word.length() > max.length()) max = word;
        i++;
    }
    json_t * json = json_object();
    json_object_set_new(json, "filename", json_string( "data.txt"));
    json_object_set_new(json, "word of max length",  json_string(max.c_str()));
    json_object_set_new(json, "word of min length", json_string(min.c_str()));
    
    char * str = json_dumps(json, JSON_INDENT(2) | JSON_PRESERVE_ORDER);
    string jsonString(str);
    free(str);
    json_decref(json);
    return jsonString;
}


string readFile(string filePath){
    string buf;
    string result = "";
    ifstream file (filePath);
    if (!file.is_open()){
        return "Haven't been found'";
    }
    while (!file.eof()){
        getline(file, buf);
        result += buf;
    }
    file.close();
    return result;
}