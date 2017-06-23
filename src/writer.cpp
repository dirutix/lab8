#include <writer.h>

Writer::Writer(int id, int age, string name, string surname){
    this->id = id;
    this->age = age;
    this->name = name;
    this->surname = surname;
}

Writer::~Writer(){};

int Writer::getId(){return id;}
int Writer::getAge(){return age;}
string Writer::getName(){return name;}
string Writer::getSurname(){return surname;}
string Writer::getValOfField(string field){
    if (!field.compare("id")) return to_string(id);
    if (!field.compare("age")) return to_string(age);
    if (!field.compare(name)) return name;
    if (!field.compare(surname)) return surname;
    return "No Such Field";
}