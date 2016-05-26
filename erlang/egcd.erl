-module (egcd).
-export ([egcd/2]).

%  egcd (m,n) = (s,t,d) such that
%    d = gcd(m,n) and
%    sm + tn = d
egcd(M,N) ->
    egcdaux (1,0,0,1,M,N).

%  initialize with (1,0,0,1,m,n) such that
%    a'm + b'n = c   and
%    am  + bn  = d
%  then egcdaux (1,0,0,1,m,n) = (s,t,d) such that
%    d = gcd(m,n) and
%    sm + tn = d
egcdaux(A1,B1,A,B,C,D) ->
    case C rem D of
        0 -> {A,B,D};
        R ->
            Q = C div D,
            egcdaux (A,B,A1 - Q*A, B1 - Q*B,D,R)
    end.
