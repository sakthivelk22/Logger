#include "TEST.hpp"

namespace _test
{

TEST::TEST()
{
    _logger::Logger* logst = _logger::Logger::getInstance("test.log");
    	logst->log(_level::SEVERE,"Test1 123");
	logst->log(_level::FINE,"test Help");
	logst->log(_level::FINE,"test Another Help");
	

}

TEST::~TEST()
{
}


}

