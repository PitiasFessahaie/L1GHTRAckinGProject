###############################################################################
# Makefile for project 
###############################################################################

## General options
PROJECT = 
MCU = PIC16F84A
COMPILER = "HI-TECH C for PIC10/12/16"
TARGET = Release
SHELL = C:\Windows\system32\cmd.exe

## Tools general options
CCFLAGS=--pass1 --errformat="Error at file %%f line %%l column %%c: (%%n) %%s" --warnformat="Warning at file %%f line %%l column %%c: (%%n) %%s" --msgformat="Message at file %%f line %%l column %%c: (%%n) %%s" -D_XTAL_FREQ=1000000 --chip=16F84A
LDFLAGS=--output=intel --errformat="Error at file %%f line %%l column %%c: (%%n) %%s" --warnformat="Warning at file %%f line %%l column %%c: (%%n) %%s" --msgformat="Message at file %%f line %%l column %%c: (%%n) %%s" --chip=16F84A

## Processing Tools
CC=picc.exe
ASM=picc.exe
LD=picc.exe
LIB=picc.exe
#  D:/Final Project 3rd Year Diplom Robotics/DOCUMANTATION/PIC16F84A/Release/Release.hex: TOOL=LD
#     D:/Final Project 3rd Year Diplom Robotics/DOCUMANTATION/PIC16F84A/Release/main.p1: TOOL=CC
#        D:/Final Project 3rd Year Diplom Robotics/DOCUMANTATION/PIC16F84A/main.c

# Build tree:
all:	Release

Release:	Release.hex
	cp "Release.hex" "../../PIC16F84A.hex"

Release.hex:	main.p1 
	$(LD) $(LDFLAGS)  -O"Release.hex" "main.p1"

main.p1:	../main.c 
	$(CC) $(CCFLAGS)  -O"main.p1" "../main.c"

# tidy - delete all temporary files which are not involved in the target generation
tidy:
	rm -rf ./Release.hxl
	rm -rf ./Release.lst
	rm -rf ./Release.sym
	rm -rf ./Release.obj
	rm -rf ./Release.sdb
	rm -rf ./Release.as
	rm -rf ./startup.obj
	rm -rf ./startup.rlf
	rm -rf ./startup.as
	rm -rf ./startup.lst
	rm -rf ./funclist.
	rm -rf ./main.pre
	rm -rf ./main.lst

# cleanup - delete all generated files
clean:	tidy
	rm -rf Release.hex
	rm -rf main.p1

