# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is the management of the different stages of change
in a given project. It refers both to the process of isolating
iterations for future reference and to the organized integration
of those iterations. It most useful for identifying and isolating
problems and managing multi-input iteration.

* What is a branch and why would you use one?

A branch is an indexed iteration isolated from the master. Using 
branches manages conflicts between concurrent iterations as well
as creates an indexed record of iterations for reference. These 
qualities are what allows for efficient and assessable development.

* What is a commit? What makes a good commit message?

A commit is a given state of development made constant. By making
an iteration constant you add it to the record of development.

A good commit message communicates the details of a given change
clearly and succinctly.

* What is a merge conflict?

A merge conflict occurs when Git does not know how to integrate a
change. Typically this occurs when multiple changes affect a given
file/line/etc. *Ex: Johny and Jimmy are both working on a stool.
Johny changes it from a 4-legged to a 3-legged stool. Jimmy designs
sweet claw feet for the legs. They both try to merge their features.
Conflict ensues.*