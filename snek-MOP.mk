##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=snek-MOP
ConfigurationName      :=Debug
WorkspacePath          :=/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju
ProjectPath            :=/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP
IntermediateDirectory  :=./Debug
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
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)c_nano $(LibrarySwitch)MD407 $(LibrarySwitch)_labb 
ArLibs                 :=  "c_nano" "MD407" "_labb" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi/lib/armv6-m $(LibraryPathSwitch)$(CodeLiteDir)/tools/gcc-arm/lib/gcc/arm-none-eabi/5.4.1/armv6-m 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/local/gcc-arm/bin/arm-none-eabi-ar rcu
CXX      := /usr/local/gcc-arm/bin/arm-none-eabi-g++
CC       := /usr/local/gcc-arm/bin/arm-none-eabi-gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -mthumb -Wall -march=armv6-m -msoft-float -Wa,-adhln=test.s $(Preprocessors)
ASFLAGS  := 
AS       := /usr/local/gcc-arm/bin/arm-none-eabi-as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/grafikDisp.c$(ObjectSuffix) $(IntermediateDirectory)/keypad.c$(ObjectSuffix) $(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IntermediateDirectory)/irq_delay.c$(ObjectSuffix) $(IntermediateDirectory)/delay.c$(ObjectSuffix) $(IntermediateDirectory)/ascii.c$(ObjectSuffix) $(IntermediateDirectory)/grafikDisp.c$(ObjectSuffix) $(IntermediateDirectory)/keypad.c$(ObjectSuffix) $(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IntermediateDirectory)/irq_delay.c$(ObjectSuffix) \
	$(IntermediateDirectory)/delay.c$(ObjectSuffix) $(IntermediateDirectory)/ascii.c$(ObjectSuffix) $(IntermediateDirectory)/libMD407.c$(ObjectSuffix) 



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
	arm-none-eabi-objcopy -S -O srec  ./Debug/snek-MOP.elf ./Debug/snek-MOP.s19
	@echo Done

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/grafikDisp.c$(ObjectSuffix): grafikDisp.c $(IntermediateDirectory)/grafikDisp.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/grafikDisp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/grafikDisp.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/grafikDisp.c$(DependSuffix): grafikDisp.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/grafikDisp.c$(ObjectSuffix) -MF$(IntermediateDirectory)/grafikDisp.c$(DependSuffix) -MM grafikDisp.c

$(IntermediateDirectory)/grafikDisp.c$(PreprocessSuffix): grafikDisp.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/grafikDisp.c$(PreprocessSuffix) grafikDisp.c

$(IntermediateDirectory)/keypad.c$(ObjectSuffix): keypad.c $(IntermediateDirectory)/keypad.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/keypad.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/keypad.c$(DependSuffix): keypad.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/keypad.c$(ObjectSuffix) -MF$(IntermediateDirectory)/keypad.c$(DependSuffix) -MM keypad.c

$(IntermediateDirectory)/keypad.c$(PreprocessSuffix): keypad.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/keypad.c$(PreprocessSuffix) keypad.c

$(IntermediateDirectory)/startup.c$(ObjectSuffix): startup.c $(IntermediateDirectory)/startup.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/startup.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/startup.c$(DependSuffix): startup.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/startup.c$(ObjectSuffix) -MF$(IntermediateDirectory)/startup.c$(DependSuffix) -MM startup.c

$(IntermediateDirectory)/startup.c$(PreprocessSuffix): startup.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/startup.c$(PreprocessSuffix) startup.c

$(IntermediateDirectory)/irq_delay.c$(ObjectSuffix): irq_delay.c $(IntermediateDirectory)/irq_delay.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/irq_delay.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/irq_delay.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/irq_delay.c$(DependSuffix): irq_delay.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/irq_delay.c$(ObjectSuffix) -MF$(IntermediateDirectory)/irq_delay.c$(DependSuffix) -MM irq_delay.c

$(IntermediateDirectory)/irq_delay.c$(PreprocessSuffix): irq_delay.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/irq_delay.c$(PreprocessSuffix) irq_delay.c

