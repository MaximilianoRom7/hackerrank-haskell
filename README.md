# hackerrank-haskell
hackerrank problem solutions written in haskell

the name of each .hs file corresponds with the title of each problem I solved in hackerrank so far.

How to compile:

```
mkdir bin && make install
```

make will create a binary file in the directory bin for each .hs file

if you add a new .hs file in this directory and you want to compone just run the bash script ./makefile.sh
this will generate a Makefile.gen, just override the Makefile with:

```
./makefile.sh
mv Makefile.gen Makefile
make install
```


enjoy... :)
