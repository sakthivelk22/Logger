#include <iostream>
#include <cstdio>
#include "Logger.hpp"

int main(int argc, char* argv[])
{
	cout<<_Logger::Logger::getFileName();
	_Logger::Logger::getInstance("test.log");
	getchar();
	return 0;
}
