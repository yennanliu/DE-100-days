# Cache 
- Can be used in almost every layer of computing: hardware, operating systems, web browsers, web applications, and more.

## Type
- Single nodes
- Multiple nodes
	- global caches
	- distributed caches

## Application server cache
- Placing a cache directly on a request layer node enables the local storage of response data. Each time a request is made to the service, the node will quickly return local cached data if it exists. If it is not in the cache, the requesting node will query the data from disk. The cache on one request layer node could also be located both in memory (which is very fast) and on the node’s local disk (faster than going to network storage).

## Content Distribution Network (CDN)
- CDNs are a kind of cache that comes into play for sites serving large amounts of static media. In a typical CDN setup, a request will first ask the CDN for a piece of static media; the CDN will serve that content if it has it locally available. If it isn’t available, the CDN will query the back-end servers for the file, cache it locally, and serve it to the requesting user.

- If the system we are building isn’t yet large enough to have its own CDN, we can ease a future transition by serving the static media off a separate subdomain (e.g. static.yourservice.com) using a lightweight HTTP server like Nginx, and cut-over the DNS from your servers to a CDN later.

## Cache Invalidation
- While caching is fantastic, it does require some maintenance for keeping cache coherent with the source of truth (e.g., database). If the data is modified in the database, it should be invalidated in the cache; if not, this can cause inconsistent application behavior.
- Type
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