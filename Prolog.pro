winnerAtHome(C) :- final(I,C,R),host(I,C).

%-----------------------------------------------------------------------------------------

sameContinent(Y) :- continents(C,K,D),year(I,Y),final(I,C,K). 

%-----------------------------------------------------------------------------------------

continents(C,K,D) :- continent(C,D),continent(K,D),dif(C,K).

%-----------------------------------------------------------------------------------------

threeFinals(C) :- helpTF(I,C),helpTF(J,C),helpTF(K,C),J is I+1,K is I+2.

%-----------------------------------------------------------------------------------------

threeContinents(Y1,Y2) :- helpForTC(I1,Y3,C1,D1,Y1,Y2),helpForTC(I2,Y4,C2,D2,Y1,Y2),helpForTC(I3,Y5,C3,D3,Y1,Y2),dif(D1,D2),dif(D1,D3),dif(D2,D3).

%-----------------------------------------------------------------------------------------

helpForTC(I,Y,C,D,Y1,Y2) :- year(I,Y),Y>=Y1,Y=<Y2,host(I,C),continent(C,D).

%-----------------------------------------------------------------------------------------

helpTF(I,C) :- final(I,C,_).
helpTF(I,C) :- final(I,_,C).

%-----------------------------------------------------------------------------------------

path(X,Y) :- link(X,Y).
path(X,Y) :- link(X,S),path(S,Y).

%-----------------------------------------------------------------------------------------

biconnected(X,Y) :- link(X,Y),link(X,S),path(S,Y).

%-----------------------------------------------------------------------------------------

meetpoint(S1,D1,S2,D2,X) :- path(S1,X),path(S2,X),path(X,D1),path(X,D2).

%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------

dif(X,Y) :- X \= Y.

year(1,1930).
year(2,1934).
year(3,1938).
year(4,1950).
year(5,1954).
year(6,1958).
year(7,1962).
year(8,1966).
year(9,1970).
year(10,1974).
year(11,1978).
year(12,1982).
year(13,1986).
year(14,1990).
year(15,1994).
year(16,1998).
year(17,2002).
year(18,2006).
year(19,2010).
year(20,2014).
year(21,2018).
year(22,2022).

host(1,'Uruguay').
host(2,'Italy').
host(3,'France').
host(4,'Brazil').
host(5,'Switzerland').
host(6,'Sweden').
host(7,'Chile').
host(8,'England').
host(9,'Mexico').
host(10, 'West Germany').
host(11, 'Argentina').
host(12,'Spain').
host(13,'Mexico').
host(14,'Italy').
host(15,'USA').
host(16,'France').
host(17,'South Korea').
host(17,'Japan').
host(18,'Germany').
host(19,'South Africa').
host(20,'Brazil').
host(21,'Russia').
host(22,'Qatar').

final(1,'Uruguay','Argentina').
final(2,'Italy','Czechoslovakia').
final(3,'Italy','Hungary').
final(4,'Uruguay','Brazil').
final(5,'West Germany','Hungary').
final(6,'Brazil','Sweden').
final(7,'Brazil','Czechoslovakia').
final(8,'England','West Germany').
final(9,'Brazil','Italy').
final(10,'West Germany','Netherlands').
final(11,'Argentina','Netherlands').
final(12,'Italy','West Germany').
final(13,'Argentina','West Germany').
final(14,'West Germany','Argentina').
final(15,'Brazil','Italy').
final(16,'France','Brazil').
final(17,'Brazil','Germany').
final(18,'Italy','France').
final(19,'Spain','Netherlands').
final(20,'Germany','Argentina').
final(21,'France','Croatia').
final(22,'Argentina','France').

continent('Argentina','America').
continent('Brazil','America').
continent('Chile','America').
continent('Croatia','Europe').
continent('Czechoslovakia','Europe').
continent('England','Europe').
continent('France','Europe').
continent('Germany','Europe').
continent('Hungary','Europe').
continent('Italy','Europe').
continent('Japan','Asia').
continent('Mexico','America').
continent('Netherlands','Europe').
continent('Russia','Europe').
continent('South Africa','Africa').
continent('South Korea','Asia').
continent('Spain','Europe').
continent('Sweden','Europe').
continent('Switzerland','Europe').
continent('Uruguay','America').
continent('USA','America').
continent('West Germany','Europe').
continent('Qatar','Asia').



source(a).
source(b).
source(c).

destination(x).
destination(y).
destination(z).

link(a,d).
link(a,e).
link(b,d).
link(b,f).
link(c,f).
link(c,g).
link(c,q).
link(d,h).
link(d,i).
link(e,j).
link(f,k).
link(f,w).
link(g,l).
link(h,i).
link(i,p).
link(i,x).
link(j,x).
link(j,y).
link(j,z).
link(k,y).
link(l,m).
link(m,n).
link(n,o).
link(o,i).
link(p,y).
link(q,r).
link(r,s).
link(r,u).
link(s,t).
link(t,u).
link(u,x).
link(v,z).
link(w,v).
link(w,z).

%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------

