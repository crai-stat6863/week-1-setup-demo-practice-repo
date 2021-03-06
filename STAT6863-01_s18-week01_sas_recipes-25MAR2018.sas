*******************************************************************************;
**************** 80-character banner for column width reference ***************;
* (set window width to banner width to calibrate line length to 80 characters *;
*******************************************************************************;


*******************************************************************************;
* hello-world ;
*******************************************************************************;
/*
Scenario: Printing to the SAS log.

Approach: Use a null data step and put statement to write to the log

Recipe <with everything in square brackets to be filled in for actual use>:

data _null_;
    put "<message>";
run;
*/

*Example;
%let name=Chinki Rai;
%let classname=stat6863;

data _null_;
	put "Hello,&classname.! This is &name.!";
run;

/*
Notes:
(1) In this example, single-quotes have been used to delimit the string literal 'Hello, World!', meaning we know the string is everything between the opening and closing single-quote marks. However, the recipe used double-quote marks. In general, either single-quotes or double-quotes can be used to delimit SAS string literals, but double-quotes should be used whenever so-called macro variables are included in string literals, as we'll see later. (For now, just remember that SAS treats single- and double-quotes differently for something called macros.)
*/

*******************************************************************************;
* fizz-buzz ;
*******************************************************************************;

/*
Scenario: Solve a simplified version of the FizzBuzz Challenge

Approach: Use a null data step and business logic to write to the log
*/

*Example;
*With the use of Macros;
%let mod_5= 5;

data _null_;
    do i = 1 to 100;
        if mod(i,3) = 0 then put 'Fizz';
        else if mod(i, &mod_5.) = 0 then put 'Buzz';
	   else put i=;
    end;
run;
)
/*
Notes:
(1) In this example, the four main components of imperative programming are used: (1) The variable i is used to hold a value that varies; (2) the mod function is called with behavior dependent on a variable's current value (e.g., mod(i,3) evaluates to 0 if i is divisible by 3, and is 1 otherwise); (3) conditional statement execution in the form an if-else if-else branching structure, where only one of the three branches is executed, depending upon whether i is divisible by 3, by 5, or by neither; and (4) looping in the form of the do-loop repeating the same block of code (the 3-line if-else if-else branching structure) 100 times, once for each value of i, which starts with the value 1 and is incremented by 1 repeatedly.
(2) In general, SAS data steps will use these four components, in addition to dataset access methods, to prepare/clean data for analysis. This type of programming is commonly called "business logic" since it encapsulated domain-specific behavior, here to solve a specific programming challenge.
*/
