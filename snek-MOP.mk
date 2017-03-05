##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Simulator
ProjectName            :=snek-MOP
ConfigurationName      :=Simulator
WorkspacePath          :=/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju
ProjectPath            :=/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP
IntermediateDirectory  :=./Simulator
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Grace Hopper
Date                   :=05/03/17
CodeLitePath           :=/home/grace/.codelite
LinkerName             :=/usr/local/gcc-arm/bin/arm-none-eabi-g++
SharedObjectLinkerName :=/usr/local/gcc-arm/bin/arm-none-eabi-g++ -shared -fPIC
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).elf
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="snek-MOP.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -nostartfiles -T$(ProjectPath)/md407-ram.x
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)../../Flisp/libMD407 $(IncludeSwitch)../../Flisp/lib_labb 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)c_nano $(LibrarySwitch)MD407 $(LibrarySwitch)_labb 
ArLibs                 :=  "c_nano" "MD407" "_labb" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi/lib/armv6-m $(LibraryPathSwitch)$(CodeLiteDir)/tools/gcc-arm/lib/gcc/arm-none-eabi/5.4.1/armv6-m $(LibraryPathSwitch)../../Flisp/libMD407/Simulator $(LibraryPathSwitch)../../Flisp/lib_labb/Simulator 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/local/gcc-arm/bin/arm-none-eabi-ar rcu
CXX      := /usr/local/gcc-arm/bin/arm-none-eabi-g++
CC       := /usr/local/gcc-arm/bin/arm-none-eabi-gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall -mthumb -march=armv6-m -msoft-float -Wa,-adhln=test.s -Wno-main $(Preprocessors)
ASFLAGS  := 
AS       := /usr/local/gcc-arm/bin/arm-none-eabi-as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IntermediateDirectory)/libMD407.c$(ObjectSuffix) 



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

PostBuild:
	@echo Executing Post Build commands ...
	arm-none-eabi-objcopy -S -O srec  ./Simulator/snek-MOP.elf ./Simulator/snek-MOP.s19
	@echo Done

MakeIntermediateDirs:
	@test -d ./Simulator || $(MakeDirCommand) ./Simulator


$(IntermediateDirectory)/.d:
	@test -d ./Simulator || $(MakeDirCommand) ./Simulator

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/startup.c$(ObjectSuffix): startup.c $(IntermediateDirectory)/startup.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/startup.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/startup.c$(DependSuffix): startup.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/startup.c$(ObjectSuffix) -MF$(IntermediateDirectory)/startup.c$(DependSuffix) -MM startup.c

$(IntermediateDirectory)/startup.c$(PreprocessSuffix): startup.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/startup.c$(PreprocessSuffix) startup.c

$(IntermediateDirectory)/libMD407.c$(ObjectSuffix): libMD407.c $(IntermediateDirectory)/libMD407.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/libMD407.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/libMD407.c$(DependSuffix): libMD407.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/libMD407.c$(ObjectSuffix) -MF$(IntermediateDirectory)/libMD407.c$(DependSuffix) -MM libMD407.c

$(IntermediateDirectory)/libMD407.c$(PreprocessSuffix): libMD407.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/libMD407.c$(PreprocessSuffix) libMD407.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Simulator/