grade(A,B,C,E,G) :- lim(A,B,C,E),!,helpGrade_thr(A,B,C,E,M),G is M.
grade(A,B,C,E,0) :- !.

%-----------------------------------------------------------------------------------------

lim(A,B,C,E) :- A>=1,B>=1,C>=1,E>=1,A=<10,B=<10,C=<10,E=<10.

%-----------------------------------------------------------------------------------------

helpGrade(A,B,C,E,M,L) :- M is 3/((1/A)+(1/B)+(1/C)),
                          M>E,!,
                          L is ((M+E)/2).
helpGrade(A,B,C,E,M,E) :- !.

%-----------------------------------------------------------------------------------------

helpGrade_two(A,B,C,E,M,K) :- lim_two(A,B,C),!,
                              helpGrade(A,B,C,E,M,L),
                              K is (L+L*(20/100)).
helpGrade_two(A,B,C,E,M,J) :- !,helpGrade(A,B,C,E,M,L),J is L.

%-----------------------------------------------------------------------------------------

lim_two(A,B,C) :- A>=5,B>=5,C>=5.

%-----------------------------------------------------------------------------------------


helpGrade_thr(A,B,C,E,G) :- helpGrade_two(A,B,C,E,M,K),lim_thr(K),!,G is K.
helpGrade_thr(A,B,C,E,10) :- !.

%-----------------------------------------------------------------------------------------

lim_thr(K) :- K=<10.

%-----------------------------------------------------------------------------------------

zeta(0,N,X,Y,G) :- G is Y.
zeta(K,N,X,Y,G) :- N<K, G is Y+K.
zeta(K,N,X,Y,G) :- Y<K,N=:=K,G is X.
zeta(K,N,X,Y,G) :- Y<K,N=:=(K+1),G is N-2.
zeta(K,N,X,Y,G) :- Y<K,N>=(K+2),G is K.
zeta(K,N,X,Y,G) :- Y>=K,N>=K,K>=1,M is Y-K,zeta(K,N,X,M,G1),J is N-K,zeta(K,J,X,G1,G2),G is G2.

%-----------------------------------------------------------------------------------------

p(X,A,N) :- T1 is 1-A,countP(1,N,A,T1,X).
p(X,A,N) :- countP(1,N,A,0,X).

%-----------------------------------------------------------------------------------------

countP(I,N,A,T,X) :- T<X,I1 is I+1,T1 is T+1-(A/I1),countP(I1,N,A,T1,X).
countP(I,N,A,T,X) :- T>=X,N is I.

%-----------------------------------------------------------------------------------------

fromTo(L,I,J,S) :- number(I),number(J),helpFromTo(L,I,J,S).
helpFromTo(L,I,J,S) :- I1 is I-1,J1 is J-1,
                       delI(L,I1,S1),
                       reverse(S1,S2),
                       lengthList(L,N),
                       K is N-J1,
                       K1 is K-1,
                       delI(S2,K1,S3),
                       reverse(S3,S).
%-----------------------------------------------------------------------------------------
					   
delI([_|T1],I,T2) :- I>0,lengthList([H1|T1],N),I=<N,J is I-1,delI(T1,J,T2).
delI([_|T1],I,[]) :- I>0,lengthList([H1|T1],N),I>N.
delI(T1,_,T1).

%-----------------------------------------------------------------------------------------

lengthList([],0).
lengthList([H|T],N) :- lengthList(T,M),N is M+1.

%-----------------------------------------------------------------------------------------

reverse(L,R) :- conReversed(L,[],R).

%-----------------------------------------------------------------------------------------

conReversed([],S,S).
conReversed([H|T],S,R) :- conReversed(T,[H|S],R).

%-----------------------------------------------------------------------------------------

smooth(L,1,L) :- !.
smooth(L,K,[]) :- lengthList(L,N),K>N,!.
smooth(L,K,S) :- lengthList(L,N),K=<N,helpSmooth(L,K,[],S1),reverse_2(S1,S).

%-----------------------------------------------------------------------------------------

addup(H,S,[H|S]).

%-----------------------------------------------------------------------------------------

helpSmooth(L,K,S,S) :- K>0,lengthList(L,N),N<K,!.
helpSmooth(L,K,S,L2) :- K>0,lengthList(L,N),N>=K,
					    takeK(L,K,S1),
				        sumK(S1,0,R),
				        K1 is R//K,
				        delI(L,1,S2),
					    addup(K1,S,S3),
				        helpSmooth(S2,K,S3,L2).

%-----------------------------------------------------------------------------------------

lengthList([],0).
lengthList([H|T],N) :- lengthList(T,M),N is M+1.

%-----------------------------------------------------------------------------------------

delI([_|T1],I,T2) :- I>0,lengthList([H1|T1],N),I=<N,J is I-1,delI(T1,J,T2),!.
delI([_|T1],I,[]) :- I>0,lengthList([H1|T1],N),I>N,!.
delI(T1,_,T1).

%-----------------------------------------------------------------------------------------

takeK(L,K,S) :- takeK_2(L,K,0,S).

takeK_2([],_,_,[]).
takeK_2([H|T1],K,Y,[H|T2]) :- Y<K,
                              Y1 is Y+1,
                              takeK_2(T1,K,Y1,T2),!.
