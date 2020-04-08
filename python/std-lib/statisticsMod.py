# Statistics Module
import statistics

ages = [10, 13, 14, 12, 11, 10, 15]
print("The ages:", ages)

# Basics
print("Mean:", statistics.mean(ages))
print("Mode:", statistics.mode(ages))
print("Median:", statistics.median(ages))

# Advanced
print("Variance:", statistics.variance(ages))
print("Standard Deviation:", statistics.stdev(ages))