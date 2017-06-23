/** 
    @file
    @brief Describing type writer
*/
#ifndef WRITER_H
#define WRITER_H

#include <iostream>

using namespace std;

/**
    @class Writer
    @brief defines writer as the abstract class
*/
class Writer{
    int id;
    int age;
    string name;
    string surname;
public:
    /**
        @brief default public constructor for Writer
    */
    Writer(int id, int age, string name, string surname);
    /**
        @brief default destructor
    */
    ~Writer();
    /**
        @brief get id of Writer
        @return the int of the id of Writer
    */
    int getId();
    /**
        @brief get age of Writer
        @return the int of the age of Writer
    */
    int getAge();
    /**
        @brief get name of Writer
        @return the string of the Writer's name
    */
    string getName();
    /**
        @brief get surname of Writer
        @return the string of the Writer's surname
    */
    string getSurname();
    /**
        @brief get data that contain the field of Writer
        @param field - string that defines field to return
        @return string that of data at the field
    */
    string getValOfField(string field);
};

#endif //WRITER_H