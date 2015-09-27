
#include "Logger.hpp"


std::string _level::toString(_level::LogLevel level)
{
    switch(level)
    {
    case _level::SEVERE:
        return "SEVERE";;
    case _level::WARNING:
        return "WARNING";;
    case _level::INFO:
        return "INFO";;
    case _level::DEBUG:
        return "DEBUG";;
    case _level::FINE:
        return "FINE";;
    case _level::FINER:
        return "FINER";;
    case _level::FINEST:
        return "FINEST";;
    default:
        return "INFO";;
    }
}

_logger::Logger::Logger(string outFile, bool debug) 
{
    fileName=outFile;
    this->debug=debug;
    std::filebuf* buf = is.rdbuf();
    buf->open(fileName.c_str(),std::ios_base::out|std::ios_base::app);
    std::clog.rdbuf(buf);
}
_logger::Logger::Logger(const Logger& logger){}
_logger::Logger _logger::Logger::operator=(const Logger& logger){ /*Making Private*/ return *this;}
_logger::Logger::~Logger()
{}

std::string _logger::Logger::getFileName()
{
    return this->fileName;
}

std::string _logger::Logger::getDateTimeStamp()
{
    time_t rawtime = time(0);
    struct tm *timestruct = localtime(&rawtime);
    char * value = asctime(timestruct);
    char* replace = strchr(value,'\n') ;
    replace[0]='\0';
    return value;    
}


void _logger::Logger::log(_level::LogLevel level,string message)
{
    if (debug && level>_level::INFO)
        std::clog<<getDateTimeStamp()<<"\t"<<_level::toString(level)<<std::endl<<"\t"<<message<<std::endl;
    else if (level <= _level::INFO)
        std::clog<<getDateTimeStamp()<<"\t"<<_level::toString(level)<<" : "<<message<<std::endl;
}
        
_logger::Logger* _logger::Logger::logInstance = 0;