%	Made by Drew Johnson, Parkes Rowe, and Bryan Valencia
%	Programming Languages, Dr. Browning
%	May 3rd, 2021
% 	Reserved friend, Georgie
% 	You can ask Georgie, 'do you', 'would you','what are you', and 'how is your' by using quotes as shown.
%	For example: ['do you',like,cats] or ['would you',eat,pie].
subin([],[],_,_).
subin([H|T],[Y|T2],H,Y):-subin(T,T2,H,Y).
subin([H|T],[H|T2],X,Y):- H\=X,subin(T,T2,X,Y).
georgie(Alist,Answer):- 
    subin(Alist,Blist,how,i),
    subin(Blist,Clist,are,am),
    subin(Clist,Dlist,you,reserved),
    subin(Dlist,Elist,'do you','i do not'),
    subin(Elist,Flist,'would you','i would not'),
    subin(Flist,Glist,'what are you','i am'),
    subin(Glist,Hlist,'doing','doing nothing'),
    subin(Hlist,Ilist,'how is your','my'),
    subin(Ilist,Answer,'going','is okay').

% 	%% how --> i
% 	%% are --> am
% 	%% you --> reserved
%	[how,are,you] --> [i, am, reserved]
%	%% do you --> i do not
%	['do you',have,plans,for,tomorrow] --> ['i do not',have,plans,for,tomorrow]
%		['do you',have,homework] --> ['i do not',have,homework]
%	%% would you --> i would not
%	['would you',like,to,hang,out] --> ['i would not',like,to,hang,out]
%		['would you',eat,a,grasshoper,for,a,million,dollars] --> ['i would not',eat,a,grasshoper,for,a,million,dollars]
%	%% what are you --> i am
%	%% doing --> doing nothing
%	['what are you',doing,today] --> ['i am','doing nothing',today]
%		['what are you',doing,tomorrow] --> ['i am','doing nothing',tomorrow]
%		['what are you',doing,friday] --> ['i am','doing nothing',friday]
%	%% how is your --> my
%	%% going --> is okay
%	['how is your',day,going] --> [my,day,'is okay']
%		['how is your',homework,going] --> [my,homework,'is okay']