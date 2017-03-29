---
layout: lab
num: lab01	
ready: false
desc: "Crunching numbers: Loops and functions, github command-line  "
assigned: 2017-04-11 09:00:00.00-7
due: 2017-04-18 11:59:00.00-7
---

<div markdown="1">

## Introduction

The assignment for this week will utilize concepts of control flow that we covered in class. You may utilize other concepts of programming as well, as you see fit. In the last assignment we used github's web interface. In this section we will learn about github's command-line tools which allow you to perform version control in a terminal. To complete the lab follow these steps in order:

* [Creating and cloning your repo](#clonerepo){: data-ajax="false"}
* [Getting the starter code from a local directory into your local git directory](#getstarter){: data-ajax="false"}
* [Using the git command line tools to save the first version of your code](#firstcommit){: data-ajax="false"}
* [Solving the problems for this lab](#programs){: data-ajax="false"}
* [Submit your code](#submit){: data-ajax="false"}
* [Check submission results](#checksubmission){: data-ajax="false"}



## Step 1: Creating and cloning your repo  <a name="clonerepo"></a>


You are not expected to finish the entire lab in one sitting. Please don't rush through it and read all instructions carefully. We encourage you to work in pairs for this lab. Please sit with your pair partner on the same terminal. Decide who will be the 'driver' and who will be the 'navigator'. If you don't know what those terms mean, be sure to see the following video on pair programming:

[http://bit.ly/pair-programming-video](http://bit.ly/pair-programming-video)

Log into your CoE account on CSIL and open a terminal. This lab assumes that you have completed the following steps from the previous lab:

(1) Have a high-level understanding of what git and github are all about. If you need a refresher, read this article: [https://ucsb-cs56-pconrad.github.io/topics/git_overview/](https://ucsb-cs56-pconrad.github.io/topics/git_overview/). Refer lab00.

(2) Created a github account and have successfully uploaded a file (hello.cpp) in a git repo under our class organization. This verifies that you are part of our class organization. Refer to lab00 for more on this. 


In the next steps you will integrate github's command line tools into your workflow:

* First you need to perform some one-time configurations: On the CSIL servers open a terminal and navigate to your home directory by typing <code>cd ~</code>. Now in the command line you will set up your global user.name and user.email values. To do this type in the following commands, but change the name Alex Triton to your own real world first and last name. If you prefer, for privacy reasons, you may use your first name and last initial. Also, change the email address atriton@cs.ucsb.edu to your own @ucsb.edu email address.

```
   git config --global user.name "Alex Triton"

   git config --global user.email "atriton@cs.ucsb.edu"
```

* Create a new git repo: Open a browser and navigate to our class organization on github: [ucsb-cs16-sp17](https://github.com/orgs/ucsb-cs16-sp17/dashboard). Then go ahead and create a PRIVATE repo containing only a README.md and a .gitignore. To do this click on the green button that says "New repository", and follow the steps from the ["creating a github repo under an organization"](https://ucsb-cs16.github.io/topics/github_com_create_private_repo_under_org/) article. If you are working with a partner, only one of you needs to create the repo. 

**Make sure you follow the right naming convention for your repo. If your github username is jgaucho and your partner's is alily, you should name your repo lab01_alily_jgaucho. Notice that the github usernames are listed in alphabetical order. Also make sure your repo is PRIVATE, so that you code cannot be viewed by your classmates.**

* Add your partner as a collaborator: Read this article on [adding your partner as a collaborator on your github repo](https://ucsb-cs56-pconrad.github.io/topics/github_add_collaborator/). Then follow the steps in the article to add your partner.

* Cloning your repo to your ~/cs16/ directory on CSIL: Recall this article that you read in lab01 about [cloning your repo](https://ucsb-cs16.github.io/topics/git_cloning_your_first_repo/). Read it again if you need to. Then, clone the repo that you just created in your ~/cs16/ directory. Suppose the git repo was named lab01_alily_jgaucho, after you clone it, you should see the directory lab01_alily_jgaucho appear under your ~/cs16 directory. `cd` into your git repo directory.

You are now ready to get the starter code.

## Step 2: Getting the starter code from a local directory into your local git directory <a name="getstarter"></a>

Copy the code from the instructor's account on the CSIL server into your local git directory. If your local git directory is lab01_alily_jgaucho issue the following command:

  cp /cs/faculty/dimirza/cs16-wi17/labs/lab01-startercode/* ~/cs16/lab01_alily_jgaucho/


After doing this command, if you cd into ~/cs16/lab01_alily_jgaucho/ and use the ls command, you should see three .cpp files and a README:

```
-bash-4.2$ ls
min2.cpp  min3v1.cpp  min3v2.cpp README.md
-bash-4.2$ 
```

If you don't see those files, work with your pair partner to go back through the instructions and make sure you didn't miss a step. If you still have trouble, ask your TA for assistance. 

## Step 3: Using the git command line tools to save the first version of your code <a name="firstcommit"></a>

Its now time to use the git-command line tools to perform version control for the files in your git repo. Recall the information in the article [git basic workflow](https://ucsb-cs56-pconrad.github.io/topics/git_basic_workflow/) that you read in the previous lab. Read it again if you need to. The four essential commands we will be using are:

```
git pull
git add .
git commit -m "Initial version of lab01 files"
git push origin master
```

Before you proceed, make sure you understand what each of these commands does. Once you are clear about that, go ahead and type them out on a terminal while in your git directory. The above commands save a snapshot of your code on github. To check that this was done sucessfully open a web-browser and navigate to your repo on github. Then check to see that the starter code appears in your repo. 

Note 1: Everytime you add a new piece of logic to your code you should save a snapshot of the latest version of your code by issuing the commands: *git add ...* , *git commit ...* and *git push ...*. All the previous versions will be available to you as well and you have the option of reverting to older versions (We will see how in later labs). As you go through the rest of this lab you will essentially need to use these commands to keep track of the different versions of your code.

Note 2: In this lab you copied the starter code from a local directory on CSIL to your local git repo on the same machine. In the future labs we will look at how to copy the starter code from another git repo! 

Congratulations on integrating git into your workflow! Now proceed to the programming part of this assignment.


## Step 4: Solving the problems for this lab<a name="programs"></a>

If you are in a pair, make sure you switch the driver and navigator roles at this point. You must switch roles twice more before the end of the lab.
This assignment consists of 3 problems, each of which is described below. The first one is worth 20 points each, and the last two are worth 40 points each. Each should be solved in its own file and all three must be submitted for full assignment credit. These exercises are inspired by the ones from the textbook (in Ch. 2 and Ch. 3) - but they are NOT the same, so follow the instructions on THIS sheet carefully. 

You will need to create <b>three files named block.cpp, min4.cpp, and pi.cpp</b>:
Each corresponds to one of the problems listed below, which make up this lab.

For a reminder on how to open and use a text editor to create and edit new source files, refer back to Lab #0.

For all the subproblems given in this assignment you must compile your code frequently (as you develop it), and test it extensively with as many inputs as you can think of. 

<hr>

### Print a block

In lab01 git directory (e.g. lab01_alily_jgaucho) open a file called `block.cpp` using the same editor you used for the previous labs. In that file, write a program that takes an input from a user for the number of rows and number of columns and prints out a block of characters that is based on these 2 parameters. The program should keep asking the user for input, and printing out the result, until the user enters zero for each of the input parameters.

A session should look <b><i>exactly</i></b> like the following example (including whitespace and formatting - note that there is no whitespace at the end of each of these lines), for all the different inputs and the output:

<img src="block.png" width="700" alt="block program example" />

Each string printed by the program should include a newline at the end, but no other trailing whitespace (i.e. extra space characters at the end of the line).


To compile your code use the g++ command as in lab01 OR the simple make command as in lab01

`$ g++ -std=c++11 -o block block.cpp` 

OR

```
make block
```

If you used the first option (g++ ...) note that the -std=c++11 option in these commands is optional to use (that is, not critical to define). All this does is force the compiler to use the latest version of C++.

If you used the second option (make...) note that the make program is clever to compile only block.cpp into the block executable, even though there are other programs (cpp files) in that directory. Note that the C++11 compiler will not be used in the default make tool. But that should be okay for now.


<b>If you encounter an error, use the compiler hints and examine the line in question. If the compiler messsage is not sufficient to identify the error, you can search online to see when the error occurs in general.</b>

Run your executable as follows to test it out.
`$ ./block`

Remember to re-compile the relevant files after you make any changes to the C++ code.

As soon as you have finished one logical piece in your code, let's say you can print a row of 'Xs' instead of the whole block, save a version of your program using git. To do this use the git commands: *git add ...* , *git commit ...* and *git push ...*. 

Specifically you should type the following:

```
git add block.cpp   OR git add .
git commit -m "prints a row of Xs or whatever else your program does"
git push origin master
```

The first time you run the above commands, navigate to your git repo on github. Click on your commit history, you should see 2 commits - one that has the initial version of the code containing only the provided starter code, another that has your latest changes - that's version control in action - hurray!

Continue to the next part of the assignment. As you add new files and modify code, be sure to integrate the *git add ...* , *git commit ...* and *git push ...* routine into your workflow. 

<hr>


### Calculate the approximate value of PI

Write a C++ program that approximates the value of the constant π. Once again you should not resort to using predefind constants and functions for π, that are provided by C++ standard libraries. Instead you should compute the value of π based on the Leibniz formula for π. The formula is given below:

```
 1 – 1/3 + 1/5 – 1/7 + 1/9 ...  = pi/4
```

Put another way, the formula can be written as:

```
pi = 4 · [ 1 – 1/3 + 1/5 – 1/7 + 1/9 ... + (–1 ^ n)/(2n + 1) ]
```

The Leibniz formula works well for high values of n.

The program takes an input from the user for the value of n, which determines the number of terms in the approximation of the value of pi. The program then outputs the approximated value of pi as calculated by the Leibniz formula. You must also include a loop that allows the user to repeat this calculation for new values of 'n' until the user says she or he wants to end the program by issuing an input of -1 (or any other negative number). You may assume that the user always inputs an integer. 

The program should print a string of text to the terminal before getting each piece of input from the user. A session should look like the following example (including whitespace and formatting), showing the expected output for different inputs:

```
Enter the value of the parameter 'n' in the Leibniz formula (or -1 to quit):
0
The approximate value of pi using 1 term is: 4.000
Enter the value of the parameter 'n' in the Leibniz formula (or -1 to quit):
3
The approximate value of pi using 4 terms is: 2.895
Enter the value of the parameter 'n' in the Leibniz formula (or -1 to quit):
9
The approximate value of pi using 10 terms is: 3.042
Enter the value of the parameter 'n' in the Leibniz formula (or -1 to quit):
49
The approximate value of pi using 50 terms is: 3.122
Enter the value of the parameter 'n' in the Leibniz formula (or -1 to quit):
99
The approximate value of pi using 100 terms is: 3.132
Enter the value of the parameter 'n' in the Leibniz formula (or -1 to quit):
999
The approximate value of pi using 1000 terms is: 3.141
Enter the value of the parameter 'n' in the Leibniz formula (or -1 to quit):
9999
The approximate value of pi using 10000 terms is: 3.141
Enter the value of the parameter 'n' in the Leibniz formula (or -1 to quit):
-1
```
Be sure to have a newline after each "Enter the value..." prompt and no other white spaces.

Here is a link that gives the approximated values of pi for up to 1000 terms: [http://www.eveandersson.com/pi/gregory-leibniz](http://www.eveandersson.com/pi/gregory-leibniz)

In addition, all approximated floating pointer numbers must be displayed to exactly three digits after the decimal point. To do this you should use set the precision for displaying floating point numbers. This is done as follows:

```
cout.setf(ios::fixed); 	   // Display in fixed point notation. For example, display 1e-1 as 0.1 
cout.setf(ios::showpoint); // Always display the decimal point.
cout.precision(3);         // Set the number of digits to display after the decimal point to 3
```



<hr>


### Calculate the minimum of 4 numbers

In this part of the lab you will write a program that compares 4 input numbers and prints out the smallest one. 

**You should not use the *min()* function in C++ algorithm library or any other outside function that performs the minimum operation for you. Instead, you should base the program on the example programs provided to you that compare fewer inputs.** 


Start by examining the given examples, also described below:

<b>min2.cpp</b>

This program takes two command line arguments, and converts them to integers.  It then calls a function, smallest_of_two, that returns the smallest of the two numbers (or the value they share in case of a tie.) It then prints out the result of that function call.

<b>min3v1.cpp</b>

This is the first of two versions of a program that takes min2.cpp one step further, finding the smallest value from among three numbers. Again, if there is a tie, it prints the tie value. Look at the nested if/else statements and see if you can make sense of the logic. Seek help if you don't.

<b>min3v2.cpp</b>

This program does EXACTLY the same thing as min3v1.cpp, but does it with much cleaner, simpler code. Notice how we REUSE the smallest_of_two function to build up a smallest_of_three function. 

Your job in this step is to test min2, min3v1 and min3v2 with many different values and convince yourself that they work properly.

In the next step, you will be taking these programs to the next logical step in this sequence.

<b><i>Your main task</i></b>: Write min4.cpp
Write a program that works just like min2 and min3v1 and min3v2, except it takes four ints on the command line, and prints the smallest value, handling ties appropriately.

We encourage you to follow the model of min3v2.cpp if you can understand how this works, since your code will be far cleaner than trying to build this out of nested if/else statements.

If you DO use nested if/else statements, though, be sure that you indent and format your code appropriately.

Follow the pattern in min2 and min3v1/min3v2 in terms of all other issues and how they are handled, including the usage message, etc. Your program should look exactly like these except that it works on 4 inputs (note, there are no trailing whitespacse):

<img src="min4.png" width="500" alt="min4 program example" />

To compile your code use the g++ command as before.

`$ g++ -std=c++11 -o min4 min4.cpp`

Run your executable with different inputs to test it out.

<hr>


## Step 5: Submit your code<a name="submit"></a>

Once you are satisfied that your programs are correct, it is time to submit them. If you are working in a pair you should do the following steps to join the same group on submit.cs

### Joining the same group

* Navigate to https://submit.cs.ucsb.edu
* Go to CS16_Mirza_s17
* Click on the lab page. You will see a blue button named “Join Groups” on top of the page, Click on the button
* Click on you and your partner’s name. Create group.


### Submitting the assignment
Note: Please remember that you must submit the programs to obtain any credit for the assignment; just completing the programs is not enough.

*Submitting via the web interface*

* Login at https://submit.cs.ucsb.edu, then navigate to “CS16_Mirza_s17” and click on “lab01”. Then click “Make Submission”, and make your submission. Remember to submit all of the .cpp files.
* Once you submit, you should see a page detailing your submission. The system will automatically grade your program and will show you the results on this page after a 1 minute delay.

*Submitting via command line*

You can alternatively submit your code from the command line (terminal) on any CS machine, including the Phelps lab machines or the CSIL server. You can use this method when logged in remotely. 

Submit all the source files to this assignment by running the command:
`~submit/submit -p 629 block.cpp min4.cpp pi.cpp`
(629 is from the lab link https://submit.cs.ucsb.edu/p/629/group )

You can copy the URL shown in the output of the above and paste into a web browser to reach the submission result page.

Make sure the latest version of your code is also available on git hub by doing a final *git add ...*, *git commit ...*, *git push ....* routine. Then go to github and check that the latest version of your code is available there.

## Step 6: Check Submission Results<a name="checksubmission"></a>

After the 1 minute delay, the submit system will show your score and give you feedback on your submission. Refresh the webpage after a minute to see this information.

You may submit this lab multiple times. You should submit only after local compilation does not produce any errors and runs as expected. The score of the last submission uploaded before the deadline will be used as your assignment grade.


## Step 7: Done!<a name="done"></a>

You are now done with this assignment!
If you are in the Phelps lab or in CSIL, make sure to log out of the machine before you leave. Also, make sure to close all open programs before you log out. Some programs will not work next time if they are not closed. Remember to save all your open files before you close your text editor.

If you are logged in remotely, you can log out using the exit command:

`$ exit`


## Grading rubric 
In addition to the points given by submit.cs, our staff will be manually grading your work and giving you points based on the following rubric:
* (30 pts) Submitting on time, per instructions
* (40 pts) Code style, including but not limited to:
1. Code can be easily understood by humans familiar with C++ (including both the author(s) of the code, and non-authors of the code.)
2. Code is neatly indented and formatted, following standard code indentation practices for C++ as illustrated in either the textbook, or example code given in lectures and labs
3. Variable names choices are reasonable
4. Code is reasonably "DRY" (as in "don't repeat yourself")&mdash;where appropriate, common code is factored out into functions
5. Code is not unnecessarily or unreasonably complex when a simpler solution is available
* (50 pts) Creating a git repo correctly following the prescribed naming convention, adding your partner as a collaborator, pushing the latest version of your code to github, you and your partner joining the same group on submit.cs

</div>

