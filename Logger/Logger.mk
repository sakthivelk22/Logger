##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Logger
ConfigurationName      :=Debug
WorkspacePath          := "F:\CodeBase"
ProjectPath            := "F:\CodeBase\Logger\Logger"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=User
Date                   :=27/09/2015
CodeLitePath           :="C:\Program Files\CodeLite"
LinkerName             :=C:/TDM_GCC_MINGW/bin/g++.exe
SharedObjectLinkerName :=C:/TDM_GCC_MINGW/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Logger.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/TDM_GCC_MINGW/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/TDM_GCC_MINGW/bin/ar.exe rcu
CXX      := C:/TDM_GCC_MINGW/bin/g++.exe
CC       := C:/TDM_GCC_MINGW/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/TDM_GCC_MINGW/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:="C:\Program Files\CodeLite"
UNIT_TEST_PP_SRC_DIR:="C:\UNITTEST_CPP"
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/logger.cpp$(ObjectSuffix) $(IntermediateDirectory)/TEST.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "F:/CodeBase/Logger/Logger/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM "main.cpp"

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) "main.cpp"

$(IntermediateDirectory)/logger.cpp$(ObjectSuffix): logger.cpp $(IntermediateDirectory)/logger.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "F:/CodeBase/Logger/Logger/logger.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/logger.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/logger.cpp$(DependSuffix): logger.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/logger.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/logger.cpp$(DependSuffix) -MM "logger.cpp"

$(IntermediateDirectory)/logger.cpp$(PreprocessSuffix): logger.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/logger.cpp$(PreprocessSuffix) "logger.cpp"

$(IntermediateDirectory)/TEST.cpp$(ObjectSuffix): TEST.cpp $(IntermediateDirectory)/TEST.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "F:/CodeBase/Logger/Logger/TEST.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/TEST.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/TEST.cpp$(DependSuffix): TEST.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/TEST.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/TEST.cpp$(DependSuffix) -MM "TEST.cpp"

$(IntermediateDirectory)/TEST.cpp$(PreprocessSuffix): TEST.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/TEST.cpp$(PreprocessSuffix) "TEST.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