$(IntermediateDirectory)/delay.c$(ObjectSuffix): delay.c $(IntermediateDirectory)/delay.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/delay.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/delay.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/delay.c$(DependSuffix): delay.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/delay.c$(ObjectSuffix) -MF$(IntermediateDirectory)/delay.c$(DependSuffix) -MM delay.c

$(IntermediateDirectory)/delay.c$(PreprocessSuffix): delay.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/delay.c$(PreprocessSuffix) delay.c

$(IntermediateDirectory)/ascii.c$(ObjectSuffix): ascii.c $(IntermediateDirectory)/ascii.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ascii.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ascii.c$(DependSuffix): ascii.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ascii.c$(ObjectSuffix) -MF$(IntermediateDirectory)/ascii.c$(DependSuffix) -MM ascii.c

$(IntermediateDirectory)/ascii.c$(PreprocessSuffix): ascii.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ascii.c$(PreprocessSuffix) ascii.c

$(IntermediateDirectory)/grafikDisp.c$(ObjectSuffix): grafikDisp.c $(IntermediateDirectory)/grafikDisp.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/grafikDisp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/grafikDisp.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/grafikDisp.c$(DependSuffix): grafikDisp.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/grafikDisp.c$(ObjectSuffix) -MF$(IntermediateDirectory)/grafikDisp.c$(DependSuffix) -MM grafikDisp.c

$(IntermediateDirectory)/grafikDisp.c$(PreprocessSuffix): grafikDisp.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/grafikDisp.c$(PreprocessSuffix) grafikDisp.c

$(IntermediateDirectory)/keypad.c$(ObjectSuffix): keypad.c $(IntermediateDirectory)/keypad.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/keypad.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/keypad.c$(DependSuffix): keypad.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/keypad.c$(ObjectSuffix) -MF$(IntermediateDirectory)/keypad.c$(DependSuffix) -MM keypad.c

$(IntermediateDirectory)/keypad.c$(PreprocessSuffix): keypad.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/keypad.c$(PreprocessSuffix) keypad.c

$(IntermediateDirectory)/startup.c$(ObjectSuffix): startup.c $(IntermediateDirectory)/startup.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/startup.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/startup.c$(DependSuffix): startup.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/startup.c$(ObjectSuffix) -MF$(IntermediateDirectory)/startup.c$(DependSuffix) -MM startup.c

$(IntermediateDirectory)/startup.c$(PreprocessSuffix): startup.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/startup.c$(PreprocessSuffix) startup.c

$(IntermediateDirectory)/irq_delay.c$(ObjectSuffix): irq_delay.c $(IntermediateDirectory)/irq_delay.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/irq_delay.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/irq_delay.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/irq_delay.c$(DependSuffix): irq_delay.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/irq_delay.c$(ObjectSuffix) -MF$(IntermediateDirectory)/irq_delay.c$(DependSuffix) -MM irq_delay.c

$(IntermediateDirectory)/irq_delay.c$(PreprocessSuffix): irq_delay.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/irq_delay.c$(PreprocessSuffix) irq_delay.c

$(IntermediateDirectory)/delay.c$(ObjectSuffix): delay.c $(IntermediateDirectory)/delay.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/delay.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/delay.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/delay.c$(DependSuffix): delay.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/delay.c$(ObjectSuffix) -MF$(IntermediateDirectory)/delay.c$(DependSuffix) -MM delay.c

$(IntermediateDirectory)/delay.c$(PreprocessSuffix): delay.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/delay.c$(PreprocessSuffix) delay.c

$(IntermediateDirectory)/ascii.c$(ObjectSuffix): ascii.c $(IntermediateDirectory)/ascii.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ascii.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ascii.c$(DependSuffix): ascii.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ascii.c$(ObjectSuffix) -MF$(IntermediateDirectory)/ascii.c$(DependSuffix) -MM ascii.c

$(IntermediateDirectory)/ascii.c$(PreprocessSuffix): ascii.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ascii.c$(PreprocessSuffix) ascii.c

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
	$(RM) -r ./Debug/


