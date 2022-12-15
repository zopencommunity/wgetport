## Patch Description

netrc is calling fmemopen which doesn't exist.
Temporary hack to just #ifdef it out but either
a) we should provide the function 
or
b) figure out why the generated version isn't being picked up

