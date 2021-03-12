/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB31
 FileName: LAB31.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lab31.inc"

predicates
	nondeterm z1(Integer, Integer).
clauses
	 z1(X, Y):- X>Y,write(" Pair after change ", X , " i ", "0") ; X < Y, write(" Pair after change ", X , " i ", Y).
goal
	write(" Enter pair before change "),readint(X), readint(Y),z1(X,Y).
