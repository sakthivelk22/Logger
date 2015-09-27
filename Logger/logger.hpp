#ifndef __LOGGER_HPP
#define __LOGGER_HPP

#ifndef __DEBUG__
#define __DEBUG__ 1
#endif

#include <string>
#include <cstddef>
#include <iostream>
#include <fstream>
#include <cstddef>
#include <ctime>
#include <cstring>

using namespace std;

namespace _level
{
enum LogLevel 
{ SEVERE, WARNING, INFO, DEBUG, FINE, FINER, FINEST};

string toString(LogLevel level);
}
namespace _logger
{

class Logger
{
	private:
		static Logger *logInstance;
		string fileName;
        bool debug;
		std::ifstream is;
		
		Logger(string outFile,bool debug) ;
		Logger(const Logger& logger);
		Logger operator=(const Logger& logger);
		~Logger();
	public:
		static Logger* getInstance(string outFile)
		{
         	if (logInstance && outFile != logInstance->getFileName()) 
			{
                    delete logInstance;
					logInstance = 0;
			}
		
			if (!logInstance) 
                if (__DEBUG__)
                    Logger::logInstance = new Logger(outFile,true);
                else
                    Logger::logInstance = new Logger(outFile,false);
                
			return logInstance;
		}
		string getFileName();		
		void log(_level::LogLevel level,string message);
		string getDateTimeStamp();
};


}

#endif // __LOGGER_HPP
