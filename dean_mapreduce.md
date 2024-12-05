# MAPREDUCE
-    fault tolerant system(deals with all the faults) running over many workstations and scales to huge computations and datasets by running over many workshops by parallelization
-    logic for specific type of computations:
    -     Map: process input into (key,value) pairs and thats how they group things, *its only use if you have that kind of data and many apps use this pattern*
    -     sort: how they group things
    -     reduce: group the results and process each group             



         
## why is sequential word count in python slow and whats wrong?
- the web is large and this is not parallel, so its gonna be a huge amount of time
- requires O(n) memory for n unique words, huge memory for mapreducing the entire web

# Easy
in the MR program, all the user needs to care about is the map and reduce function, the concurrency and parallelism is handled by machine

## MR abstraction:
read every line
split line into pieces
word 1 occurs 1 time
word 2 occurs 1 time
word 2 occurs 1 time
word 3 occurs 1 time

all in k-v pairs and then reduce takes all the k-v and totals them up and returns final k-v pairs

but as users, sometimes you have to think about what is the exact "key-value" that will give me the correct output that I want.

# word count ex:
- shuffle phase for gathering k-v from different workers


## why sorting?
- sorting is for grouping and why do we sort?how can it address memory which hashing was not doing?
    -   group different k-vs
    -   sorting can be done offline and can run out of memory, it can scale tp big size/ability to sort offline is an old-school nice method
    -   nlogn time complexity

# what the penalty of shuffling?
- sorting is super expensive
- move data around across machines [IMP]

# What problems might occur:
 ## correctness:
-   some machine fails
-   save checkpoints in each mapper
-   and if o/p is lost, just recompute it like [Fox]
-   
 ## performance probs
 - if one mapper is really slow, it hurts overall performance
 -  unbalanced workloads due to hot keys and unbalanced inputs
 - 

# PERFORMANCE RESULTS FROM PAPER:
- 
