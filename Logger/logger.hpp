#ifndef LOGGER_HPP
#define LOGGER_HPP
#include <string>
#include <cstddef>

using namespace std;

namespace _Logger
{
class Logger
{
	private:
		static Logger *logInstance;
		static string fileName;
		Logger(string outFile) {fileName=outFile;}
		Logger(const Logger& logger){}
		Logger operator=(Logger logger){}
		~Logger(){}
	public:
		static Logger* getInstance(string outFile)
		{
			if (outFile != fileName) delete logInstance;
			if (!logInstance) Logger::logInstance = new Logger(outFile);
			return logInstance;
		}
		static string getFileName()
		{
			return fileName;
		}
};

string Logger::fileName="appout.log";
Logger* Logger::logInstance= new Logger(Logger::fileName);
}

#endif // LOGGER_HPP
