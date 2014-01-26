Overview
=======

This is a problem first posed to my group by my mentor at Launch Academy, Jason Zopf (github.com/jzgit). The problem is as follows:

Suppose you have a string of a certain length consisting of all "a," "b," and "c." How many combinations of "abc" are possible, reading from left to right?

For example, in the string "aabcbc," there are six combinations of "abc." 

Specifically, Jason supplied us with a generated string of a million characters, which we were asked to parse. With a string of a million characters, the problem was given an extra twist in that performance became a consideration.

abc problem
=======

I solved this problem three ways (It was a weekend and I couldn't get ahold of Jason to verify my answer, so I had to think of other solutions!). You can see those solutions in the files abc_one_loop.rb, abc_two_loops.rb, and abc_combinatorics.rb.

abcd problem
=======

Having solved the abc problem, Jason challenged me to find a solution for counting the combinations of "abcd" in a given string. My solution can be found in abcd_one_loop.rb.

abc problem - generalized
=======

The final challege was to generalize the solution to find the number of combinations in a string for any given string that has unique characters. The solution can be found in abc_problem_generalized.rb.

further steps
=======
The next challenge is to allow for the desired string to have repeated characters. For example, finding the total occurrences of "aabc" in a string. Stay tuned!

latest notes:
!(x) = x + (x-1) + (x-2) + (x-3) + ... + 0 = (x^2 + x)/2



credits
=======
Initial brainstorming and early code drafts with Landon Marder (github.com/landonmarder).
Guidance, encouragement, and code review by Jason Zopf (github.com/jzgit). He's an awesome mentor - for a Broncos fan.
