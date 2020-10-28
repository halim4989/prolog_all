:- dynamic a/1,b/1,counter/1.

counter(0).
a(1).
b(1).


start:-
        write('YOU NEED TO CHOOSE BETWEEN \n\t A or B\n\n'),
        
        writeln('WOULD YOU RATHER...\nA. BE THE SMARTEST PERSON AROUND or \nB. THE MOST CHARMING?'),
        call,
        writeln('WOULD YOU RATHER...\nA. ALWAYS HAVE TO TELL THE TRUTH or \nB. ALWAYS LIE?n'),
        call,
        writeln('WOULD YOU RATHER...\nA. NEVER HAVE INTERNET ACCESS AGAIN or \nB. NEVER TAKE AN AIRPLANE IN YOUR LIFE?'),
        call,
        writeln('WOULD YOU RATHER...\nA. FIND YOUR TRUE LOVE or \nB. WIN A MILLION DOLLARS?'),
        call,
        writeln('WOULD YOU RATHER...\nA. NEVER BE ABLE TO SPEAK AGAIN or \nB. ALWAYS HAVE TO SAY EVERYTHING ON YOUR MIND?'),
        call,
        writeln('WOULD YOU RATHER...\nA. HAVE A PHOTOGRAPHIC MEMORY or \nB. BE ABLE TO FORGET ANYTHING YOU WANT?'),
        call,
        writeln('WOULD YOU RATHER...\nA. NEVER LISTEN TO SONG AGAIN or \nB.  NEVER EAT YOUR FAVORITE FOOD'),
        call,
        writeln('WOULD YOU RATHER...\nA. BE THE ONLY PERSON IN THE WORLD TO LIVE A HAPPY LIFE or \nB. BE THE ONLY PERSON IN THE WOULD TO LIVE AN UNHAPPY LIFE?'),
        call,
        writeln('WOULD YOU RATHER...\nA. BE THE FIRST PERSON TO DISCOVER AN INHABITABLE PLANET or \nB. BE THE INVENTOR OF A DRUG THAT CURES A DEADLY DISEASE?'),
        call,
        writeln('WOULD YOU RATHER...\nA. BE POOR BUT ABLE TO HELP PEOPLE or \nB. GET INCREDIBLY RICH BY HURTING OTHER PEOPLE?'),
        call,
		writeln('\n\n'),
		
		writeln('\t*** * **** * *** '),
		writeln('Based on Your Choices, According to some Survey\n\n'),
		counter(Value),
		result(Value).
        
        
call:-
        repeat,
        (
        %read_line_to_codes(user_input,[A|_]),nl,
		%writef('You choose(A)\ninput: %n\n\n', [A]),
        get(A),
        ((A = 97 ; A = 65) -> writef('You choose(A)\ninput: %n\n\n', [A]),increment_counter(+1),!;
         (A = 98 ; A = 66) -> writef('You choose(B)\ninput: %n\n\n', [A]),!;
                              writef(' %n  is Wrong Input, \n  (A/B)? ', [A]),fail)
        ).



increment_counter(Delta) :-
		( counter(Value),
		Value2 is Value+Delta),
		( retractall(counter(_)),
		assert(counter(Value2))).
		
		
result(Alpha):-
		(
		( Alpha < 4 -> a3());
		( Alpha < 7 -> a6());
		( Alpha < 11 -> a10())
		).
		
		
a3():-
		writeln('YOU ARE A PRETTY SELFISH PERSON. VERY FEW PEOPLE WOULD LIKE TO WORK \nWITH YOU ON A TEAM. IT iS NOT THAT BAD THOUGH, IT JUST MEANS THAT YOU PREFER \nFIGHTING FOR YOURSELF TO GET EXACTLY WHAT YOU WANT').
a6():-
		writeln('YOU ARE MODERATELY SELFISH. YOU ARE LIKE THE GOLDILOCKS OF THIS LIST.\nNOT TOO MUCH, NOT TOO LITTLE. PRETTY MUCH MOST PEOPLE WOULD FALL INTO THIS CATEGORY. \nYOU CAN BE SELFISH WHEN YOU NEED TO BE.').
a10():-
		writeln('YOU ARE THE TYPE OF PERSON WHO IS ALWAYS READY TO SACRIFICE YOUR OWN \nINTERESTS FOR SOMEONE ELSE.').
		
		
		
		
		
		
