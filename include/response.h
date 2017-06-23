/**
    @file
    @brief Wrapper for server response
*/
#ifndef RESPONSE_H
#define RESPONSE_H

#include <request.h>
#include <writer.h>
#include <iostream>
#include <list>

using namespace std;

/**
    @class Response
    @brief defines a server response
*/
class Response{
    string message;
public:
    /**
        @brief public constructor for Response that process vector of pets according to request
        @param request - Request from client to process data
        @param  writers - list of writers that processed according to request
    */
    Response(Request * request, list<Writer*> writers);

    /**
        @brief default public destructor for Response
    */
    ~Response();

    /**
        @brief get message from Response
        @return message that contained in Response
    */
    string getMessage();
};


#endif //RESPONSE_H