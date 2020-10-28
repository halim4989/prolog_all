/*print list*/
writelist([]).                                 /* Base case: An empty list */
writelist([H|T]) :- write(H),writelist(T).  /* Recursive case: */

/**************/

/*print list rev*/
reverse_writelist([]).                                         /* Base case: An empty list */
reverse_writelist([H|T]) :- reverse_writelist(T),write(H).  /* Recursive case: */

/**************/

/*prints odd number, press ; */
odd(1).
odd(N) :- odd(M), N is M+2.

/**************/

/*list lenght*/
count([],0).                     /* base case: empty list*/

count([H|T],Count):-             /* recursive */
count(T,CountR),
Count is CountR+1.

/****/
/*list lenght*/
/*same as prev*/

len([],0).
len([_|T],N) :- len(T,M),N is M+1.

/*************/

/*make list by user input*/
get_symptoms(Symptoms) :-
    write('Enter Symptom: ' ),
    read_string(user, "\n", "\r", _, Response),
    (
        Response == "Stop"
    ->
        Symptoms = []
    ;
        get_symptoms(Symptoms0),
        Symptoms = [Response|Symptoms0]
    ).

/**************/

/* acts like prolog global variable increment  or Decrement */

:- dynamic a/1,counter/1.

counter(1).
a(1).
				
do(Delta):-                		 /* do(1) or do(+1) or do(-1)[for Decrement] */
		a(Value),               
		Value2 is Value+Delta,
		retractall(a(_)),
		assert(a(Value2)).      


increment_counter(Delta) :-  			 /* same */
		( counter(Value),
		Value2 is Value+Delta
		),
		( retractall(counter(_)),
		assert(counter(Value2))
		).

	
	
/**************/
