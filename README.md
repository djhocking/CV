CV
==

My curriculum vitae and other summaries of my scientific activities. This is an attempt to keep organized so I don't have dozens of versions in MS Word for different jobs and websites and such. The repo was inspired (and forked from) Ethan White. 

My current plan is to create a branch for each position where a different CV is needed or for grants when short 1-2 page CV versions are needed. These will be hanging branches that won't get merged back in. I'm not sure yet if this will be more efficient but I think it will be easier to keep the master CV copy updated with everything.

## Build

The bash script `build_cv.sh` will run the make file to build the pdf and html version of the cv then push the html to gh-pages so it can be viewed online at [http://djhocking.github.io/CV/](http://djhocking.github.io/CV/).

```
bash build_cv.sh
```
