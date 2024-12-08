# Goals:
-   find overloaded peerings/paths and shift the some of that traffic load somewhere else
BECAUSE overloading is a problem.

## • input:

– routing (from all Peer Routers)
    • includes all the possible paths

– per-prefix load (from all PRs)

– capacity of peer links (static)

– (all for one PoP)

## algorithm:

– look at each peering,
    check if it’s overloaded,

if so:
    compute an alternative path

## • output:

– set of override BGP routes
    • split prefixes if necessary, so each bundles is about 250Gb/s

– injected with local-pref to take priority
