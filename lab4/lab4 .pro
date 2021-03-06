/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB4 
 FileName: LAB4 .PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab4 .inc"

predicates
	setPrinter(Integer,String,Integer,Integer,String).
	getPrinterByName(String).
	
	getPrinterByFormat(String).
	
clauses

	setPrinter(2004,"A4",4,4,"Printer4").
	setPrinter(2003,"A3",3,3,"topPrinter3").
		
	getPrinterByFormat(X):-setPrinter(_,X,_,_,Y),write("Printers with format ",X,"has name ", Y,"\n").
	getPrinterByName(X):-setPrinter(Y,Z,G,H,X),write("Printers with name ",X," was created in  ", Y ,", list format is ", Z, ",number of colors: ",G,"prinSpeed: ",H,"\n").
	
goal
	write(" Enter print format: "),readln(X),getPrinterByFormat(X),
	write(" Enter name of printer: "),readln(Y),getPrinterByName(Y).

