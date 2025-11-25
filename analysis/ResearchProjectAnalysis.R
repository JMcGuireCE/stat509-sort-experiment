Research Project: Analysing Different Speeds of Quick Sort and Merge Sort

- Comparing mean speed of quick sort and merge sort:

1. Method:

sd(mergeSort)= 20896.25

sd(quickSort)= 82201.89

Since the standard deviations do not equal we will proceed with method 2 to
compare the mean time spent to complete each sorting algorithm. 

t.test(mergeSort,quickSort)

2. Assumptions:

Random Samples 
Independent Samples 
Large sample size (n=10000>30)
note(both mergeSort and quickSort are not normally distributed, however the
sufficient sample size allows for the assumption to be met). 


3. Interpret:

We are 95% confident that the difference in average processing speeds between
merge sort and quick sort is between -308311.4 and -304986.3 nano seconds. 

3. Conclusion

Because the entire confidence interval is negative, we have evidence that 
quick sort is faster than merge sort on average.


- Comparing variance of speed of quick sort and merge sort:

var.test(mergeSort,quickSort)

1. Assumptions:

Random Samples 
Independent Samples 
both mergeSort and quickSort are not normally distributed, so we lack the validity
to make any claims, however, we shall proceed.


2. Interpret:

We are 95% confident that the ratio of the variance of speed using merge sort, and
and the variance of speed using quick sort is between 0.0621 and 0.0672.

3. Conclusion

Because the entire confidence interval is less than 1, we have evidence that 
quick sort is has a greater variance of speed than merge sort, however, because 
neither algorithm's data is normally distributed, we can not be certain the test
is valid. 

Hypothesis Test:

- Mean:

1. Assumptions:

Random, Independent Samples.
Since the sorting algorithms are not normally distributed, the assumptions are not
met.

2. Interpret: 

mean speed of merge sort = mu1
mean speed of quick sort = mu2
H0: mu1 = mu2
Ha: mu1 != mu2

3. Conclusion:

Since the p-value of the t.test is less than a = 0.05, we reject the null 
hypothesis and have evidence that the mean speed in nano seconds is different
between merge sort and quick sort. 


- Variance : 

1. Assumptions:

Random, Independent Samples.
Since the sorting algorithms are not normally distributed, the assumptions are not
met.

2. Interpret: 

H0: variance of merge sort = variance of quick sort
Ha: variance of merge sort != variance of quick sort

3. Conclusion:

Since the f-value is 0.064621 and is not less than 0.025, or greater
than 0.975, we reject the null hypothesis and have evidence that the variance
of merge sort and quick sort do not equal. 
