all: connect.exe inter.com

connect.exe: connect.obj
	tlink /v connect.obj

connect.obj: connect.asm
	tasm /zi connect.asm

inter.com: inter.obj
	tlink /t /v inter.obj

inter.obj: inter.asm
	tasm /zi inter.asm
	
p4a.com: p4a.obj
	tlink /t /v p4a.obj

p4a.obj: p4a.asm
	tasm /zi p4a.asm
	
clean: 
	del p4a.obj
	del p4a.map
	del p4a.com
	del p4b.obj
	del p4b.map
	del p4b.exe
	del p4c.obj
	del p4c.map
	del p4c.exe
	
