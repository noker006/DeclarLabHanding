/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB33
 FileName: LAB33.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab33.inc"

predicates
	nondeterm insideZone(Integer, Integer, Integer)
clauses
	insideZone(X, Y, R):- X>=0,Y>=0,X<=R, Y<=R,write("inside 1 chetverti") 
	;
	X<=0, X>=-R, Y<=0, Y>=-R, write("inside 3 chetverti") 
	;
	X<=0, X>=-R, Y>=0, Y<=R, (X+R)*(X+R) + (Y-R)*(Y-R) >= R*R, write("inside 2 chetverti") 
	;
	X>=0, X<=R, Y<=0, Y>=-R, (R-X)*(R-X) + (Y+R)*(Y+R) >= R*R, write("inside 4 chetverti")
	;
	write("not inside").
goal
	write("X = "),readint(X), write("Y = "),readint(Y),write("R = "), readint(R),insideZone(X,Y,R).
