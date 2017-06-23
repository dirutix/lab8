/**
    @file
    @brief Json parser for responce strings
*/
#ifndef PARSER_H
#define PARSER_H

#include <iostream>
#include <list>
#include <writer.h>

using namespace std;

/**
    @brief get server information
    @return return Json string of server information
*/
string getJsonServerInfo();

/**
    @brief get Writers converted to JSon string
    @param writers - list of all Writers
    @return Json string of Writers
*/
string getJsonWriters(list<Writer*> writers);

/**
    @brief get all Writers with values that match chosen key
    @param writers - list of writers 
    @param key - field of struct Writer
    @param value - content of the field to search
    @return 
*/
string getJsonWritersByKey_Val(list<Writer*> writers, string key, string value);

/**
    @brief get information about file
    @param filePath - path to file
    @return Json string that contain information about file
*/
string getJsonFileInfo(string filePath);

/**
    @brief get extremums of words in file
    @param filePath - path to file
    @return Json string that contain extremums
*/
string getJsonFileExtreme(string filePath);

/**
    @brief help function to read file
    @param filePath - path to file
    @return string content of file
*/
string readFile(string filePath);

#endif //PARSER_H