takeK_2([_|T1],K,Y,[]).

%-----------------------------------------------------------------------------------------

sumK([],S,S).
sumK([H|T],S,R) :- NS is S+H,
				   sumK(T,NS,R).  

%-----------------------------------------------------------------------------------------
				   
reverse_2(L,R) :- conReversed(L,[],R).

%-----------------------------------------------------------------------------------------

conReversed([],S,S).
conReversed([H|T],S,R) :- conReversed(T,[H|S],R).

%-----------------------------------------------------------------------------------------

robots(S1,L1,S2,L2) :- valid_sector(S1),valid_sector(S2),
                       canMoves(L1),canMoves(L2),
                       sameNextSector(S1,L1,S2,L2),!.
robots(S1,L1,S2,L2) :- valid_sector(S1),valid_sector(S2),
                       canMoves(L1),canMoves(L2),
                       exchangeSector(S1,L1,S2,L2),!.

%-----------------------------------------------------------------------------------------

incr(0,s(0)).
incr(p(0),0).
incr(s(X),s(Y)) :- incr(X,Y),!.
incr(p(X),p(Y)) :- incr(X,Y),!.

%-----------------------------------------------------------------------------------------

decr(0, p(0)).
decr(s(0),0).
decr(s(X),s(Y)) :- decr(X,Y),!.
decr(p(X),p(Y)) :- decr(X,Y),!.

%-----------------------------------------------------------------------------------------

valid_sector(sec(X,Y)) :- valid_coord(X),valid_coord(Y).

%-----------------------------------------------------------------------------------------

valid_coord(0).
valid_coord(s(0)).
valid_coord(p(0)).
valid_coord(s(s(X))) :- valid_coord(s(X)).
valid_coord(p(p(X))) :- valid_coord(p(X)).

%-----------------------------------------------------------------------------------------

same_sector(sec(X,Y),sec(X1,Y1)) :- X=X1,Y=Y1.

%-----------------------------------------------------------------------------------------

canMoves([]).
canMoves([e|T]) :- canMoves(T).
canMoves([w|T]) :- canMoves(T).
canMoves([n|T]) :- canMoves(T).
canMoves([s|T]) :- canMoves(T).

%-----------------------------------------------------------------------------------------

next_sector(sec(X,Y),e,sec(X1,Y)) :- incr(X,X1),valid_sector(sec(X1,Y)).
next_sector(sec(X,Y),w,sec(X1,Y)) :- decr(X,X1),valid_sector(sec(X1,Y)).
next_sector(sec(X,Y),n,sec(X,Y1)) :- incr(Y,Y1),valid_sector(sec(X,Y1)).
next_sector(sec(X,Y),s,sec(X,Y1)) :- decr(Y,Y1),valid_sector(sec(X,Y1)).

%-----------------------------------------------------------------------------------------

sameNextSector(S1,[],S2,[]) :- same_sector(S1,S2).
sameNextSector(S1,[],S2,[H2|T2]) :- next_sector(S2,H2,S4),same_sector(S1,S4).
sameNextSector(S1,[],S2,[H2|T2]) :- next_sector(S2,H2,S4),sameNextSector(S1,[],S4,T2).
sameNextSector(S1,[H1|T1],S2,[]) :- next_sector(S1,H1,S3),same_sector(S2,S3).
sameNextSector(S1,[H1|T1],S2,[]) :- next_sector(S1,H1,S3),sameNextSector(S3,T1,S2,[]).
sameNextSector(S1,[H1|T1],S2,[H2|T2]) :- next_sector(S1,H1,S3),next_sector(S2,H2,S4),same_sector(S3,S4).
sameNextSector(S1,[H1|T1],S2,[H2|T2]) :- next_sector(S1,H1,S3),next_sector(S2,H2,S4),sameNextSector(S3,T1,S4,T2).

%-----------------------------------------------------------------------------------------

exchangeSector(S1,[H1|T1],S2,[H2|T2]) :- next_sector(S1,H1,S3),next_sector(S2,H2,S4),
                                         same_sector(S1,S4),same_sector(S2,S3).
exchangeSector(S1,[H1|T1],S2,[H2|T2]) :- next_sector(S1,H1,S3),next_sector(S2,H2,S4),
                                         exchangeSector(S3,T1,S4,T2).
										 


%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------

inputList([3232,3008,2784,2560,2336,2112,1888,1664,1440,1216,992,768,544,320,96,3328,3104,2880,2656,2432,2208,1984,1760,1536,1312,1088,864,640,416,192,3424,3200,2976,
2752,2528,2304,2080,1856,1632,1408,1184,960,736,512,288,64,3296,3072,2848,2624,2400,2176,1952,1728,1504,1280,1056,832,608,384,160,3392,3168,2944,2720,2496,2272,2048,
1824,1600,1376,1152,928,704,480,256,32,3264,3040,2816,2592,2368,2144,1920,1696,1472,1248,1024,800,576,352,128,3360,3136,2912,2688,2464,2240,2016,1792]).

%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------