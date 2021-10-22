# HTSlib exploit + Toorhc protection

This is the exploit branch of HTSlib 1.4.

The htstest contains toorhc protected hts.

### Building HTSlib

```sh
autoheader     # If using configure, generate the header template...
autoconf       # ...and configure script (or use autoreconf to do both)
./configure --prefix=$PWD/install --disable-lzma 
make -j
make install
```
The lib should be in the `./install/lib` folder

### Running test 

Default run

```sh
<path-to-hellohts> -c <path-to-cram-file>
```
Using Toorhc

```sh
LD_LIBARAY_PATH=<path-to-hts-lib> <path-to-intravirt.so> \
    <path-to-glibc.so> <path-to-hellohts> -c <path-to-cram-file>
```
