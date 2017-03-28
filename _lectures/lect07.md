---
num: "lect07"
desc: "Test driven development, more on functions and nested loops"
ready: true
pdfurl: /lectures/CS16_Lecture7.pdf
annotatedpdfurl: /lectures/CS16_Lecture7_ann.pdf
annotatedready: true
lecture_date: 2017-01-31
---

# Code from lecture
[https://github.com/ucsb-cs16-wi17/lecture-01-31](https://github.com/ucsb-cs16-wi17/lecture-01-31)

We will learn the following concepts by looking at the specific problem of drawing a house with a triangular roof and rectangular body!

# Topics

## Top-down design approach

* Breaking down the problem 
* Code design: figuring out what functions you need to implement and the inputs and outputs for each function. This gives us the function declarations!
* Unit testing
* Integrating code (roof+body=house)
* Black box testing  (test your entire program with different inputs)

## Test driven development

* Write test code and actual code side by side- so your implementation is always tested
* Start with function stubs
* Write the simplest test case and make your code pass that case
* Write another test case, expect your code to fail, see it fail, then add code to pass that test case (and the previous one).
* With every new test case, we have to make sure that all our previous tests still pass - this is a great way to make sure that things that were working before are not broken by new code!

## Designing nested loops (see example of drawing the roof)
* When do we need a loop?
* When do we need a nested loop?

