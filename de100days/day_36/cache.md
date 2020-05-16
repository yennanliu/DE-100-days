# Cache 

## Application server cache

## Content Distribution Network (CDN)

## Cache Invalidation
- Write-through cache
- Write-around cache
- Write-back cache

## Cache eviction policies
-	First In First Out (FIFO)
	- The cache evicts the first block accessed first without any regard to how often or how many times it was accessed before.
- Last In First Out (LIFO)
	- The cache evicts the block accessed most recently first without any regard to how often or how many times it was accessed before.
- Least Recently Used (LRU)
	- Discards the least recently used items first.
- Most Recently Used (MRU)
	- Discards, in contrast to LRU, the most recently used items first.
- Least Frequently Used (LFU)
	- Counts how often an item is needed. Those that are used least often are discarded first.
- Random Replacement (RR)
	- Randomly selects a candidate item and discards it to make space when necessary. 

## Ref
- https://www.educative.io/courses/grokking-the-system-design-interview/3j6NnJrpp5p