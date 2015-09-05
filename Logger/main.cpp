#include <iostream>
#include <cstdio>
#include "Logger.hpp"


int main(int argc, char* argv[])
{
	_logger::Logger* logInstance = _logger::Logger::getInstance("test.log");
	logInstance->log(_logger::SEVERE,"Test 123");
	logInstance->log(_logger::FINE,"Help");
	logInstance->log(_logger::FINE,"Another Help");
	
	getchar();
	return 0;
}
