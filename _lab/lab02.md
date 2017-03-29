---
layout: lab
num: lab02
ready: false
desc: "ASCII Art: Logical operators, integrating github into your workflow"
assigned: 2017-04-18 9:00:00.00-7
due: 2017-04-25 11:59:00.00-7
---

# Goals for this lab 
 
By the time you have completed this lab, you should be able to

* Use if/else and for loops to print various kinds of shapes with &quot;ASCII Art&quot;
* Show that you understand how to work through the basic process of test-driven development in C++

Below are the links to different sections of the lab:

* [Skills Needed ](#skills){: data-ajax="false"}
* [Ascii Art](#asciiart){: data-ajax="false"}
* [An example for you to follow: starL](#starL){: data-ajax="false"}
* [What you'll be doing](#yourgoal){: data-ajax="false"}
* [Step by Step Instructions](#stepbystep){: data-ajax="false"}
* [Evaluation and grading](#eval){: data-ajax="false"}



## Skills Needed <a name="skills"></a>

By now, we expect that you are comfortable with these basic skills from lab00 and lab01 so we will no longer describe them in as much detail as we did previously:
 
* Using a text-editor to create and/or edit C++ programs
* Creating a git repo on github
* Cloning your github to your local machine
* Integrating git command-line tools into your workflow (*git add...*, *git commit..*, *git push ...*)
* Compiling and running C++ programs
* Using the computers in both the CSIL and the Phelps labs to do basic things:
    * Performing basic management of directories and files with Unix commands such as mkdir, cd, pwd, ls, cp, mv
    * Submitting assignments in this class with the submit.cs system, and checking your results

## What we'll be doing in this lab: ASCII Art <a name="asciiart"></a>

There was a time when laser printers either hadn't been invented yet, or were not yet widely available. Thus, the only kind of printer most folks had access to was something called a &quot;line printer&quot;, which printed only from left to right, top to bottom, and could only print the kinds of characters you find on a typewriter keyboard.

So, you might find folks making pictures like this one, found at http://chris.com/ascii/

 <pre>
                                 .ze$$e.
              .ed$$$eee..      .$$$$$$$P""
           z$$$$$$$$$$$$$$$$$ee$$$$$$"
        .d$$$$$$$$$$$$$$$$$$$$$$$$$"
      .$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$e..
    .$$****""""***$$$$$$$$$$$$$$$$$$$$$$$$$$$be.
                     ""**$$$$$$$$$$$$$$$$$$$$$$$L
                       z$$$$$$$$$$$$$$$$$$$$$$$$$
                     .$$$$$$$$P**$$$$$$$$$$$$$$$$
                    d$$$$$$$"              4$$$$$
                  z$$$$$$$$$                $$$P"
                 d$$$$$$$$$F                $P"
                 $$$$$$$$$$F 
                  *$$$$$$$$"
                    "***""  Gilo94'
</pre>

For now, we'll be keeping things much simpler: we are going to do some very simple ASCII art of letters, numbers and symbols, in order to practice with if/else and for loops.

The first few exercises will be very simple, but they get progressively more challenging.

## An example for you to follow: starL  <a name="starL"></a>

As an example, we will write a C++ function that returns a C++ string that when printed to cout,  makes the shape of prints the letter L with stars, at any width or height, provided both width and height are &gt;= 2

If either the parameter width or height is less than 2, the function returns an empty string.

The function will have the following <em>function prototype:</em>

<pre>string starL(int width, int height);</pre>

* As a reminder, a function prototype is the first line of the function definition (the header) followed by a semicolon instead of the function body&mdash;it is used to introduce the function to the compiler, in case the function definition isn't coming until later.

* You can read more about function prototypes here: [C++: function prototypes](https://ucsb-cs16.github.io/topics/cpp_function_prototypes/)

The following table shows various calls to this function, along with what the string returned looks like when printed using <code> cout << starL(w,h); </code>

The rule is that the L should have width at least 2, and height at least 2, otherwise the result is an empty string, and printing an empty string results in no output.

![starL](/lab/lab02/starL.png){:height="400px"}


So, this is a fairly easy function to write. This will do the job, and is provided for you as an example of how functions like this should be written.


To test whether this function works, we can write a simple main that takes the command line arguments, converts them to integers with stoi, 
and then passes those to the function:

## What you'll be doing <a name="yourgoal"></a>

What you'll be doing in this lab is writing three similar functions: startT, starC and starZ.  

*Sample values returned from starT*

![starT](/lab/lab02/starT.png){:height="400px"}

*Sample values returned from starC*

starC renders the letters C, but requires a minimum width of 2, and a minimum height of 3.  Otherwise it returns an empty string.

![starC](/lab/lab02/starC.png){:height="400px"}


*Sample values returned from starZ*

starZ renders the letters Z, but requires a minimum width of 3.   It only takes one parameter, because the height and width are always assumed to be equal.

![starZ](/lab/lab02/starZ.png){:height="400px"}

# Step by Step Instructions <a name="stepbystep"></a>

## Step 1: Getting Started 

* In the previous lab you probably noticed that everytime you pushed your code to git you had to enter your username and password. To avoid this we ask that you use a ssh-key method to establish your identity with git hub.
The main task is to generate a private/public key and upload your public key to github. To do this refer to this tutorial: [https://ucsb-cs56-pconrad.github.io/topics/github_ssh_keys/](https://ucsb-cs56-pconrad.github.io/topics/github_ssh_keys/)

* Decide if you are working alone, or working in a pair.  

If you are working in a pair:

* Go to submit.cs, navigate to CS16, S17, lab02, and create a team for you and your pair partner.   
* Decide on initial navigator and driver.
* Driver, log on to driver's CSIL account.
* Go to our class organization on github: [ucsb-cs16-sp17](https://github.com/orgs/ucsb-cs16-sp17/dashboard) and create a new repo following the naming conventions introduced in previous labs. 
* Add your partner as a collaborator on the newly created git repo
* Log on to CSIL, bring up a terminal window, and clone your repo in your ~/cs16/ directory following the instructions from previous labs

## Step 2:  Get the startercode

Copy the code from the instructor's account on the CSIL server into your local git directory.

First, Move to the local git directory:

```
cd local_git_directory
(Example: cd lab02_alily_jgaucho) 
```

Then, Copy the code to the local git directory: (Don't forget the period (.) in the end)

```
cp /cs/faculty/dimirza/cs16-sp17/labs/lab02-startercode/* .
```

After executing this command in your local git directory ( ~/cs16/lab02_alily_jgaucho/) . If you use the ls command, you should see the following files:

```
-bash-4.2$ ls
backslash.cpp  README.md  starC.cpp  starL.cpp  starT.cpp  starZ.cpp
-bash-4.2$ 
```

Save the initial version of your code by typing out the following commands:

```
git add .
git commit -m "Initial version"
git push origin master
```


## Step 3: Practicing with the starL program 

First compile the starL.cpp file that you have in this week’s directory with the option (-std=c++11 ) as per the following command:

```
g++ -std=c++11 -o starL starL.cpp
```

Run the program with a few command line parameters. You’ll notice something special happens when you pass in the command line parameters -1 -1.

<pre>
 ./starL 3 4
 ./starL 4 3
 ./starL
 ./starL 2 1
 ./starL -1 -1
</pre>

With the command line parameters -1 -1, the program runs a set of tests on itself to make sure that the function starL inside the program is functioning correctly.  So, you should be able to get some feedback on whether your code is correct before you even send it to the submit program.  The code uses stoi to convert the argv[1] and argv[2] to integer values, and compare against -1.

Look over the code and try to understand how it works.  When you feel ready, move on to the next step, and try tackling the starT.cpp, starC.cpp and starZ.cpp programs.

## Step 4: Writing the starT program 

Your job now is to start edit the starT.cpp program, which has a function inside of it that is a "stub".  That function does NOT produce the correct output---it always just returns the string "stub".   You need to replace that code with a proper implementation of starT.  You can use the implementation of starL in the starL.cpp file as a model.

Compile your starT.cpp to the execuatable star. Suppose we want your program to draw a T with width 3 and height 2, we will run your starT executable as follows:

```
$./starT 3 2
```

In general the parameters to the startT program are width, followed by height. You should take this into consideration when writing your main function. To write the starT() function refer back to the description of starT earlier in this lab.   You can also run the program with arguments of -1 -1 to run the internal tests and see whether your implementation is correct.


When you think you have a correct implementation, try submitting to the submit.cs system.  You can submit just your starT.cpp program to see how far along you've gotten:

```
~submit/submit -p 635 starT.cpp 
```

Note that this will show failures for <code>starC.cpp</code> and <code>starZ.cpp</code>, which are files that you'll be working on at a later step.

You could also just submit the "stubs" for those&mdash;though those will fail some or all of the tests:

```
~submit/submit -p 635 starC.cpp starT.cpp starZ.cpp
```

Either way, for now, concentrate only on the test failures that pertain to starT.cpp and try to address any problems you encounter.  If you fix these NOW before moving on to starC.cpp and/or starZ.cpp, you will likely have better success, because what you learn from fixing your mistakes will help you get those other parts solved more quickly and easily.

Some rules to keep in mind for the starT function:

* EVERY line of your T should have exactly the same number of characters, and should end in a newline&mdash;remember to pad out each line with spaces.
* Return a string that represents the letter T with the correct width and height, but only if height &gt;=2, and width is an odd number &gt;=3
* if the height and width values are not valid, return an empty string

Hints: recall that:

* the <code>%</code> operator can be used to test where a number is odd or even
* the <code>&&</code> operator means "and"
* the <code>||</code> operator means "or"
* the opposite of &gt;= is &lt;, not &lt;=

Also, for starT.cpp:

* If there are not exactly two command line args after the program name (one for width and one for height), print a usage message: 

```
Usage: ./starT width height
```

* If the height and width are both -1, then invoke the internal tests.  Don't change those.  If you do, then you may lose points.


Save the new version of your code with the starT implementation by typing out the following commands:

```
git add starT.cpp
git commit -m "Implemented starT()"
git push origin master
```

## Step 5: Writing the starC program 

Next, write the starC program.   Follow the same basic procedure as for the starT.cpp program.

To get started, look at the table near the top of this lab that shows correct output for the starC program, as well as looking at the test cases in the runTests() function of the starC.cpp file in your directory.

Note that you'll need to add some code to the main, but this time the rules are different.   The minimum width is 2, and the minimum height is 3&mdash;everything else returns a null string (except for the values -1 for width and -1 for height&mdash;when passed in combination, the tests should be run.)

When:

* You can run your code with: <code>./starC -1 -1</code> and all the tests pass
* You can run your code on values such as <code>./starC 4 5</code> and <code>./starC 5 4 </code> and see the same output as what is shown in the table, AND
* When typing in a command line that doesn't have exactly two arguments after <code>./starC</code> produces the correct error message

then, you are ready to try testing your code on the submit system.

If you submit starC.cpp together with your starT.cpp program, your submit command will look like this:

```
~submit/submit -p 635 starC.cpp starT.cpp 
```

(The order of the files doesn't matter&mdash;list starT.cpp first, or starC.cpp first, aand either way, the result is the same.)

Note that failures for <code>starZ.cpp</code> may still show up, but we need not be concerned about those yet.  

Concentrate only on the test failures that pertain to starC.cpp and starT.cpp and try to address any problems you encounter.  Once all of those pass, move on to the starZ.cpp program:

Save the new version of your code with the starT and starC implementation by typing out the following commands:

```
git add starC.cpp
git commit -m "Implemented starC()"
git push origin master
```



## Step 6: Writing the starZ program 

For the starZ.cpp program, we have these rules:

* Take only one command line parameter: the width. The height will automatically be set equal to the width.

The starZ function follows these rules:

* return a string that draws  the letter Z with the correct width and height, but only if width &gt;=3 
* return an empty string if the value passed in for width is not valid, print nothing at all.

Hints for the middle part of the Z:

* Take a look at the program backslash.cpp which is in your directory.   Try compiling and running it.  Look at the source code and see if there are any hints there.
* As you can see, it produces a backslash.cpp produces a backslash of a given width, as shown here.   Look at the source code, and consider how you might turn backslash.c into forwardslash.c&mdash;in fact, that might be a good warm-up exercise for making the starZ.c program.     Note that the backslash.cpp program does not contain an internal test harness.
* Note that the backslash.cpp program uses several "helper functions".  You might find that to be a useful technique in writing your own code.   You may introduce whatever helper functions would be useful to you.

```
-bash-4.1$  ./backslash
Usage: ./backslash width
-bash-4.1$ ./backslash 3
*
 *
  *
-bash-4.1$ ./backslash 5
*
 *
  *
   *
    *
-bash-4.1$ ./backslash 2
*
 *
-bash-4.1$ ./backslash 4
*
 *
  *
   *
-bash-4.1$ 
```


As with starC.cpp, you should add code to starZ.cpp so that you are able to invoke the internal tests by typing <code>./starZ -1 </code>.  Note that this time, there is only one parameter.

And, if there is not exactly one parameter, there should be an appropriate "usage" message that follows the pattern of the other programs&mdash;except that there is only a width parameter in this program.

When you have a version that can pass its internal tests, try submitting it along with your starT.cpp and starC.cpp to the submit.cs system.  

```
~submit/submit -p 635 starC.cpp starT.cpp starZ.cpp
```

If there are errors reported, fix them.    

When you have a clean build, you are nearly done with this lab.   I say "nearly" done, because you should take one last look over the grading rubric to see if there is anything you need to adjust before doing your final submit and calling it a day.

Note:
You MUST make one final submission that includes ALL of your files.  For getting incremental feedback while working on the lab, it is fine to submit one at a time, but for GRADING purposes, your LAST submission (in time) must be a complete submission of EVERYTHING.   In the ideal case (for you), that submission is completely "green", i.e. all test cases pass, and you have a perfect score (at least from the standpoint of the points you are awarded for passing the test cases.)

If there are parts you can't figure out, be sure to submit all of your files anyway to maximize the number of points you receive based on the parts that '''are''' working.

Make sure you do a final *git add ..*, *git commit ...* and *git push ..* to make sure the latest version of your code is available on github.

# Evaluation and Grading <a name="eval"></a>
 
Mechanics:

* (30 pts) submitting starT.cpp, starC.cpp and starZ.cpp to the submit system (10 points each)
* (30 pts) submission is on time and follows instructions 
* (30 pts) starT.cpp, starC.cpp and starZ.cpp files submitted  have good header comments 


Correctness

* (150 pts) 15 tests, ten points each, executed by submit.cs system

Style: Style points will be provided based on your github submission, so make sure you have one

* (10 pts) Correct creation of the lab02 github repo in our class organization following the naming conventions provided in the lab. Addig your partner as collaborator and partner accepting the invitation. Both partners joining the same group on submit.cs

* (30 pts) All three programs have good programming style, including proper use of indentation, reasonable choices for variable names, readable code, reasonable use of whitespace, and other good programming practices. You must have good header comments as illustrated in the coding examples done in class. First line should be the name of your file, followed by date of creation, author and a brief description of the program. You must use curly braces in the body of all control structures (if-else, for and while) even if they contain a single statement. You should not mix tabs and spaces when indenting your code

Refer back to the feedback provided by the teaching staff on your lab02 code on github.


