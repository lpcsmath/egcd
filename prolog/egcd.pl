
egcd(M,N,S,T,D) :- egcdaux(1,0,0,1,M,N,S,T,D).

egcdaux(_,_,A,B,C,D,A,B,D) :- 0 is C mod D, !.
egcdaux(A1,B1,A,B,C,D,S,T,Y) :-
                Q is C div D,
                R is C mod D,
                NA is A1 - Q * A,
                NB is B1 - Q * B,
                egcdaux(A,B,NA,NB,D,R,S,T,Y).
