#include <iostream>
#include <cstdio>
#define __DEBUG__ 1
#include "Logger.hpp"

int main(int argc, char* argv[])
{
	_logger::Logger* logInstance = _logger::Logger::getInstance("test.log");
	//logInstance->log(_level::SEVERE,"Test 123");
	logInstance->log(_level::FINE,"Help");
	logInstance->log(_level::FINE,"Another Help");
	
	getchar();
	return 0;
}
