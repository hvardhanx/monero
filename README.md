# Monero

Copyright (c) 2014-2019 The Monero Project.   
Portions Copyright (c) 2012-2013 The Cryptonote developers.

## Development resources

- Web: [getmonero.org](https://getmonero.org)
- GitHub: [https://github.com/monero-project/monero](https://github.com/monero-project/monero)

## Build Status

### IMPORTANT

These builds are of the master branch, which is used for active development and can be either unstable or incompatible with release software. Please compile release branches.

| Operating System      | Processor | Status |
| --------------------- | -------- |--------|
| Ubuntu 16.04          |  i686    | [![Ubuntu 16.04 i686](https://build.getmonero.org/png?builder=monero-static-ubuntu-i686)](https://build.getmonero.org/builders/monero-static-ubuntu-i686)
| Ubuntu 16.04          |  amd64   | [![Ubuntu 16.04 amd64](https://build.getmonero.org/png?builder=monero-static-ubuntu-amd64)](https://build.getmonero.org/builders/monero-static-ubuntu-amd64)
| Ubuntu 16.04          |  armv7   | [![Ubuntu 16.04 armv7](https://build.getmonero.org/png?builder=monero-static-ubuntu-arm7)](https://build.getmonero.org/builders/monero-static-ubuntu-arm7)
| Debian Stable         |  armv8   | [![Debian armv8](https://build.getmonero.org/png?builder=monero-static-debian-armv8)](https://build.getmonero.org/builders/monero-static-debian-armv8)
| macOS 10.11             |  amd64   | [![macOS 10.11 amd64](https://build.getmonero.org/png?builder=monero-static-osx-10.11)](https://build.getmonero.org/builders/monero-static-osx-10.11)
| macOS 10.12             |  amd64   | [![macOS 10.12 amd64](https://build.getmonero.org/png?builder=monero-static-osx-10.12)](https://build.getmonero.org/builders/monero-static-osx-10.12)
| macOS 10.13             |  amd64   | [![macOS 10.13 amd64](https://build.getmonero.org/png?builder=monero-static-osx-10.13)](https://build.getmonero.org/builders/monero-static-osx-10.13)
| FreeBSD 11            |  amd64   | [![FreeBSD 11 amd64](https://build.getmonero.org/png?builder=monero-static-freebsd64)](https://build.getmonero.org/builders/monero-static-freebsd64)
| DragonFly BSD 4.6     |  amd64   | [![DragonFly BSD amd64](https://build.getmonero.org/png?builder=monero-static-dragonflybsd-amd64)](https://build.getmonero.org/builders/monero-static-dragonflybsd-amd64)
| Windows (MSYS2/MinGW) |  i686    | [![Windows (MSYS2/MinGW) i686](https://build.getmonero.org/png?builder=monero-static-win32)](https://build.getmonero.org/builders/monero-static-win32)
| Windows (MSYS2/MinGW) |  amd64   | [![Windows (MSYS2/MinGW) amd64](https://build.getmonero.org/png?builder=monero-static-win64)](https://build.getmonero.org/builders/monero-static-win64)

## Introduction

Monero is a private, secure, untraceable, decentralised digital currency. You are your bank, you control your funds, and nobody can trace your transfers unless you allow them to do so.

## License

See [LICENSE](LICENSE).

## Compiling Monero from source

### Dependencies

The following table summarizes the tools and libraries required to build. A
few of the libraries are also included in this repository (marked as
"Vendored"). By default, the build uses the library installed on the system,
and ignores the vendored sources. However, if no library is found installed on
the system, then the vendored source will be built and used. The vendored
sources are also used for statically-linked builds because distribution
packages often include only shared library binaries (`.so`) but not static
library archives (`.a`).

| Dep          | Min. version  | Vendored | Debian/Ubuntu pkg    | Arch pkg     | Fedora              | Optional | Purpose         |
| ------------ | ------------- | -------- | -------------------- | ------------ | ------------------- | -------- | --------------- |
| GCC          | 4.7.3         | NO       | `build-essential`    | `base-devel` | `gcc`               | NO       |                 |
| CMake        | 3.5           | NO       | `cmake`              | `cmake`      | `cmake`             | NO       |                 |
| pkg-config   | any           | NO       | `pkg-config`         | `base-devel` | `pkgconf`           | NO       |                 |
| Boost        | 1.58          | NO       | `libboost-all-dev`   | `boost`      | `boost-devel`       | NO       | C++ libraries   |
| OpenSSL      | basically any | NO       | `libssl-dev`         | `openssl`    | `openssl-devel`     | NO       | sha256 sum      |
| libzmq       | 3.0.0         | NO       | `libzmq3-dev`        | `zeromq`     | `zeromq-devel`      | NO       | ZeroMQ library  |
| OpenPGM      | ?             | NO       | `libpgm-dev`         | `libpgm`     | `openpgm-devel`     | NO       | For ZeroMQ      |
| libnorm[2]   | ?             | NO       | `libnorm-dev`        |              |                     | YES      | For ZeroMQ      |
| libunbound   | 1.4.16        | YES      | `libunbound-dev`     | `unbound`    | `unbound-devel`     | NO       | DNS resolver    |
| libsodium    | ?             | NO       | `libsodium-dev`      | `libsodium`  | `libsodium-devel`   | NO       | cryptography    |
| libunwind    | any           | NO       | `libunwind8-dev`     | `libunwind`  | `libunwind-devel`   | YES      | Stack traces    |
| liblzma      | any           | NO       | `liblzma-dev`        | `xz`         | `xz-devel`          | YES      | For libunwind   |
| libreadline  | 6.3.0         | NO       | `libreadline6-dev`   | `readline`   | `readline-devel`    | YES      | Input editing   |
| ldns         | 1.6.17        | NO       | `libldns-dev`        | `ldns`       | `ldns-devel`        | YES      | SSL toolkit     |
| expat        | 1.1           | NO       | `libexpat1-dev`      | `expat`      | `expat-devel`       | YES      | XML parsing     |
| GTest        | 1.5           | YES      | `libgtest-dev`[1]    | `gtest`      | `gtest-devel`       | YES      | Test suite      |
| Doxygen      | any           | NO       | `doxygen`            | `doxygen`    | `doxygen`           | YES      | Documentation   |
| Graphviz     | any           | NO       | `graphviz`           | `graphviz`   | `graphviz`          | YES      | Documentation   |
| lrelease     | ?             | NO       | `qttools5-dev-tools` | `qt5-tools`  | `qt5-linguist`      | YES      | Translations    |
| libhidapi    | ?             | NO       | `libhidapi-dev`      | `hidapi`     | `hidapi-devel`      | YES      | Hardware wallet |
| libusb       | ?             | NO       | `libusb-dev`         | `libusb`     | `libusb-devel`      | YES      | Hardware wallet |
| libprotobuf  | ?             | NO       | `libprotobuf-dev`    | `protobuf`   | `protobuf-devel`    | YES      | Hardware wallet |
| protoc       | ?             | NO       | `protobuf-compiler`  | `protobuf`   | `protobuf-compiler` | YES      | Hardware wallet |


[1] On Debian/Ubuntu `libgtest-dev` only includes sources and headers. You must
build the library binary manually. This can be done with the following command ```sudo apt-get install libgtest-dev && cd /usr/src/gtest && sudo cmake . && sudo make && sudo mv libg* /usr/lib/ ```
[2] libnorm-dev is needed if your zmq library was built with libnorm, and not needed otherwise

Install all dependencies at once on Debian/Ubuntu:

``` 
sudo apt update && sudo apt install build-essential cmake pkg-config libboost-all-dev libssl-dev libzmq3-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libldns-dev libexpat1-dev doxygen graphviz libpgm-dev qttools5-dev-tools libhidapi-dev libusb-dev libprotobuf-dev protobuf-compiler 
```

Install all dependencies at once on macOS with the provided Brewfile:
``` 
brew update && brew bundle --file=contrib/brew/Brewfile 
```

FreeBSD one liner for required to build dependencies
```
pkg install git gmake cmake pkgconf boost-libs cppzmq libsodium
```

### Cloning the repository

Clone recursively to pull-in needed submodule(s):

`$ git clone --recursive https://challenge.summitto.com/summitto/challenge`

If you already have a repo cloned, initialize and update:

`$ cd challenge && git submodule init && git submodule update`

### Build instructions

#### On Linux and macOS

* Install the dependencies noted above
* Change to the root of the source code directory, and build:

        mkdir -p build && cd build && cmake -DCMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS} -O0" .. && make -j[x] (x = number of jobs)

    *Note*: If cmake can not find zmq.hpp file on macOS, installing `zmq.hpp` from
    https://github.com/zeromq/cppzmq to `/usr/local/include` should fix that error.
    
* The resulting executables can be found in `build/bin`

Dependencies need to be built with -fPIC. Static libraries usually aren't, so you may have to build them yourself with -fPIC. Refer to their documentation for how to build them.

* **Optional**: build documentation in `doc/html` (omit `HAVE_DOT=YES` if `graphviz` is not installed):

    ```bash
    HAVE_DOT=YES doxygen Doxyfile
    ```

#### On Windows:

Binaries for Windows are built on Windows using the MinGW toolchain within
[MSYS2 environment](https://www.msys2.org). The MSYS2 environment emulates a
POSIX system. The toolchain runs within the environment and *cross-compiles*
binaries that can run outside of the environment as a regular Windows
application.

**Preparing the build environment**

* Download and install the [MSYS2 installer](https://www.msys2.org), either the 64-bit or the 32-bit package, depending on your system.
* Open the MSYS shell via the `MSYS2 Shell` shortcut
* Update packages using pacman:  

    ```bash
    pacman -Syu
    ```

* Exit the MSYS shell using Alt+F4  
* Edit the properties for the `MSYS2 Shell` shortcut changing "msys2_shell.bat" to "msys2_shell.cmd -mingw64" for 64-bit builds or "msys2_shell.cmd -mingw32" for 32-bit builds
* Restart MSYS shell via modified shortcut and update packages again using pacman:  

    ```bash
    pacman -Syu
    ```


* Install dependencies:

    To build for 64-bit Windows:

    ```bash
    pacman -S mingw-w64-x86_64-toolchain make mingw-w64-x86_64-cmake mingw-w64-x86_64-boost mingw-w64-x86_64-openssl mingw-w64-x86_64-zeromq mingw-w64-x86_64-libsodium mingw-w64-x86_64-hidapi
    ```

    To build for 32-bit Windows:

    ```bash
    pacman -S mingw-w64-i686-toolchain make mingw-w64-i686-cmake mingw-w64-i686-boost mingw-w64-i686-openssl mingw-w64-i686-zeromq mingw-w64-i686-libsodium mingw-w64-i686-hidapi
    ```

* Open the MingW shell via `MinGW-w64-Win64 Shell` shortcut on 64-bit Windows
  or `MinGW-w64-Win64 Shell` shortcut on 32-bit Windows. Note that if you are
  running 64-bit Windows, you will have both 64-bit and 32-bit MinGW shells.

**Cloning**

* To git clone, run:

      git clone --recursive https://challenge.summitto.com/summitto/challenge

**Building**


* If you are on a 64-bit system, run:

    ```bash
    make release-static-win64
    ```

* If you are on a 32-bit system, run:

    ```bash
    make release-static-win32
    ```

* The resulting executables can be found in `build/release/bin`

* **Optional**: to build Windows binaries suitable for debugging on a 64-bit system, run:

    ```bash
    make debug-static-win64
    ```

* **Optional**: to build Windows binaries suitable for debugging on a 32-bit system, run:

    ```bash
    make debug-static-win32
    ```

* The resulting executables can be found in `build/debug/bin`

### On FreeBSD:

The project can be built from scratch by following instructions for Linux above(but use `gmake` instead of `make`). If you are running monero in a jail you need to add the flag: `allow.sysvipc=1` to your jail configuration, otherwise lmdb will throw the error message: `Failed to open lmdb environment: Function not implemented`.

We expect to add Monero into the ports tree in the near future, which will aid in managing installations using ports or packages.

### On OpenBSD:

You will need to add a few packages to your system. `pkg_add cmake gmake zeromq cppzmq libiconv boost`.

The `doxygen` and `graphviz` packages are optional and require the xbase set.
Running the test suite also requires `py-requests` package.

Build monero: `env DEVELOPER_LOCAL_TOOLS=1 BOOST_ROOT=/usr/local gmake release-static`

Note: you may encounter the following error, when compiling the latest version of monero as a normal user:

```
LLVM ERROR: out of memory
c++: error: unable to execute command: Abort trap (core dumped)
```

Then you need to increase the data ulimit size to 2GB and try again: `ulimit -d 2000000`

### On Solaris:

The default Solaris linker can't be used, you have to install GNU ld, then run cmake manually with the path to your copy of GNU ld:

```bash
mkdir -p build/release
cd build/release
cmake -DCMAKE_LINKER=/path/to/ld -D CMAKE_BUILD_TYPE=Release ../..
cd ../..
```

Then you can run make as usual.

### Cross Compiling

You can also cross-compile static binaries on Linux for Windows and macOS with the `depends` system.

* ```make depends target=x86_64-linux-gnu``` for 64-bit linux binaries.
* ```make depends target=x86_64-w64-mingw32``` for 64-bit windows binaries.
  * Requires: `python3 g++-mingw-w64-x86-64 wine1.6 bc`
* ```make depends target=x86_64-apple-darwin11``` for macOS binaries.
  * Requires: `cmake imagemagick libcap-dev librsvg2-bin libz-dev libbz2-dev libtiff-tools python-dev`
* ```make depends target=i686-linux-gnu``` for 32-bit linux binaries.
  * Requires: `g++-multilib bc`
* ```make depends target=i686-w64-mingw32``` for 32-bit windows binaries.
  * Requires: `python3 g++-mingw-w64-i686`
* ```make depends target=arm-linux-gnueabihf``` for armv7 binaries.
  * Requires: `g++-arm-linux-gnueabihf`
* ```make depends target=aarch64-linux-gnu``` for armv8 binaries.
  * Requires: `g++-aarch64-linux-gnu`
* ```make depends target=riscv64-linux-gnu``` for RISC V 64 bit binaries.
  * Requires: `g++-riscv64-linux-gnu`

The required packages are the names for each toolchain on apt. Depending on your distro, they may have different names.

Using `depends` might also be easier to compile Monero on Windows than using MSYS. Activate Windows Subsystem for Linux (WSL) with a distro (for example Ubuntu), install the apt build-essentials and follow the `depends` steps as depicted above.

The produced binaries still link libc dynamically. If the binary is compiled on a current distribution, it might not run on an older distribution with an older installation of libc. Passing `-DBACKCOMPAT=ON` to cmake will make sure that the binary will run on systems having at least libc version 2.17.

## Installing Monero from a package

**DISCLAIMER: These packages are not part of this repository or maintained by this project's contributors, and as such, do not go through the same review process to ensure their trustworthiness and security.**

Packages are available for

* Debian Bullseye and Sid

    ```bash
    sudo apt install monero
    ```
More info and versions in the [Debian package tracker](https://tracker.debian.org/pkg/monero).

* Arch Linux (via [AUR](https://aur.archlinux.org/)):
  - Stable release: [`monero`](https://aur.archlinux.org/packages/monero)
  - Bleeding edge: [`monero-git`](https://aur.archlinux.org/packages/monero-git)

* Void Linux:

    ```bash
    xbps-install -S monero
    ```

* GuixSD

    ```bash
    guix package -i monero
    ```

* Docker

    ```bash
    # Build using all available cores
    docker build -t monero .
    
    # or build using a specific number of cores (reduce RAM requirement)
    docker build --build-arg NPROC=1 -t monero .
    
    # either run in foreground
    docker run -it -v /monero/chain:/root/.bitmonero -v /monero/wallet:/wallet -p 18080:18080 monero
    
    # or in background
    docker run -it -d -v /monero/chain:/root/.bitmonero -v /monero/wallet:/wallet -p 18080:18080 monero
    ```

* The build needs 3 GB space.
* Wait one  hour or more

Packaging for your favorite distribution would be a welcome contribution!

## Debugging

This section contains general instructions for debugging failed installs or problems encountered with Monero. First, ensure you are running the latest version built from the Github repo.

### Obtaining stack traces and core dumps on Unix systems

We generally use the tool `gdb` (GNU debugger) to provide stack trace functionality, and `ulimit` to provide core dumps in builds which crash or segfault.

* To use `gdb` in order to obtain a stack trace for a build that has stalled:

Run the build.

Once it stalls, enter the following command:

```bash
gdb /path/to/monerod `pidof monerod`
```

Type `thread apply all bt` within gdb in order to obtain the stack trace

* If however the core dumps or segfaults:

Enter `ulimit -c unlimited` on the command line to enable unlimited filesizes for core dumps

Enter `echo core | sudo tee /proc/sys/kernel/core_pattern` to stop cores from being hijacked by other tools

Run the build.

When it terminates with an output along the lines of "Segmentation fault (core dumped)", there should be a core dump file in the same directory as monerod. It may be named just `core`, or `core.xxxx` with numbers appended.

You can now analyse this core dump with `gdb` as follows:

```bash
gdb /path/to/monerod /path/to/dumpfile`
```

Print the stack trace with `bt`

 * If a program crashed and cores are managed by systemd, the following can also get a stack trace for that crash:

```bash
coredumpctl -1 gdb
```

#### To run monero within gdb:

Type `gdb /path/to/monerod`

Pass command-line options with `--args` followed by the relevant arguments

Type `run` to run monerod

### Analysing memory corruption

There are two tools available:

#### ASAN

Configure Monero with the -D SANITIZE=ON cmake flag, eg:

```bash
cd build/debug && cmake -D SANITIZE=ON -D CMAKE_BUILD_TYPE=Debug ../..
```

You can then run the monero tools normally. Performance will typically halve.

#### valgrind

Install valgrind and run as `valgrind /path/to/monerod`. It will be very slow.

### LMDB

Instructions for debugging suspected blockchain corruption as per @HYC

There is an `mdb_stat` command in the LMDB source that can print statistics about the database but it's not routinely built. This can be built with the following command:

```bash
cd ~/monero/external/db_drivers/liblmdb && make
```

The output of `mdb_stat -ea <path to blockchain dir>` will indicate inconsistencies in the blocks, block_heights and block_info table.

The output of `mdb_dump -s blocks <path to blockchain dir>` and `mdb_dump -s block_info <path to blockchain dir>` is useful for indicating whether blocks and block_info contain the same keys.

These records are dumped as hex data, where the first line is the key and the second line is the data.
